<?php

namespace backend\controllers;
use backend\models\Spp;


class TunggakanController extends \yii\web\Controller
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
                                                    WHERE c.idajaran = ".$_POST['tahun_ajaran']." ");
                $model = $sql->queryAll();
                
                $data = '';
                $sum =0;
                foreach($model as $models):
                    if($models){
                        $sum += $models['besaran'];
                        echo '<tr><td>'.$models['idsiswa'].'</td>
                                 <td>'.$models['nama_kelas'].'</td>
                                 <td>'.$models['idjurusan'].'</td>
                                 <td>'.$models['bulan'].'</td>
                                 <td>'.number_format($models['besaran'],0,".",".").'</td>
                                </tr>
                                 <input type="hidden" value='.$sum.'> name="total"';                        
                    }else{
                        echo '<td coslpan="4">Data Tidak ditemukan</td>';
                    }                                                
                       
                endforeach;
                               
            }else{
                $connection = \Yii::$app->db;
                $sql = $connection->createCommand("SELECT * 
                                                    FROM tagihan_siswa a 
                                                    JOIN kelas_group b ON a.idgroup = b.idgroup 
                                                    JOIN kelas c ON b.idkelas = c.idkelas
                                                    WHERE c.idajaran = ".$_POST['tahun_ajaran']." ");
                $model = $sql->queryAll();

                foreach($model as $models):
                    if($models){

                        echo '<tr><td>'.$models['idsiswa'].'</td>
                                 <td>'.$models['nama_kelas'].'</td>
                                 <td>'.$models['idjurusan'].'</td>
                                 <td>'.$models['keterangan'].'</td>
                                 <td>'.number_format($models['besaran'],0,".",".").'</td>
                                </tr>';                        
                    }else{
                        echo '<td coslpan="4">Data Tidak ditemukan</td>';
                    }                                                
                       
                endforeach;
            }
       }else{
            echo "<p style='font-size:12px'>Method Not Allowed..</p>";
        }

       
    }

    public function actionPrint($kat, $th){
        if($kat){
            
            if($kat == 'spp'){

                include './inc/pdf.php';
                PrintLaporan($kat,$th);
                // $connection = \Yii::$app->db;
                // $sql = $connection->createCommand("SELECT DISTINCT *
                //                                     FROM spp_siswa a 
                //                                     JOIN kelas_group b ON a.idgroup = b.idgroup 
                //                                     JOIN kelas c ON b.idkelas = c.idkelas 
                //                                     WHERE c.idajaran = ".$_GET['tahun_ajaran']." ");
                // $model = $sql->queryAll();
                
                // $data = '';
                // $sum =0;
                // foreach($model as $models):
                //     if($models){
                //         $sum += $models['besaran'];
                      
                //         $data .= '<tr>';
                //         $data .=    '<td>'.$models['idsiswa'].'</td>';
                //         $data .=    '<td>'.$models['nama_kelas'].'</td>';
                //         $data .=    '<td>'.$models['idjurusan'].'</td>';
                //         $data .=    '<td>'.$models['bulan'].'</td>';
                //         $data .=    '<td>'.number_format($models['besaran'],0,".",".").'</td>';
                //         $data .= '</tr>';                  
                //     }else{
                //         echo '<td coslpan="4">Data Tidak ditemukan</td>';
                //     }                                                
                       
                // endforeach;                
            }
        }else{
            echo "<p style='font-size:12px'>Method Not Allowed..</p>";
        }
    }

}
