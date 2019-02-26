<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(' Create User', ['create'], ['class' => 'btn btn-success fa fa-plus']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            
           
            [
				'attribute'=>'role_name',
				'value'=>'role0.role_name',
			],	     
            'username',
            'email:email',
            [
                'label'=>'Password',
                'attribute'=>'password_hash'
            ],
            [
                'attribute'=>'status',
                'format'=>'raw',
                'value'=> function($model){
                    return $model->status == 10 ? '<span class="tag tag-success">Aktif</span>' : '<span class="tag tag-danger">Tidak Aktif</span>';
                }
                
			],	   
            
            //'password_reset_token',
            
            //'status',
            //'created_at',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
