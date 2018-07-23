<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Kelas */

$this->title = 'Update Kelas: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Kelas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idkelas, 'url' => ['view', 'id' => $model->idkelas]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kelas-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
