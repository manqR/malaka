<?php

namespace backend\controllers;

use Yii;
use backend\models\Cart;
use backend\models\CartSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\models\Siswa;
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
		$query = $connection->createCommand("SELECT * FROM v_tagihan_siswa a LEFT JOIN tahun_ajaran b ON a.ajaran = b.idajaran WHERE idsiswa = '".$id."' ORDER BY ajaran ASC");
		$data = $query->queryAll();
        
        $output = array();
		
        foreach($data as $key => $models):
            
            $ajaran = isset($models['ajaran']) ? $models['ajaran'] : 'X';
            $aksi = '<i class="material-icons tambah" aria-hidden="true" data-id="'.$models['key_'].';'.$ajaran.';'.$models['idsiswa'].'">add_box</i>';
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

    /**
     * Displays a single Cart model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
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
