<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Kuitansi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="kuitansi-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'idkuitansi')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'idsiswa')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'idcart')->textInput() ?>

    <?= $form->field($model, 'key_')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nominal')->textInput() ?>

    <?= $form->field($model, 'idkelas')->textInput() ?>

    <?= $form->field($model, 'tahun_ajaran')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tanggal_pembayaran')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
