<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Tagihan */

$this->title = $model->idtagihan;
$this->params['breadcrumbs'][] = ['label' => 'Tagihans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tagihan-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'idtagihan' => $model->idtagihan, 'idjurusan' => $model->idjurusan, 'idkelas' => $model->idkelas], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'idtagihan' => $model->idtagihan, 'idjurusan' => $model->idjurusan, 'idkelas' => $model->idkelas], [
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
            'idtagihan',
            'idjurusan',
            'idkelas',
            'administrasi',
            'pengembangan',
            'praktik',
            'semester_a',
            'semester_b',
            'lab_inggris',
            'lks',
            'perpustakaan',
            'osis',
            'mpls',
            'asuransi',
            'user_create',
            'date_create',
            'user_update',
            'date_update',
        ],
    ]) ?>

</div>
