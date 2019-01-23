<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\TahunAjaran;
use yii\helpers\ArrayHelper;
use yii\web\View;

/* @var $this yii\web\View */
/* @var $model backend\models\BiayaTidakTetap */
/* @var $form yii\widgets\ActiveForm */
$root = '@web';
/* @JS */
$this->registerJsFile($root."/vendors/select2/select2.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/scripts/forms/plugins.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);


/* @CSS */
$this->registerCssFile($root."/vendors/select2/select2.css");

?>

<div class="card-block">
    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

	<?= $form->field($model, 'tahun_ajaran', ['options' => ['tag' => 'false']])-> dropDownList(
				ArrayHelper::map(TahunAjaran::find()->where(['status'=>1])->all(),'tahun_ajaran','tahun_ajaran'),
				['prompt'=>'- Pilih -','class'=>'select2 m-b-1','style' => 'width: 100%'])->label('Tahun Ajaran');  ?>					
		
    <?= $form->field($model, 'nominal')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
