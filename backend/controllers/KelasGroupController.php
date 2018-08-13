<?php

namespace backend\controllers;

use Yii;
use yii\web\Response;
use backend\models\KelasGroup;
use backend\models\DetailGroup;
use backend\models\TahunAjaran;
use backend\models\KelasGroupSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;


/**
 * KelasGroupController implements the CRUD actions for KelasGroup model.
 */
class KelasGroupController extends Controller
{
	
	public static function allowedDomains(){
		return [
			'*',				
		];
	}
	
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
		return array_merge(parent::behaviors(), [
			'corsFilter'  => [
				'class' => \yii\filters\Cors::className(),
				'cors'  => [					
					'Origin'                           => static::allowedDomains(),					
					'Access-Control-Allow-Credentials' => true,
					'Access-Control-Max-Age'           => 3600,    
				],
			],

		]);
    }

    /**
     * Lists all KelasGroup models.
     * @return mixed
     */
    public function actionIndex()
    {
		$findTahun = TahunAjaran::find()				
				->where(['status'=>1])
				->All();
		
		$Ajaran = KelasGroup::find()				
				->orderBy(['idgroup'=>SORT_DESC])
				->One();
				
		$model = KelasGroup::find()
				->where(['status'=>'A'])
				->AndWhere(['idajaran'=>$Ajaran])				
				->All();
		
		$newModel = new TahunAjaran();
        $searchModel = new KelasGroupSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
		
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
			'findTahun' => $findTahun,
			'model'=>$model,
			'newModel' => $newModel
        ]);
    }
	
	public function actionArraydata($id){
		

		$connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT a.idsiswa, a.nama_lengkap, a.jenis_kelamin, c.idkelas, c.idjurusan, d.tahun_ajaran FROM siswa a JOIN detail_group b ON a.idsiswa = b.idsiswa JOIN kelas_group c ON b.idgroup = c.idgroup JOIN tahun_ajaran d ON c.idajaran = d.idajaran WHERE b.idgroup = '".$id."'");
		$models = $sql->queryAll();
		$output = array();
			
		foreach($models as $model):
			$output[] = $model['idsiswa'];
			$output[] = $model['nama_lengkap'];
			$output[] = $model['jenis_kelamin'];
			$output[] = $model['idkelas'];
			$output[] = $model['idjurusan'];
			$output[] = $model['tahun_ajaran'];		
		endforeach;
		
		$data = json_encode($output);
		$data = [
			'data'=>[$output]
		];
		
		Yii::$app->response->format = Response::FORMAT_JSON;
		return $data;
	}
	
	public function actionPostdata(){
		
		$model = new TahunAjaran();
		
		$model->tahun_ajaran = $_POST['ajaran'];
		$model->status = $_POST['status'];
		$model->save();
	}
	
	public function actionApigroup($id){
		
		 $idSub1 = substr($id,0,4);
		 $idSub2 = substr($id,4,5);
		 
		 $model = KelasGroup::find()
				->where(['idajaran'=>$id])
				->all();
		
		$count = DetailGroup::find()
				->JoinWith('kelasGroup')
				->where(['idajaran'=>$id])
				->count();
			
		foreach($model as $models):
			 echo '<div class="col-md-6 col-lg-3">
						<div class="pricing-plan">
							<h5>'.$models->idkelas.' - '.$models->idjurusan.'</h5>
							<p class="plan-title text-primary">'.$models->wali_kelas.'</p>
							<div class="plan-price text-primary">
								<span>'.$count.'</span>
							</div>
							<ul class="plan-features">
								<li>Secure storage</li>
								<li>Limited to 1 user</li>
								<li>Data analytics</li>
								<li class="plan-feature-inactive text-muted">Full search access</li>
								<li class="plan-feature-inactive text-muted">Automatic backups</li>
							</ul>
							<button class="btn btn-primary btn-lg open-AddBookDialog" data-toggle="modal" data-id='.$models->idgroup.' data-target=".siswa">Lihat Data Siswa</button>
						</div>
					</div>';
		endforeach;
		
		
	}
    /**
     * Displays a single KelasGroup model.
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
     * Creates a new KelasGroup model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new KelasGroup();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->idgroup]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing KelasGroup model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->idgroup]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing KelasGroup model.
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
     * Finds the KelasGroup model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return KelasGroup the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = KelasGroup::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
