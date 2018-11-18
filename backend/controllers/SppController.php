<?php

namespace backend\controllers;

use backend\models\Siswa;

class SppController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $model = Siswa::find()
				->All();
        return $this->render('index', [
			'model' => $model
        ]);
    }

    public function actionSpplist($id){
	
		$connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT d.bulan, d.besaran, IFNULL(e.besaran,0) sudah_dibayar, a.idgroup, a.idsiswa
											FROM detail_group a 
												JOIN kelas_group b ON a.idgroup = b.idgroup 
												JOIN kelas f ON b.idkelas = f.idkelas
												JOIN tagihan c ON b.idkelas = c.idkelas AND f.idjurusan = c.idjurusan
												JOIN spp d ON d.idtagihan = c.idtagihan
												LEFT JOIN spp_siswa e ON e.idsiswa = a.idsiswa AND e.idgroup = a.idgroup AND e.bulan = d.bulan
												LEFT JOIN months g ON d.bulan = g.namabulan
											WHERE a.idsiswa = '".$id."' AND a.id = (SELECT x.id FROM detail_group x WHERE x.idsiswa = '".$id."' ORDER BY x.id DESC LIMIT 1)");
		$models = $sql->queryAll();	
		
		foreach($models as $model):
			$class='';
			if(($model['sudah_dibayar'] - $model['besaran']) >= 0){
				$class = '<span class="tag tag-success">Lunas</span>'; 								
			}else{
                $class = '<span class="tag tag-danger">Belum Lunas</span>'; 		
			}
			echo '<tr>
					<td>'.$model['bulan'].'</td>
					<td>'.$model['besaran'].'</td>
					<td>'.$model['sudah_dibayar'].'</td>
					<td> '.$class.'</td>
				</tr>';
		endforeach;	
	
	}

}
