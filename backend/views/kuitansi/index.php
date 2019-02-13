<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\KuitansiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kuitansis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kuitansi-index">

    <?php echo $this->render('_search', ['model' => $searchModel]); ?>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            
            [
                'label'=>'No Kuitansi',
                'attribute'=>'idkuitansi',
                'format'=>'raw',
                'value'=>function ($model) {
                    return Html::a($model->idkuitansi,["./checkout_print-".$model->idkuitansi], ['target'=>'_blank']);
                },
            ],
            [
				'attribute'=>'nama_siswa',
				'value'=>'siswa.nama_lengkap',
			],	      
            [
				'attribute'=>'nama_kelas',
				'value'=>'kelas.nama_kelas',
			],	              
            'tahun_ajaran',
            'tanggal_pembayaran',
            'nominal',
            //'idkelas',
            // 'tahun_ajaran',
            //'tanggal_pembayaran',
            //'urutan',

        ],
    ]); ?>
</div>
