<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

use yii\web\View;
/* @var $model backend\models\KuitansiSearch */
/* @var $form yii\widgets\ActiveForm */


$root = '@web';
$this->registerJsFile($root."/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

$this->registerCssFile('vendors/bootstrap-datepicker/dist/css/bootstrap-datepicker4.css');    
?>

<div class="kuitansi-search card card-block">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'idkuitansi')->label('No Kuitansi') ?>
    <?= $form->field($model, 'tanggal_pembayaran')->textInput(['data-provide'=>'datepicker'])->label('Tanggal Pembayaran') ?>
    

    <?php // echo $form->field($model, 'idkelas') ?>

    <?php // echo $form->field($model, 'tahun_ajaran') ?>

    <?php // echo $form->field($model, 'urutan') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
