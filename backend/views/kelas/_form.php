<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\web\View;

/* @var $model backend\models\Kelas */
/* @var $form yii\widgets\ActiveForm */
/* @ROOT */
$root = '@web';
/* @JS */
$this->registerJsFile($root."/vendors/bootstrap-maxlength/src/bootstrap-maxlength.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

$this->registerJsFile($root."/scripts/forms/plugins.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

?>

<div class="card-block">
	<?php $form = ActiveForm::begin(); ?>	
		<?= $form->field($model, 'idkelas')->textInput(['maxlength' => 10,'class'=>'form-control m-b-1','id'=>'maxlength'])->label('Class Code') ?>						
		<?= $form->field($model, 'nama_kelas')->textInput(['maxlength' => 50,'class'=>'form-control','id'=>'maxlengthConf'])->label('Class Name') ?>							
		<?= $form->field($model, 'status')->dropDownList(['1' => 'Active', '0' => 'Non-Active']); ?>
		
		 <div class="form-group">
			<?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
		</div>
	<?php ActiveForm::end(); ?>
</div>

