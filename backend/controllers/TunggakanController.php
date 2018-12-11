<?php

namespace backend\controllers;
use yii\filters\VerbFilter;
use backend\models\Spp;


class TunggakanController extends \yii\web\Controller
{

    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
            'access' => [
                'class' => \yii\filters\AccessControl::className(),
                'only' => ['index','create','update','view'],
                'rules' => [
                  // allow authenticated users
                      [
                        'allow' => true,
                        'roles' => ['@'],
                      ],
                  // everything else is denied
                ],
            ],
        ];
    }

    public function actionIndex(){       
        $connection = \Yii::$app->db;
		$sql = $connection->createCommand("SELECT DISTINCT b.tahun_ajaran, b.idajaran FROM tagihan a JOIN tahun_ajaran b ON a.idajaran = b.idajaran AND b.`status` = 1 ORDER BY b.idajaran ASC");
        $model = $sql->queryAll();
        
        return $this->render('index',[
            'model'=>$model
        ]);
    }

    public function actionPostdata(){

        $data = '';
        if($_POST){            
            if($_POST['kategori'] == 'spp'){
                $connection = \Yii::$app->db;
                $sql = $connection->createCommand("SELECT * FROM v_tagihan_spp WHERE idajaran = ".$_POST['tahun_ajaran']." ");
                $model = $sql->queryAll();
                
                
                $sum =0;
                foreach($model as $models):
                    if($models){
                        $sum += $models['besaran'];
                        $data .= '<tr><td>'.$models['idsiswa'].'</td>
                                 <td>'.$models['nama_kelas'].'</td>
                                 <td>'.$models['idjurusan'].'</td>
                                 <td>'.$models['bulan'].'</td>
                                 <td>'.number_format($models['besaran'],0,".",".").'</td>
                                </tr>
                                 <input type="hidden" value='.$sum.'> name="total"';                        
                    }else{
                        $data = '<td coslpan="4">Data Tidak ditemukan</td>';
                    }                                                
                       
                endforeach;
               
                               
            }else{
                $connection = \Yii::$app->db;
                $sql = $connection->createCommand("SELECT * FROM v_tunggakan_siswa WHERE ajaran = '".$_POST['tahun_ajaran']."' OR ajaran = '-'");
                $model = $sql->queryAll();

                foreach($model as $models):
                    if($models){

                        $data .= '<tr><td>'.$models['idsiswa'].'</td>
                                 <td>'.$models['nama_kelas'].'</td>
                                 <td>'.$models['idjurusan'].'</td>
                                 <td>'.$models['keterangan'].'</td>
                                 <td>'.number_format($models['nominal'],0,".",".").'</td>
                                </tr>';                        
                    }else{
                        $data =  '<tr><td coslpan="4">Data Tidak ditemukan</td></tr>';
                    }                                                
                       
                endforeach;
            }
       }else{
            $data =  "<p style='font-size:12px'>Method Not Allowed..</p>";
        }

        return $data;

       
    }

    public function actionPrint($kat, $th){
        $data = '';
        if($kat){
            
            if($kat == 'spp'){

                include './inc/pdf.php';
                PrintTunggakan($kat,$th);                        
            }else{
                include './inc/pdf.php';
                PrintTunggakan($kat,$th);   
            }
        }else{
            $data =  "<p style='font-size:12px'>Method Not Allowed..</p>";
        }
        return $data;
    }

}
