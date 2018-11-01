<?php

namespace backend\controllers;

use Yii;
use backend\models\Cart;
use backend\models\CartSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\models\Siswa;

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
		$query = $connection->createCommand("SELECT keterangan, nama_tagihan,
													(CASE WHEN keterangan = 'Semester Ganjil' 	THEN semester_a 
														WHEN keterangan = 'Semester Genap'  	THEN semester_b
															WHEN keterangan = 'Perpustakaan' 	THEN perpustakaan 
															WHEN keterangan = 'Osis'			THEN osis
															WHEN keterangan = 'MPLS'			THEN mpls
															WHEN keterangan = 'LKS'				THEN lks
															WHEN keterangan = 'Lab Bhs Inggis'	THEN lab_inggris
															WHEN keterangan = 'Asuransi'		THEN asuransi
														ELSE 0 END) Biaya,
														urutan 
											FROM (
												SELECT 'Semester Ganjil' keterangan ,'semester_a' nama_tagihan, semester_a,semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi , 1 urutan FROM tagihan WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
												UNION ALL
												SELECT 'Semester Genap' keterangan, 'semester_b' nama_tagihan, semester_a,semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi , 2 urutan FROM tagihan WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
												UNION ALL
												SELECT 'Lab Bhs Inggis' keterangan, 'lab_inggris' nama_tagihan , semester_a,semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi , 3 urutan  FROM tagihan WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
												UNION ALL
												SELECT 'LKS' keterangan, 'lks' nama_tagihan ,semester_a,semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi , 4 urutan  FROM tagihan WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
												UNION ALL
												SELECT 'Perpustakaan' keterangan, 'perpustakaan' nama_tagihan , semester_a, semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi , 5 urutan  FROM tagihan WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
												UNION ALL
												SELECT 'Osis' keterangan,semester_a, 'osis' nama_tagihan, semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi , 6 urutan FROM tagihan WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
												UNION ALL
												SELECT 'MPLS' keterangan,semester_a, 'mpls' nama_tagihan  ,semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi, 7 urutan  FROM tagihan WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
												UNION ALL
												SELECT 'Asuransi' keterangan, 'asuransi' nama_tagihan, semester_a,semester_b, lab_inggris, lks, perpustakaan, osis, mpls, asuransi , 8 urutan FROM tagihan	 WHERE idkelas = '".$model[0]['idkelas']."' AND idjurusan = '".$model[0]['idjurusan']."'
											)src
											GROUP BY keterangan
											ORDER BY urutan ");
		$data = $query->queryAll();
        $model = $sql->queryAll();	
        
        $output = array();
				
		foreach($model as $key => $models):
		
			$output[$key] = array($model['idsiswa']
								 ,$model['nama_lengkap']
								 ,$model['jenis_kelamin']
								 ,$model['tempat_lahir']
								 ,$model['tanggal_lahir']
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
