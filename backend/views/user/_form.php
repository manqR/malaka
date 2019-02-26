<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\web\View;
use yii\helpers\ArrayHelper;
use backend\models\Role;

/* @var $model backend\models\User */
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

<div class="user-form card card-block">

    <?php $form = ActiveForm::begin(); ?>

    

    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>    
    <?= $form->field($model, 'role', ['options' => ['tag' => 'false']])-> dropDownList(
				ArrayHelper::map(Role::find()->where(['flag'=>1])->all(),'idrole','role_name'),
				['prompt'=>'- Pilih -','class'=>'select2 m-b-1','style' => 'width: 100%'])  ?>							
    <?= $model->isNewRecord ? $form->field($model, 'password_hash')->passwordInput()->label('Password') : '' ?>    
    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'status', ['options' => ['tag' => 'false']])-> dropDownList(['0'=>'Tidak Aktif','10'=>'Aktif'],
				['prompt'=>'- Pilih -','class'=>'select2 m-b-1','style' => 'width: 100%'])  ?>					
		

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
