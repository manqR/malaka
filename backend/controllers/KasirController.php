<?php

namespace backend\controllers;

use Yii;
use backend\models\Cart;
use backend\models\CartSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\models\Siswa;
use backend\models\TagihanBiayaTidaktetap;
use backend\models\TagihanSiswa;
use yii\web\Response;

/**
 * KasirController implements the CRUD actions for Cart model.
 */
class KasirController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Cart models.
     * @return mixed
     */
    public function actionIndex()
    {
        $model = Siswa::find()
                ->all();

        return $this->render('index', [
            'model' => $model,
        ]);
    }


    public function actionCart($id){
        $connection = \Yii::$app->db;
		$query = $connection->createCommand("SELECT * FROM v_tagihan_siswa a LEFT JOIN kelas b ON a.idkelas = b.idkelas  LEFT JOIN tahun_ajaran c ON b.idajaran = c.idajaran LEFT JOIN kelas_group d ON b.idkelas = d.idkelas
        WHERE idsiswa = '".$id."'  AND (
                                                    (d.idgroup NOT IN (SELECT x.idgroup FROM tagihan_siswa x WHERE x.idsiswa= '".$id."' AND a.key_ = x.nama_tagihan) )
                                                        AND
                                                    (a.key_ NOT IN (SELECT y.no_tagihan FROM tagihan_biaya_tidaktetap y WHERE y.idsiswa = '".$id."' AND y.flag = 1))
                                                )
        ORDER BY c.idajaran ASC
        
        ");
		$data = $query->queryAll();
        
        $output = array();
		
        foreach($data as $key => $models):
            
            $kelas = isset($models['idkelas']) ? $models['idkelas'] : 'X';
            $aksi = '<i class="material-icons tambah" aria-hidden="true" data-id="'.$models['key_'].';'.$kelas.';'.$models['idsiswa'].'">add_box</i>';
			$output[$key] = array($models['idsiswa']
								 ,$models['keterangan']
								 ,$models['nominal']
                                 ,isset($models['tahun_ajaran']) ? $models['tahun_ajaran'] : '-'
                                 ,$aksi);
		endforeach;
		
		
		    $data = json_encode($output);
			$data = [
				'data'=>$output
			];
			Yii::$app->response->format = Response::FORMAT_JSON;
			return $data;
			
    }


    public function actionPost(){
        $model = new Cart();
        
        $arrData = $_POST['data'];

        // $arrData = 'praktik;6;176001';
        $arrData = explode(';',$arrData);
        
        if(stripos($arrData[0], 'BIL') !== FALSE){
            $find = TagihanBiayaTidaktetap::find()
                ->where(['no_tagihan'=>$arrData[0]])
                ->One();
        }else{
            $connection = \Yii::$app->db;
            $query = $connection->createCommand("SELECT * FROM v_tagihan_siswa WHERE idsiswa = '".$arrData[2]."' AND idkelas = '".$arrData[1]."' AND key_ = '".$arrData[0]."'");
            $find = $query->queryOne();
        }

        $model->idsiswa = $arrData[2];
        $model->key_ = $arrData[0];
        $model->idkelas = $arrData[1];
        $model->keterangan = $arrData[0];
        $model->nominal = isset($find->nominal) ? $find->nominal : $find['nominal'];
        $model->flag = 1;
        $model->user_create = Yii::$app->user->identity->username;
        $model->date_create = date('Y-m-d');

        if($model->save()){           

            $data = ['err'=>'sukses'];			
            Yii::$app->response->format = Response::FORMAT_JSON;
            return $data;
        }else{
            $data = ['err'=>'err'];			
            Yii::$app->response->format = Response::FORMAT_JSON;
            return $data;
        }

       
    }

    public function actionList($id){
        $view = Cart::find()
            ->where(['idsiswa'=>$id])
            ->AndWhere(['flag'=>1])
            ->all();    
        
            // var_dump($view);
        if($view){
            foreach($view as $views):
                echo "<tr>
                         <td>".$views->idsiswa."</td>
                         <td>".$views->keterangan."</td>
                         <td>".number_format($views->nominal,0,".",".")."</td>
                         <td>1</td>
                     </tr>";                                               
            endforeach;
        }else{
            echo " <tr>
                    <td colspan=\"4\" class=\"text-xs-center\">No data available in table</td>
                </tr>";
        }
        
    }

    public function actionJumlahList($id){
        $nominal = Cart::find()
            ->where(['idsiswa'=>$id])    
            ->AndWhere(['flag'=>1])        
            ->sum('nominal');    
        
            echo "<div class=\"invoice-totals-row\">
                         <strong class=\"invoice-totals-title\">Subtotal</strong>
                         <span class=\"invoice-totals-value\"><b>Rp ".number_format($nominal,0,".",".")."</b></span>
                         <input type='hidden' id='nominal' name='nominal' value=".$nominal.">
                     </div>
                     
                   ";     
    }
    /**
     * Displays a single Cart model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */

    public function actionCheckout(){

        $idsiswa = $_POST['data'];

        // $idsiswa = '176002';
        $connection = \Yii::$app->db;
        $query = $connection->createCommand("SELECT a.* ,c.idgroup FROM cart a LEFT JOIN kelas b ON a.idkelas = b.idkelas LEFT JOIN kelas_group c ON b.idkelas = c.idkelas WHERE a.idsiswa = '".$idsiswa."'");
        $model = $query->queryAll();

       foreach($model as $models):
            // var_dump($models);
            if($models['idkelas'] == 'X'){
                $add =  TagihanBiayaTidaktetap::find()
                        ->where(['no_tagihan'=>$models['key_']])
                        ->One();

                $add->flag = 1;
                $add->tgl_payment = date('Y-m-d H:i:s');
                $add->user = Yii::$app->user->identity->username;
                $add->save();  
                
                $update = Cart::findOne($models['idcart']);
                $update->flag = 2;
                $update->save();                        
            }else{
                $add = new TagihanSiswa();
                $add->idsiswa = $models['idsiswa'];
                $add->idgroup = $models['idgroup'];
                $add->nama_tagihan = $models['key_'];
                $add->besaran = $models['nominal'];
                $add->keterangan = $models['keterangan'];
                $add->user_create = Yii::$app->user->identity->username;
                $add->date_create = date('Y-m-d H:i:s');
                $add->save();

                $update = Cart::findOne($models['idcart']);
                $update->flag = 2;
                $update->save();
            }

       endforeach;

       $data = ['err'=>'sukses'];			
       Yii::$app->response->format = Response::FORMAT_JSON;
       return $data;

    }

    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Cart model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Cart();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->idcart]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Cart model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->idcart]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Cart model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Cart model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Cart the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Cart::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
