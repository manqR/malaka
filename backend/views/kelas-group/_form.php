<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Jurusan;
use backend\models\Kelas;
use backend\models\TahunAjaran;
use yii\helpers\ArrayHelper;
use yii\web\View;
/* @var $model backend\models\KelasGroup */
/* @var $form yii\widgets\ActiveForm */

$root = '@web';
/* @JS */
$this->registerJsFile($root."/vendors/select2/select2.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/jquery.maskedinput/dist/jquery.maskedinput.min.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);


$this->registerJsFile($root."/scripts/forms/plugins.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/scripts/forms/masks.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);


/* @CSS */
$this->registerCssFile($root."/vendors/select2/select2.css");


?>


<div class="card-block">

	<?php $form = ActiveForm::begin(); ?>

		<?= $form->field($model, 'idjurusan' ,['options' => ['tag' => 'false']])-> dropDownList(
				ArrayHelper::map(Jurusan::find()->all(),'idjurusan','nama_jurusan'),
				['prompt'=>'Choose Majors...','class'=>'select2 m-b-1','style' => 'width: 100%'])->label('Jurusan');  ?>
				
		<?= $form->field($model, 'idkelas', ['options' => ['tag' => 'false']])-> dropDownList(
				ArrayHelper::map(Kelas::find()->all(),'idkelas','nama_kelas'),
				['prompt'=>'Choose Class...','class'=>'select2 m-b-1','style' => 'width: 100%'])->label('Kelas');  ?>
		
		<?= $form->field($model, 'idajaran', ['options' => ['tag' => 'false']])-> dropDownList(
				ArrayHelper::map(TahunAjaran::find()->all(),'idajaran','tahun_ajaran'),
				['prompt'=>'Choose Tahun Ajaran...','class'=>'select2 m-b-1','style' => 'width: 100%'])->label('Tahun Ajaran');  ?>					
				
		<?= $form->field($model, 'wali_kelas')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'status')->dropDownList(['A' => 'Active', 'I' => 'InActive', ], ['prompt' => '-- Pilih --','style'=>'font-size:12px']) ?>

		<div class="form-group">
			<?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
		</div>

	<?php ActiveForm::end(); ?>

</div>
