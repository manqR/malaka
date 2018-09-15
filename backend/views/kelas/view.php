<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Kelas */

$this->title = $model->idkelas;
$this->params['breadcrumbs'][] = ['label' => 'Kelas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="card card-block">

    

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->idkelas], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->idkelas], [
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
			[
				'label'=>'Kode Kelas',
				'attribute' => 'idkelas'
			],   
			'idajaran',
			'idjurusan',			
			[
				'label'=>'Nama Kelas',
				'attribute' => 'nama_kelas'
			],                   
			[
				'attribute'=>'status', 
				'label'=>'Status',
				'format'=>'raw',
				'value'=>$model->status == 1 ? 
					'<span class="tag tag-success">Enable</span>' : 
					'<span class="tag tag-danger">Disable</span>',			
			],
			
        ],
    ]) ?>

</div>
