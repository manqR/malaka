<?php

namespace backend\controllers;

use Yii;
use backend\models\TagihanSiswa;
use backend\models\TagihanSiswaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\models\Siswa;

/**
 * TagihanSiswaController implements the CRUD actions for TagihanSiswa model.
 */
class TagihanSiswaController extends Controller
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
     * Lists all TagihanSiswa models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TagihanSiswaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
		$model = Siswa::find()
				->All();
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
			'model' => $model
        ]);
    }

    /**
     * Displays a single TagihanSiswa model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
	 
	
	public function actionListsiswa($id){
		
		$connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT * FROM siswa WHERE nama_lengkap LIKE '%".$id."%' OR idsiswa LIKE '%".$id."%'");
		$models = $sql->queryAll();
		
		
		foreach($models as $model):			 	
		
				
			 echo '<a href="javascript:;" onclick="return showDetail('.$model['idsiswa'].');" class="column-equal" data-toggle="contact">
					<div class="col v-align-middle contact-avatar">
						<div class="circle-icon bg-danger">'.substr(strtoupper($model['nama_lengkap']),0,1).'</div>
					</div>
					<div class="col v-align-middle contact-details p-l-1">
						<span class="bold">'.$model['nama_lengkap'].'</span>
						<span class="small">'.$model['idsiswa'].'</span>
					</div>
				</a>';		
		endforeach;		
	}
	
	
	public function actionDetailsiswa($id){
		
		function rupiah($num){
			return number_format($num, 0,'.','.');
		}
		$connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT SUM(d.administrasi + d.pengembangan + d.praktik) TAGIHAN_BIL_OPTION,
										 (SELECT IFNULL(SUM(xx.besaran),0) FROM tagihan_siswa xx WHERE xx.idsiswa = b.idsiswa AND xx.idgroup = c.idgroup AND xx.nama_tagihan IN ('administrasi','pengembangan','praktik')) BillingOption,		 
										  SUM(d.semester_a + d.semester_b + d.lab_inggris + d.lks + d.perpustakaan + d.osis + d.mpls + d.asuransi) TAGIHAN_FIX_CHARGE,		 
										 (SELECT IFNULL(SUM(yy.besaran),0) FROM tagihan_siswa yy WHERE yy.idsiswa = b.idsiswa AND yy.idgroup = c.idgroup AND yy.nama_tagihan IN ('semester_a','semester_b','lab_inggris','lks','perpustakaan','osis','mpls','asuransi'))  FixCharge,
										 (SELECT SUM(x.besaran) FROM spp x WHERE x.idtagihan = d.idtagihan) TAGIHAN_SPP,
										 IFNULL((SELECT SUM(z.besaran) FROM spp_siswa z WHERE z.idsiswa = b.idsiswa AND z.idgroup = c.idgroup),0)  SPP 
									FROM siswa a JOIN 
										 detail_group b ON a.idsiswa = b.idsiswa JOIN
										 kelas_group c ON b.idgroup = c.idgroup JOIN
										 tagihan d ON c.idkelas = d.idkelas AND c.idjurusan = d.idjurusan
									WHERE a.idsiswa = '".$id."' 
									GROUP BY b.idgroup
									ORDER BY b.id DESC LIMIT 1 ");
		$models = $sql->queryAll();
		
		$status_SPP='complete';
		$status_FIX = 'complete';
		$status_OPT = 'complete';
		$class_SPP = 'success';
		$class_FIX = 'success';
		$class_OPT = 'success';
		if($models[0]['SPP'] - $models[0]['TAGIHAN_SPP'] != 0){
			$status_SPP = 'incomplete';
			$class_SPP = 'danger';
		}
		if($models[0]['FixCharge'] - $models[0]['TAGIHAN_FIX_CHARGE'] != 0){
			$status_FIX = 'incomplete';
			$class_FIX = 'danger';
		}
		if($models[0]['BillingOption'] - $models[0]['TAGIHAN_BIL_OPTION'] != 0){
			$status_OPT = 'incomplete';
			$class_OPT = 'danger';
		}
		
		echo'<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="card card-block">
						<h5 class="m-b-0 v-align-middle text-overflow">					
							<span class="small pull-xs-right tag bg-'.$class_SPP.' p-y-0 p-x-xs"  id="show1" data-toggle="modal" data-target=".bd-example-modal"  style="line-height: 24px;">
								<span >'.$status_SPP.'</span>
							</span>
							<span style="font-size: 9px;font-weight: bold;">'.rupiah($models[0]['SPP']).'</span>/
							<span style="font-size: 11px;font-weight: bold;">'.rupiah($models[0]['TAGIHAN_SPP']).'</span>							
						</h5>
						<div class="small text-overflow text-muted">
							SPP
						</div>
						<div class="small text-overflow">
							Updated:&nbsp;<span>05:35 AM</span>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="card card-block">
						<h5 class="m-b-0 v-align-middle text-overflow">
							<span class="small pull-xs-right tag bg-'.$class_FIX.' p-y-0 p-x-xs" id="show2" data-toggle="modal" data-target=".fix" style="line-height: 24px;">
								<span >'.$status_FIX.'</span>
							</span>
							<span style="font-size: 9px;font-weight: bold;">'.rupiah($models[0]['FixCharge']).'</span>/
							<span style="font-size: 11px;font-weight: bold;">'.rupiah($models[0]['TAGIHAN_FIX_CHARGE']).'</span>							
						</h5>
						<div class="small text-overflow text-muted">
							FIX CHARGE
						</div>
						<div class="small text-overflow">
							Updated:&nbsp;<span>12:42 PM</span>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="card card-block">
						<h5 class="m-b-0 v-align-middle text-overflow">
							<span class="small pull-xs-right tag bg-'.$class_OPT.' p-y-0 p-x-xs" id="show3" data-toggle="modal" data-target=".optional" style="line-height: 24px;">
							<span >'.$status_OPT.'</span>
							</span>
							<span style="font-size: 9px;font-weight: bold;">'.rupiah($models[0]['BillingOption']).'</span>/
							<span style="font-size: 11px;font-weight: bold;">'.rupiah($models[0]['TAGIHAN_BIL_OPTION']).'</span>							
						</h5>
						<div class="small text-overflow text-muted">
							Optional Billing
						</div>
						<div class="small text-overflow">
							Updated:&nbsp;<span>09:26 AM</span>
						</div>
					</div>
				</div>										
			</div>';
	}
	
	public function actionSpplist($id){
	
		$connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT d.bulan, d.besaran, IFNULL(e.besaran,0) sudah_dibayar, a.idgroup, a.idsiswa
											FROM detail_group a 
												JOIN kelas_group b ON a.idgroup = b.idgroup 
												JOIN tagihan c ON b.idkelas = c.idkelas AND b.idjurusan = c.idjurusan
												JOIN spp d ON d.idtagihan = c.idtagihan
												LEFT JOIN spp_siswa e ON e.idsiswa = a.idsiswa AND e.idgroup = a.idgroup AND e.bulan = d.bulan
											WHERE a.idsiswa = '".$id."' AND a.id = (SELECT x.id FROM detail_group x WHERE x.idsiswa = '".$id."' ORDER BY x.id DESC LIMIT 1)");
		$models = $sql->queryAll();	
		
		foreach($models as $model):
			$class='';
			if(($model['sudah_dibayar'] - $model['besaran']) >= 0){
				$class = '<span class="tag tag-success">Lunas</span>'; 								
			}else{
				$class='<input type="text" class="form-control" name="biaya" style="display: inline-block;width: 90%;">
						<i class="material-icons" aria-hidden="true" style="position: absolute;margin-top: 7px;">add_box</i>';
			}
			echo '<tr>
					<td>'.$model['bulan'].'</td>
					<td>'.$model['besaran'].'</td>
					<td>'.$model['sudah_dibayar'].'</td>
					<td> '.$class.'</td>
				</tr>';
		endforeach;	
	
	}
	
	public function actionProfiledetail($id){
		
		$connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT * 
											FROM detail_group a 
												  JOIN siswa b ON a.idsiswa = b.idsiswa
												  JOIN kelas_group c ON a.idgroup = c.idgroup
											WHERE b.idsiswa = '".$id."' ORDER BY a.id DESC LIMIT 1
										");
		$models = $sql->queryAll();
		
		
		
		echo ' <div class="column-equal m-b-2">
                <div class="col" style="width:128px;">
                    <img src="images/face1.jpg" class="avatar avatar-lg img-circle" alt="">
                </div>
                <div class="col v-align-middle p-l-2">
                    <h1>
                        <b>'.$models[0]['nama_lengkap'].'</b>                        
                    </h1>
                    <h3>'.$models[0]['wali_kelas'].'</h3>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">Kelas</span>
                </div>
                <div class="col p-l-2">
					<span>'.$models[0]['idjurusan'].'</span>
                    
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">
                    Kelas
                    </span>
                </div>
                <div class="col p-l-2">
                    <span>
						'.$models[0]['idkelas'].'
                    </span>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">
                    Email
                    </span>
                </div>
                <div class="col p-l-2">
                   <a ng-href="'.$models[0]['email'].'" href="'.$models[0]['email'].'">
                    '.$models[0]['email'].'
                    </a>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">
                    Handphone
                    </span>
                </div>
                <div class="col p-l-2">
                    <span>
                    '.$models[0]['hp'].'
                    </span>
                </div>
            </div>';
			
	}
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new TagihanSiswa model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new TagihanSiswa();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->idtagihan_siswa]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing TagihanSiswa model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->idtagihan_siswa]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing TagihanSiswa model.
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
     * Finds the TagihanSiswa model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return TagihanSiswa the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = TagihanSiswa::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
