<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\web\View;
use yii\helpers\ArrayHelper;


/* @var $this yii\web\View */
/* @var $model backend\models\Siswa */
/* @var $form yii\widgets\ActiveForm */


$root = '@web';
/* @JS */
$this->registerJsFile($root."/vendors/select2/select2.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/bootstrap-maxlength/src/bootstrap-maxlength.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/jquery.maskedinput/dist/jquery.maskedinput.min.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/jquery-labelauty/source/jquery-labelauty.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

$this->registerJsFile($root."/scripts/forms/plugins.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/scripts/forms/masks.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);


/* @CSS */
$this->registerCssFile('vendors/select2/select2.css');
$this->registerCssFile('vendors/bootstrap-datepicker/dist/css/bootstrap-datepicker4.css');    

// $this->registerJs("$.getJSON('http://dev.farizdotid.com/api/daerahindonesia/provinsi', 
			// function(data) {   
				// console.log(data);
			// });");
	
$this->registerJs("

	window.onload =  function(){
        $('#siswa-no_kps').attr('readonly','readonly');
    };",
	View::POS_HEAD
	
	
);	
	
$this->registerJs("

	function statusKPS(){

			 var radioValue = $('input[name=\"Siswa[status_kps]\"]:checked').val();
			 if(radioValue == 0){				 
				 $('#siswa-no_kps').attr('readonly','readonly');				 
				 $('#siswa-no_kps').val('0');
			 }else{
				$('#siswa-no_kps').removeAttr('readonly');
				$('#siswa-no_kps').val('');
			 }			
	}",
	View::POS_END
	
);			
?>



<?php $form = ActiveForm::begin(); ?>

	<div class="col-lg-6">
		<div class="card">
			<div class="card-block">		
				
				<?= $form->field($model, 'nisn',['options' => ['tag' => 'false']])->textInput(['maxlength' => 10,'class'=>'form-control m-b-1','id'=>'maxlength'],['options' => ['tag' => false]])->label('NISN') ?>							
				<?= $form->field($model, 'no_seri_ijazah_smp')->textInput(['id'=>'ijazah'])->label('SN of Junior High School') ?>				
				<?= $form->field($model, 'no_seri_skhun_smp')->textInput(['id'=>'skhun'])->label('SN of SKHUN') ?>				
				<?= $form->field($model, 'no_ujian_nasional')->textInput(['id'=>'uan'])->label('SN of UAN') ?>		
				
			</div>
		</div>
	</div>

	<div class="col-lg-6">
		<div class="card">
			<div class="card-block">		
				<?= $form->field($model, 'tempat_lahir')->textInput(['maxlength' => true])->label('Place of Birth') ?>
				<?= $form->field($model, 'tanggal_lahir')->textInput(['maxlength' => true,'data-provide'=>'datepicker'])->label('Date of Birth') ?>				
				<?= $form->field($model, 'tinggi_badan')->textInput()->label('Height') ?>
				<?= $form->field($model, 'berat_badan')->textInput()->label('Weight') ?>
				
			</div>
		</div>
	</div>

	
	<div class="col-lg-12">
		<div class="card">
			<div class="card-block">					
				<?= $form->field($model, 'nama_lengkap')->textInput(['maxlength' => true])->label('Full Name') ?>				
				<?= $form->field($model, 'idsiswa',['options' => ['tag' => 'false']])->textInput(['maxlength' => 8,'class'=>'form-control m-b-1','id'=>'nis'],['options' => ['tag' => false]])->label('NIS') ?>				
				<?= $form->field($model, 'nik')->textInput(['maxlength' => true])->label('ID (NIK)') ?>				
				<?= $form->field($model, 'jenis_kelamin')->dropDownList(['Perempuan','1'=>'Laki-Laki'],['prompt'=>'Choose Gender...','style' => 'font-size: 12px'])->label('Gender') ?>				
				


			
				<?= $form->field($model, 'jarak_tempat_tinggal')->textInput()->label('Distance') ?>
				<?= $form->field($model, 'waktu_tempuh')->textInput()->label('Time') ?>
				<?= $form->field($model, 'jml_saudara')->textInput()->label('Brother/Sister') ?>

	
						
				
				<?= $form->field($model, 'agama')->textInput(['maxlength' => true])->label('Religion') ?>
				<?= $form->field($model, 'alamat')->textarea(['rows' => 6])->label('Address') ?>
				<?= $form->field($model, 'provinsi')->textInput(['maxlength' => true])->label('Province') ?>
				
				<?= $form->field($model, 'kelurahan')->textInput(['maxlength' => true])->label('District') ?>
				<?= $form->field($model, 'kecamatan')->textInput(['maxlength' => true])->label('Sub-District') ?>
				<?= $form->field($model, 'kota')->textInput(['maxlength' => true])->label('City') ?>
				
				<?= $form->field($model, 'transportasi')->textInput(['maxlength' => true])->label('Transportation') ?>
				<?= $form->field($model, 'tlp_rumah')->textInput(['maxlength' => true])->label('HomePhone') ?>
				<?= $form->field($model, 'hp')->textInput(['maxlength' => true])->label('HandPhone') ?>
				<?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>
				
				<?= $form->field($model, 'status_kps')->radioList(['1'=>'Yes','0'=>'No'],['onclick'=>'js:statusKPS()']); ?>				
				<?= $form->field($model, 'no_kps')->textInput(['maxlength' => true]) ?>	


				<div class="form-group">
					<?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
				</div>				
			</div>
		</div>
	</div>
    



    <?php ActiveForm::end(); ?>

