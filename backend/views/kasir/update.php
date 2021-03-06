<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Cart */

$this->title = 'Update Cart: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Carts', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idcart, 'url' => ['view', 'id' => $model->idcart]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="cart-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
