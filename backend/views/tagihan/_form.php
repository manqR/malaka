<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Tagihan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tagihan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'idtagihan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'idjurusan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'idkelas')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'administrasi')->textInput() ?>

    <?= $form->field($model, 'pengembangan')->textInput() ?>

    <?= $form->field($model, 'praktik')->textInput() ?>

    <?= $form->field($model, 'semester_a')->textInput() ?>

    <?= $form->field($model, 'semester_b')->textInput() ?>

    <?= $form->field($model, 'lab_inggris')->textInput() ?>

    <?= $form->field($model, 'lks')->textInput() ?>

    <?= $form->field($model, 'perpustakaan')->textInput() ?>

    <?= $form->field($model, 'osis')->textInput() ?>

    <?= $form->field($model, 'mpls')->textInput() ?>

    <?= $form->field($model, 'asuransi')->textInput() ?>

    <?= $form->field($model, 'user_create')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_create')->textInput() ?>

    <?= $form->field($model, 'user_update')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_update')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
