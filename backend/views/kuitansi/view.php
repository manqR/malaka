<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Kuitansi */

$this->title = $model->idkuitansi;
$this->params['breadcrumbs'][] = ['label' => 'Kuitansis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kuitansi-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'idkuitansi' => $model->idkuitansi, 'urutan' => $model->urutan], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'idkuitansi' => $model->idkuitansi, 'urutan' => $model->urutan], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'idkuitansi',
            'idsiswa',
            'idcart',
            'key_',
            'nominal',
            'idkelas',
            'tahun_ajaran',
            'tanggal_pembayaran',
            'urutan',
        ],
    ]) ?>

</div>
