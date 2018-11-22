<?php


use backend\models\TagihanBiayaTidaktetap;

   function PrintLaporan($kat, $th){

    $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8']);
		        
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
                                                            <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
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
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Nomor </td>                                                                                    
                                                                            <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: 769/ SMK M. /VIII / 2018</td>
                                                                        </tr>
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Lampiran </td>                                                                                    
                                                                            <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: </td>
                                                                        </tr>
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Perihal </td>                                                                                    
                                                                            <td colspan="3" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">: <b>Pemberitahuan Tunggakan</b></td>
                                                                        </tr>                                                                               
                                                                       <tr>
                                                                            <td colspan="4"></td>
                                                                       </tr>
                                                                       <tr>
                                                                            <td colspan="4"></td>
                                                                       </tr>
                                                                       <tr>
                                                                            <td colspan="4"></td>
                                                                       </tr>
                                                                       <tr>
                                                                            <td colspan="4"></td>
                                                                       </tr>
                                                                       <tr>
                                                                            <td colspan="4"></td>
                                                                       </tr>
                                                                       <tr>
                                                                            <td colspan="4"></td>
                                                                       </tr>
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td colspan="4" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Kepada Yth, </td>                                                                                   
                                                                        </tr>  
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td colspan="4" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Bapak/Ibu Orang Tua/Wali Siswa dari : </td>                                                                                   
                                                                        </tr>  
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td></td>                                                                                   
                                                                            <td>Nama </td>                                                                                   
                                                                            <td>: Aulia Afifah </td>                                                                                   
                                                                            <td></td>                                                                                   
                                                                        </tr>  
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td></td>                                                                                   
                                                                            <td>Kelas / Jurusan </td>                                                                                   
                                                                            <td>:  </td>                                                                                   
                                                                            <td></td>                                                                                   
                                                                        </tr>
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td colspan="4" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">di - </td>                                                                                   
                                                                        </tr>   
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td colspan="4" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Tempat <br/> Dengan Hormat, </td>                                                                                   
                                                                        </tr>   
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td colspan="4" style="text-align: justify;font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;" valign="top">Bersama ini kami sampaikan bahwa Tahun 
                                                                            Pelajaran 2018/2019 telah berjalan kurang lebih 2 (dua) bulan. Untuk itu, 
                                                                            demi kelancaran Kegiatan Belajar Mengajar dan Kegiatan Administrasi lainnya,
                                                                             kami mohon kepada bapak/ibu/wali Siswa/i SMK Malaka yang masih memiliki <b>Tunggakan</b> 
                                                                             untuk segera melunasi <b>Tunggakan yang masih ada di kelas sebelumnya</b>. 
                                                                             Perinician ada pada lampirah halaman ke 2. <br/><br/> Kami mohon Bapak/Ibu segera menyelesaikan kewajiban keuangan tersebut.<br/> 
                                                                             Demikian Pemberitahuan ini kami sampaikan, atas perhatian dan kerja samanya diucapkan terima kasih.<br/></td>                                                                                   
                                                                        </tr>
                                                                        
                                                                        <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td></td>                                                                                   
                                                                            <td></td>                                                                                   
                                                                            <td> </td>                                                                                   
                                                                            <td style="text-align:center;"><br/><br/><br/><br/><br/>Jakarta, '.date('d M Y').'</td>                                                                                   
                                                                        </tr>
                                                                        <tr style="tex-align:center;font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td></td>                                                                                   
                                                                            <td></td>                                                                                   
                                                                            <td> </td>                                                                                   
                                                                            <td style="text-align:center;">Kepala Sekolah SMK Malaka<br/><br/><br/><br/><br/>Heru Wulandro , S.Si</td>                                                                                   
                                                                        </tr>
                                                                        <tr style="tex-align:center;font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                            <td><br/><br/><u>Tembusan :</u><br/>1. Yayasan Budi Utomo<br/>2. Keuangan<br/>3. Arsip</td>                                                                                   
                                                                            <td></td>                                                                                   
                                                                            <td></td>                                                                                   
                                                                            <td></td>                                                                                   
                                                                            
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                                                                <td class="content-block aligncenter" style="font-family: Helvetica Neue,Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;" align="center" valign="top">                                                
                                                                </td>
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


?>