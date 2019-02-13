<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Kuitansi */

$this->title = 'Update Kuitansi: ' . $model->idkuitansi;
$this->params['breadcrumbs'][] = ['label' => 'Kuitansis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idkuitansi, 'url' => ['view', 'idkuitansi' => $model->idkuitansi, 'urutan' => $model->urutan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kuitansi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
