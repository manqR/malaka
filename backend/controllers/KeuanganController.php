<?php

namespace backend\controllers;


use backend\models\Spp;

class KeuanganController extends \yii\web\Controller
{
    public function actionIndex(){       
        $connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT DISTINCT b.tahun_ajaran, b.idajaran FROM tagihan a JOIN tahun_ajaran b ON a.idajaran = b.idajaran AND b.`status` = 1 ORDER BY b.idajaran ASC");
        $model = $sql->queryAll();
        
        return $this->render('index',[
            'model'=>$model
        ]);
    }

    public function actionPostdata(){

        if($_POST){
            if($_POST['kategori'] == 'spp'){
                $connection = \Yii::$app->db;
                $sql = $connection->createCommand("SELECT DISTINCT *
                                                    FROM spp_siswa a 
                                                    JOIN kelas_group b ON a.idgroup = b.idgroup 
                                                    JOIN kelas c ON b.idkelas = c.idkelas 
                                                    WHERE c.idajaran = '13' ");
                $model = $sql->queryAll();
                
                $data = '';
                $sum =0;
                foreach($model as $models):
                    if($model){
                        $sum += $models['besaran'];
                        echo '<tr><td>'.$models['idsiswa'].'</td>
                                 <td>'.$models['nama_kelas'].'</td>
                                 <td>'.$models['idjurusan'].'</td>
                                 <td>'.$models['bulan'].'</td>
                                 <td>'.$models['besaran'].'</td>
                                </tr>
                                 <input type="hidden" value='.$sum.'> name="total"';                        
                    }else{
                        echo '<td coslpan="4">Data Tidak ditemukan</td>';
                    }                                                
                       
                endforeach;
               
                
            }else{

            }
       }

       
    }

}
