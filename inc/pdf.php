<?php


use backend\models\TagihanBiayaTidaktetap;
use backend\models\Kuitansi;

    function Test(){
        $mpdf = new \Mpdf\Mpdf(['autoPageBreak' => true]);

        include 'headerReport.php';
        $html = HeaderReport('images/logo.png');
       
        $mpdf->autoPageBreak = true;

        $mpdf->AddPage();

        $mpdf->WriteHTML($html.'<hr/>');
        $mpdf->Output();

    }
   function PrintLaporan($kat, $th,$kls,$period){

    
    $head = '<style>
            img{
                float: left;
                width: 89px;                                
                position: absolute;
            }
            .text{
                left: 155px;
                top: 45px;
                right:25px;
                position: absolute;
                text-align: center;
            }
            hr{
                top: 511px;
                position: absolute;
            }
            </style>';

    $data = '';
    $mpdf = new \Mpdf\Mpdf(['autoPageBreak' => true]);	
    
    if($kat){
        $filter = '';

        if($kls !='-'){
            $filter = " AND  kode = '".$kls."' ";
        }
        $date = explode(';',$period);


        if($kat == 'spp'){

           
            $connection = \Yii::$app->db;
            $sql = $connection->createCommand("SELECT * FROM v_pelunasan_spp a JOIN siswa b ON a.idsiswa = b.idsiswa WHERE idajaran= ".$th."  AND a.date_create BETWEEN '".$date[0]."' AND '".$date[1]."' ".$filter."");            
            $model = $sql->queryAll();
                        
            $sum =0;
            foreach($model as $models):
                if($models){
                    $sum += $models['besaran'];
                    $data .= '  <style>.sign th { border: 1px solid black;height:20px;font-weight:100;font-size:12px}</style><tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['nama_lengkap'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['bulan'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['nama_kelas'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['idjurusan'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.number_format($models['besaran'],0,".",".").'</td>';                        
                    $data .= '</tr>';  
                    

                }                                              
            endforeach;
        }else{
            
            

           

            include 'terbilang.php';

            $connection = \Yii::$app->db;
            $sql = $connection->createCommand("SELECT  SUM(nominal) nominal FROM v_pelunasan_tagihan a JOIN kelas b ON a.ajaran = b.idajaran WHERE (ajaran= ".$th." OR ajaran = '-') AND a.idjurusan = b.idjurusan AND a.idkelas = b.idkelas AND tgl_payment BETWEEN '".$date[0]."' AND '".$date[1]."' ".$filter."");            
            $model = $sql->queryOne();
            $mpdf->writeHTML($head.' 
                                <img src="images/logo.png" >
                                <div class="text">
                                    <h2>SMK MALAKA</h2>
                                    <p>Jl. Mawar Merah No.23, RT.2/RW.1, Pd. Kopi, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460</p> 
                                </div>  
                                <br/><br/><br/>
                                <br/>
                                <hr/>                                

                                <table class="invoice" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 100%; margin: 20px auto;">                                   
                                    <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                        <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Nominal </td>                                                                                    
                                        <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <b>Rp '.number_format($model['nominal'],0,".",".").'</b></td>
                                    </tr>
                                    <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                        <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> Terbilang </td>                                                                                    
                                        <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <b>( '.ucwords(penyebut($model['nominal'])).' Rupiah)</b></td>
                                    </tr>                                                                               
                                   
                                </table>
                                
                                
                                <style>.sign th { border: 1px solid black;height:20px;font-weight:100;font-size:12px}</style>
                                <table width="100%" cellspacing="0" style="margin:60;" class="sign">
                                    <thead>
                                        <tr >
                                            <th>Bendahara 1</th>
                                            <th>Bendahara 2</th>
                                            <th>Bendahara 3</th>
                                            <th>Kepala Sekolah</th>                                            
                                        </tr>
                                        <tr>
                                            <th style="height:100px"></th>
                                            <th></th>
                                            <th></th>
                                            <th></th>                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>Utami</th>
                                            <th>Aulia</th>
                                            <th>Tika</th>
                                            <th>Hadi</th>                                            
                                        </tr>
                                    </tbody>
                                </table>
            ');


            $mpdf->addPage();  

            $connection = \Yii::$app->db;
            $sql = $connection->createCommand("SELECT b.nama_kelas, SUM(nominal) nominal  FROM v_pelunasan_tagihan a JOIN kelas b ON a.ajaran = b.idajaran WHERE (ajaran= ".$th." OR ajaran = '-') AND a.idjurusan = b.idjurusan AND a.idkelas = b.idkelas AND tgl_payment BETWEEN '".$date[0]."' AND '".$date[1]."' ".$filter." GROUP BY nama_kelas ");
            $model = $sql->queryAll();
           
            $datakelas = '';
            $sumKelas =0;
            foreach($model as $models):
                if($models){
                    $sumKelas += $models['nominal'];
                    $datakelas .= ' <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">';
                        $datakelas .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['nama_kelas'].'</td>';
                        $datakelas .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.number_format($models['nominal'],0,".",",").'</td>';                       
                    $datakelas .= '</tr>';                           
                }                                              
            endforeach;

            $mpdf->WriteHTML($head.'<style>th { border: 1px solid black;height:50px;}td{text-align:center}</style>
                            <img src="images/logo.png" >
                            <div class="text">
                                <h2>SMK MALAKA</h2>
                                <p>Jl. Mawar Merah No.23, RT.2/RW.1, Pd. Kopi, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460</p> 
                            </div>  
                            <br/><br/><br/>
                            <br/>
                            <hr/>
                            <br/><br/>
            
                            <table width="100%" cellspacing="0">
                                <thead>
                                    <tr>                                        
                                        <th>Kelas</th>                                                                                
                                        <th>Nominal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    '.$datakelas.'
                                </tbody>
                            </table>
                            
                            <table width="100%" cellspacing="0" style="margin:60;" class="sign">
                            <thead>
                                <tr >
                                    <th>Bendahara 1</th>
                                    <th>Bendahara 2</th>
                                    <th>Bendahara 3</th>
                                    <th>Kepala Sekolah</th>                                            
                                </tr>
                                <tr>
                                    <th style="height:100px"></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>                                            
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Utami</th>
                                    <th>Aulia</th>
                                    <th>Tika</th>
                                    <th>Hadi</th>                                            
                                </tr>
                            </tbody>
                        </table>
                        ');

            $mpdf->addPage();            
            
            
            $connection = \Yii::$app->db;
            $sql = $connection->createCommand("SELECT *  FROM v_pelunasan_tagihan a JOIN kelas b ON a.ajaran = b.idajaran WHERE (ajaran= ".$th." OR ajaran = '-') AND a.idjurusan = b.idjurusan AND a.idkelas = b.idkelas AND tgl_payment BETWEEN '".$date[0]."' AND '".$date[1]."' ".$filter."");                        
            $model = $sql->queryAll();            
            $sum =0;
            foreach($model as $models):
                if($models){
                    $sum += $models['nominal'];
                    $data .= ' <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['nama_lengkap'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['keterangan'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['nama_kelas'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['idjurusan'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.number_format($models['nominal'],0,".",".").'</td>';                        
                    $data .= '</tr>';                           
                }                                              
            endforeach;

        }
        
    }
        

    $mpdf->use_kwt = true;
    $mpdf->WriteHTML($head.'<style>th { border: 1px solid black;height:50px;}td{text-align:center}</style>
            <img src="images/logo.png" >
            <div class="text">
                <h2>SMK MALAKA</h2>
                <p>Jl. Mawar Merah No.23, RT.2/RW.1, Pd. Kopi, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460</p> 
            </div>  
            <br/><br/><br/>
            <br/>
            <hr/>
            <br/><br/>

            <table width="100%" cellspacing="0">

                    <tr>
                        <th>Nama Siswa</th>
                        <th>Keterangan</th>
                        <th>Kelas</th>
                        <th>Jurusan</th>
                        <th>Nominal</th>
                    </tr>
               
                <tbody>
                   '.$data.'
                   <tr>
                   <td colspan="5">
                        <table width="100%" cellspacing="0" style="margin:60;" class="sign">
                            <thead>
                                <tr >
                                    <th>Bendahara 1</th>
                                    <th>Bendahara 2</th>
                                    <th>Bendahara 3</th>
                                    <th>Kepala Sekolah</th>                                            
                                </tr>
                                <tr>
                                    <th style="height:100px"></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>                                            
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Utami</th>
                                    <th>Aulia</th>
                                    <th>Tika</th>
                                    <th>Hadi</th>                                            
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    </tr>
                </tbody>                
            </table>');
    $mpdf->Output();
    exit;
   }


   function PrintTunggakan($kat, $th){
    if($kat){
        if($kat == 'spp'){
            $connection = \Yii::$app->db;
            $sql = $connection->createCommand("SELECT * FROM v_tagihan_spp WHERE idajaran = ".$th."");
            $model = $sql->queryAll();

            $data = '';
            $sum =0;
            foreach($model as $models):
                if($models){
                    $sum += $models['besaran'];
                    $data .= ' <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['idsiswa'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['bulan'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['nama_kelas'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['idjurusan'].'</td>';
                        $data .= '<td class="alignright" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" align="right" valign="top">'.number_format($models['besaran'],0,".",".").'</td>';
                    $data .= '</tr>';                           
                }                                              
            endforeach;

        }else{
            $connection = \Yii::$app->db;
            $sql = $connection->createCommand("SELECT * FROM v_tunggakan_siswa WHERE ajaran = ".$th." OR ajaran ='-'");
            $model = $sql->queryAll();

            $data = '';
            $sum =0;
            foreach($model as $models):
                if($models){
                    $sum += $models['nominal'];
                    $data .= ' <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['idsiswa'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['keterangan'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['nama_kelas'].'</td>';
                        $data .= '<td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" valign="top">'.$models['idjurusan'].'</td>';
                        $data .= '<td class="alignright" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;" align="right" valign="top">'.number_format($models['nominal'],0,".",".").'</td>';
                    $data .= '</tr>';                           
                }                                              
            endforeach; 
        }

        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format'=>'A4']);	
        $mpdf->WriteHTML('<html xmlns="http://www.w3.org/1999/xhtml" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                        <head>
                            <meta name="viewport" content="width=device-width" />
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                            <title>Billing e.g. invoices and receipts</title>
                            
                        </head>
                        <body itemscope itemtype="http://schema.org/EmailMessage" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; -webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em; background-color: #FFF; margin: 0;" bgcolor="#FFF">
                            <table class="body-wrap" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #FFF; margin: 0;" bgcolor="#FFF">
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;" valign="top"></td>
                                    <td class="container" width="100%" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;" valign="top">
                                        <div class="content" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;">
                                            <table class="main" width="100%" cellpadding="0" cellspacing="0" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #FFF;" bgcolor="#fff">
                                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                    <td class="content-wrap aligncenter" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 20px;" align="center" valign="top">
                                                        <table width="100%" cellpadding="0" cellspacing="0" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                            <tr style="width:100%; font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                <td class="content-block" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;" valign="top">
                                                                <img src="https://chart.googleapis.com/chart?chs=100x100&cht=qr&chl=a&choe=UTF-8" style="width:100px" title="" />
                                                                </td>
                                                            </tr>
                                                            <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                <td class="content-block" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;" valign="top">
                                                                    <h2 class="aligncenter" style="font-family: Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; box-sizing: border-box; font-size: 24px; color: #000; line-height: 1.2em; font-weight: 400; text-align: center; margin: 40px 0 0;" align="center">SMK MALAKA</h2>
                                                                </td>
                                                            </tr>
                                                            <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                <td class="content-block aligncenter" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;" align="center" valign="top">
                                                                    <table class="invoice" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 100%; margin: 40px auto;">
                                                                        '.$data.'
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                <td class="content-block" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; margin: 0; padding: 0 0 20px;" align="right" valign="top"><b> Total     '.number_format($sum,0,".",".").'</b></td>
                                                            </tr>
                                                            
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        
                                        </div>
                                    </td>
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;" valign="top"></td>
                                </tr>
                            </table>
                        </body>
                    </html>');
            $mpdf->Output();
            exit;
        }

   }

   function Kuitansi($idbilling, $idsiswa){
   
        
        $head = '<style>
                img{
                    float: left;
                    width: 89px;                                
                    position: absolute;
                }
                .text{
                    left: 155px;
                    top: 45px;
                    right:25px;
                    position: absolute;
                    text-align: center;
                }
                hr{
                    top: 511px;
                    position: absolute;
                }                                
                </style>';


        $data = TagihanBiayaTidaktetap::find()
            ->where(['no_tagihan'=>$idbilling])
            ->AndWhere(['idsiswa'=>$idsiswa])
            ->One();

        $mpdf = new \Mpdf\Mpdf(['autoPageBreak' => true]);	
        include 'terbilang.php';

        $connection = \Yii::$app->db;
        $sql = $connection->createCommand("SELECT DISTINCT *  FROM tagihan_biaya_tidaktetap a 
                                            JOIN siswa b ON a.idsiswa = b.idsiswa 
                                            JOIN detail_group c ON b.idsiswa = c.idsiswa
                                            JOIN kelas d ON d.idkelas = d.idkelas
                                            WHERE b.idsiswa = '176001'
                                            ORDER BY c.idgroup DESC LIMIT 1");
        $model = $sql->queryOne();

        

        $mpdf->writeHTML($head.' 
                                <img src="images/logo.png" >
                                <div class="text">
                                    <h2>SMK MALAKA</h2>
                                    <p>Jl. Mawar Merah No.23, RT.2/RW.1, Pd. Kopi, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460</p> 
                                </div>  
                                <br/><br/><br/>
                                <br/>
                                <hr/> 
                                <br/>          
                                <br/>          
                                <div style="top:50;text-align:center">
                                    <u><b>KWITANSI</b></u>
                                    <p> Tahun : '.date('Y').'</p>
                                </div>
                
                                <table class="invoice" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 100%; margin: 20px auto;">                                   
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Sudah terima dari </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <i>'.Yii::$app->user->identity->username.'</i></td>
                                </tr>
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> No. Pendaf/Pokok </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: ..............</td>
                                </tr>                                                                               
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> Jurusan </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: '.$model['idjurusan'].'</td>
                                </tr>                                                                               
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> Uang Sebesar </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <b>Rp '.number_format($data->nominal,0,".",".").'</b> ( <i>'.ucwords(penyebut($data->nominal)).' Rupiah </i> )</td>
                                </tr> 
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> Sebagai Pembayaran </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <table style="display:inline-block;"><tr><td>Uang Pangkal</td><td>Rp :</td><td>100.000</td></tr></table>
                                                                                                                                                                                                                            <table style="display:inline-block;"><tr><td>Uang Pangkal</td><td>Rp :</td><td>100.000</td></tr></table>
                                                                                                                                                                                                                        </td>
                                </tr>  
                                
                                <tr style="tex-align:center;font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td></td>                                                                                   
                                    <td></td>                                                                                   
                                    <td> </td>                                                                                   
                                    <td style="text-align:center;">Jakarta, '.date('d M  Y').'<br/>SEKRETARIAT<br/><br/><br/><br/>(........................)</td>                                                                                   
                                </tr>
                                <tr style="tex-align:center;font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td><br/><br/><u>Tembusan :</u><br/>1. Asli untuk yang Bersangkutan<br/>2. Lembar kedua untuk Bendahara<br/>3. Lembar Ketiga untuk Arsip</td>                                                                                   
                                    <td></td>                                                                                   
                                    <td></td>                                                                                   
                                    <td></td>                                                                                   
                                    
                                </tr>
                               
                            </table>
              ');

            // $mpdf->WriteHTML('Hello World');

            $mpdf->Output();
        exit;
   }
   function CheckoutCart($id){
   
        
        $head = '<style>
                img{
                    float: left;
                    width: 89px;                                
                    position: absolute;
                }
                .text{
                    left: 155px;
                    top: 45px;
                    right:25px;
                    position: absolute;
                    text-align: center;
                }
                hr{
                    top: 511px;
                    position: absolute;
                }                                
                </style>';


        $data = Kuitansi::find()
            ->where(['idkuitansi'=>$id])
            ->One();

        $mpdf = new \Mpdf\Mpdf(['autoPageBreak' => true]);	
        include 'terbilang.php';

        $connection = \Yii::$app->db;
        $sql = $connection->createCommand("SELECT * FROM kuitansi WHERE idkuitansi = '".$id."' ");
        $model = $sql->queryOne();

        $query = $connection->createCommand("SELECT * FROM kuitansi WHERE idkuitansi = '".$id."' ");
        $fetch = $query->queryAll();

        $sum= 0;
        $detail = '';
        foreach($fetch as $fetchs):

            // var_dump($fetchs);
            // die;
            $detail .= '<table style="display:inline-block;"><tr><td>'.$fetchs['key_'].'</td><td>Rp </td><td>'.number_format($fetchs['nominal'],0,".",".").'</td></tr></table>';                            
            $sum += $fetchs['nominal'];
        endforeach;
        $mpdf->writeHTML($head.' 
                                <img src="images/logo.png" >
                                <div class="text">
                                    <h2>SMK MALAKA</h2>
                                    <p>Jl. Mawar Merah No.23, RT.2/RW.1, Pd. Kopi, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460</p> 
                                </div>  
                                <br/><br/><br/>
                                <br/>
                                <hr/> 
                                <br/>          
                                <br/>          
                                <div style="text-align:right">No. Kuitansi : '.$model['idkuitansi'].'</div>
                                <div style="top:50;text-align:center">
                                    <u><b>KWITANSI</b></u>                                   
                                    <p> Tahun : '.$model['tahun_ajaran'].'</p>
                                </div>
                
                                <table class="invoice" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 100%; margin: 20px auto;">                                   
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Sudah terima dari </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <i>'.Yii::$app->user->identity->username.'</i></td>
                                </tr>                        
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> NIS </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: '.$model['idsiswa'].'</td>
                                </tr>                                                                               
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> Tanggal Pembayaran </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: '.date('d M Y', strtotime($model['tanggal_pembayaran'])).'</td>
                                </tr>                                                                               
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> Uang Sebesar </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <b>Rp '.number_format($sum,0,".",".").'</b> ( <i>'.ucwords(penyebut($sum)).' Rupiah </i> )</td>
                                </tr> 
                                <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top"> Sebagai Pembayaran </td>                                                                                    
                                    <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: '.$detail.'
                                                                                                                                                                                                                        </td>
                                </tr>  
                                
                                <tr style="tex-align:center;font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td></td>                                                                                   
                                    <td></td>                                                                                   
                                    <td> </td>                                                                                   
                                    <td style="text-align:center;">Jakarta, '.date('d M  Y').'<br/>SEKRETARIAT<br/><br/><br/><br/>(........................)</td>                                                                                   
                                </tr>
                                <tr style="tex-align:center;font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                    <td><br/><br/><u>Tembusan :</u><br/>1. Asli untuk yang Bersangkutan<br/>2. Lembar kedua untuk Bendahara<br/>3. Lembar Ketiga untuk Arsip</td>                                                                                   
                                    <td></td>                                                                                   
                                    <td></td>                                                                                   
                                    <td></td>                                                                                   
                                    
                                </tr>
                               
                            </table>
              ');

            // $mpdf->WriteHTML('Hello World');

            $mpdf->Output();
        exit;
   }

?>