<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\Jurusan;
use backend\models\Kelas;
use yii\web\View;


/* @var $this yii\web\View */
/* @var $model backend\models\Tagihan */
/* @var $form yii\widgets\ActiveForm */


$root = '@web';
/* @JS */
$this->registerJsFile($root."/vendors/select2/select2.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/bootstrap-maxlength/src/bootstrap-maxlength.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

$this->registerJsFile($root."/scripts/forms/plugins.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);


/* @CSS */
$this->registerCssFile('vendors/select2/select2.css');
?>

<?php $form = ActiveForm::begin();  ?>

<div class="col-lg-12">
	<div class="card">
		<div class="card-block">		
			<?= $form->field($spp, 'besaran')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('SPP') ?>			
		</div>
	</div>
</div>


<div class="col-lg-6">
	<div class="card">
		<div class="card-block">
		
			<?= $form->field($model, 'idtagihan',['options' => ['tag' => 'false']])->textInput(['maxlength' => 10,'class'=>'form-control m-b-1','id'=>'maxlength'],['options' => ['tag' => false]])->label('Billing Number') ?>				
			
	
			<?= $form->field($model, 'idjurusan' ,['options' => ['tag' => 'false']])-> dropDownList(
						ArrayHelper::map(Jurusan::find()->all(),'idjurusan','nama_jurusan'),
						['prompt'=>'Choose Majors...','class'=>'select2 m-b-1','style' => 'width: 100%'])->label('Majors');  ?>
			
			<?= $form->field($model, 'idkelas', ['options' => ['tag' => 'false']])-> dropDownList(
						ArrayHelper::map(Kelas::find()->all(),'idkelas','nama_kelas'),
						['prompt'=>'Choose Class...','class'=>'select2 m-b-1','style' => 'width: 100%'])->label('Class');  ?>
		</div>		
	</div>
</div>

<div class="col-lg-6">
	<div class="card">
		<div class="card-block">
		
		
			<?php 
		
				$this->registerJs("
				
					function formatRupiah(angka, prefix){
						var number_string = angka.value.replace(/[^,\d]/g, '').toString(),
							split    = number_string.split(','),
							sisa     = split[0].length % 3,
							rupiah     = split[0].substr(0, sisa),
							ribuan     = split[0].substr(sisa).match(/\d{3}/gi);
							
						if (ribuan) {
							separator = sisa ? '.' : '';
							rupiah += separator + ribuan.join('.');
						}
						
						rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
						return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
					}
					
					function formatAsRupiah(el) {
						
						el.value = formatRupiah(el);					
					}",
				View::POS_HEAD);						
			?>	

			<?= $form->field($model, 'administrasi')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('Administration') ?>
			<?= $form->field($model, 'pengembangan')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('Development') ?>
			<?= $form->field($model, 'praktik')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('Practice') ?>
			
		</div>		
	</div>
</div>
<div class="col-lg-12">
	<div class="card">
		<div class="card-block">
			<?= $form->field($model, 'semester_a')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('Semester_A') ?>

			<?= $form->field($model, 'semester_b')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('Semester_B') ?>

			<?= $form->field($model, 'lab_inggris')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('English Lab') ?>

			<?= $form->field($model, 'lks')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('LKS') ?>

			<?= $form->field($model, 'perpustakaan')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('Library') ?>

			<?= $form->field($model, 'osis')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('OSIS') ?>

			<?= $form->field($model, 'mpls')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('MPLS')?>

			<?= $form->field($model, 'asuransi')->textInput(['onkeyup' => 'js:formatAsRupiah(this);' ])->label('Assurance') ?>
			
			<div class="form-group">
				<?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
			</div>
		</div>
	</div>
</div>
<?php ActiveForm::end(); ?>
