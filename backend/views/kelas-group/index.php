<?php

use yii\helpers\Html;
use yii\grid\GridView;
use backend\models\Kelas;
use backend\models\DetailGroup;
use yii\web\View;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\KelasGroupSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kelas Groups';
$this->params['breadcrumbs'][] = $this->title;

$root = '@web';
/* @JS */
$this->registerJsFile($root."/vendors/select2/select2.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/datatables/media/js/jquery.dataTables.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/datatables/media/js/dataTables.bootstrap4.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

$this->registerJsFile($root."/scripts/forms/plugins.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

/* @CSS */
$this->registerCssFile($root."/vendors/select2/select2.css");
$this->registerCssFile($root."/vendors/datatables/media/css/dataTables.bootstrap4.css");

$this->registerJs("function myFunction() {
						var id = document.getElementById(\"mySelect\").value;
						var dataString = 'id=' + id.replace('/','');
						$.ajax({
							type: 'GET',
							url: 'kelas-group/apigroup',
							data: dataString,
							cache: false,
							success: function(html) {	
								$('#list').css({\"display\": \"block\"});   							
								$('#lists').css({\"display\": \"none\"});
								$('#list').html(html);     
							}
						});						
					}",View::POS_HEAD
				  );

$this->registerJs("  $('.datatable').DataTable({
						 'ajax': 'http://localhost:8080/malaka/kelas-group/arraydata?id=2'
					 });
				 ");				  
?>
<div class="kelas-group-index">
    <p>
        <?= Html::a(' Add Group Class', ['create'], ['class' => 'btn btn-success fa fa-plus']) ?>
    </p>
	
	<div class="center-table">
		<p>
					
			 <div class="m-b">				
				<select data-placeholder="Your Favorite Football Team" class="select2 m-b-1" onchange="myFunction()" id="mySelect" style="width: 100%;">
					<option value="default" selected="selected">-- Tahun Ajaran --</option>
					<?php
						foreach($findTahun as $finds):							
							echo "<option value=\"$finds->tahun_ajaran\">$finds->tahun_ajaran</option>";
						endforeach;
					?>
				</select>
			</div>
			<span>
				<i class="handle"></i>
			</span>
		</p>
	</div>
	
	<div class="row pricing" id="list" style="display:hidden">		
		
	</div>
	
	<div class="row pricing" id="lists">		
		<?php
			
			foreach($model as $models):
				 $count = DetailGroup::find()
						->JoinWith('kelasGroup')
						->where(['tahun_ajaran'=>$models->tahun_ajaran])
						->count();
						
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
								<button class="btn btn-primary btn-lg" data-toggle="modal" data-target=".siswa">Lihat Data Siswa</button>
							</div>
						</div>';
			endforeach;					
		?>
	</div>
	
	<!-- ------------ MODAL ------------------>
	<div class="modal fade siswa" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="max-width: 800px" >
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Data Siswa</h4>
				</div>
				<div class="modal-body">
					<div class="table-responsive">
						 <table class="table table-bordered datatable" style="width:100%">
							<thead>
								<tr>
									<th>
										Name
									</th>
									<th>
										Position
									</th>
									<th>
										Office
									</th>
									<th>
										Age
									</th>
									<th>
										Start Date
									</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>						
				</div>
			</div>
		</div>
	</div>
	<!-- ------------ /MODAL ------------------>
	
</div>
