<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TahunAjaranSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tahun Ajarans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tahun-ajaran-index">

   
	<p>
        <a href = "ajaran-create" class="btn btn-success fa fa-plus"> Tambah Tahun Ajaran</a>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],            
            'tahun_ajaran',
            [
                'label'=>'Status',
                'attribute'=>'Status',
                'format'=>'raw',
                'value'=>function ($model) {
                    return $model->status == 1 ? '<span class="tag tag-success">Active</label>' : '<span class="tag tag-danger">Disable</label>';
                },
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
