<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\TahunAjaran */

$this->title = 'Tambah Tahun Ajaran';
$this->params['breadcrumbs'][] = ['label' => 'Tahun Ajarans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tahun-ajaran-create">

   <h1 style="margin:10px"><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
