<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\web\View;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CartSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kasir';
$this->params['breadcrumbs'][] = $this->title;

include './inc/url.php';

/* @ROOT */
$root = '@web';
/* @JS */

$this->registerJsFile($root."/vendors/select2/select2.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/scripts/forms/plugins.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/datatables/media/js/jquery.dataTables.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/datatables/media/js/dataTables.bootstrap4.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/sweetalert/dist/sweetalert.min.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);


$this->registerJs(" 
                $('.app').addClass('offcanvas');
                $(document).on(\"click\", \".addCart\", function () {								
                    var id = document.getElementById('siswa').value;
                    
                    var table = $('.datatable').DataTable({
                            'destroy': true,										
                            'ajax': './kasir/cart?id='+id
                    });																								
                });
                               
                
                ");

$this->registerJs("


    function listCart(){
        var id = document.getElementById('siswa').value;
        
        var table = $('.datatable').DataTable({
                'destroy': true,										
                'ajax': './kasir/cart?id='+id
        });	
    }


    function listTagihan() {
        var id = document.getElementById('siswa').value;
        $.ajax({
			type: 'GET',
			url: 'kasir/list?id='+id,
			data: 'kasir/list?id='+id,
			cache: false,
			success: function(html) {											
				$('#show').html(html);   				
			}
        });
        
        $.ajax({
			type: 'GET',
			url: 'kasir/jumlah-list?id='+id,
			data: 'kasir/jumlah-list?id='+id,
			cache: false,
			success: function(html) {											
				$('#jml').html(html);   				
			}
        });
        
       
    };
    function rupiah(bilangan){           
        var	number_string = bilangan.toString(),
            sisa 	= number_string.length % 3,
            result 	= number_string.substr(0, sisa),
            ribuan 	= number_string.substr(sisa).match(/\d{3}/g);

        if (ribuan) {
            separator = sisa ? '.' : '';
            result += separator + ribuan.join('.');
        }
        return result;
    };
    function Checkout(){



    }
", View::POS_HEAD); 

$this->registerJs("
    $(document).on(\"click\", \".tambah\", function () {		
        var datas = $(this).data('id');
        console.log(datas);
        swal({
            title: 'Are you sure?',
            text: 'Masukan Tagihan kedalam Cart ?',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#DD6B55',
            confirmButtonText: 'Yes, save it!',
            closeOnConfirm: false
        }, function() {							
            console.log(datas);
            $.post('kasir/post',{
                data: datas
            },
            function(data, status){	
                if(data.err == 'sukses'){										                    
                    swal('Saving!', 'Data Pembayaran berhasil ditambahkan', 'success');
                    listCart();
                    listTagihan();
                }else{                    									
                    swal('Saving!', 'Data Pembayaran gagal ditambahkan', 'error');
                    console.log(err)
                }
                                                        
            });
        });
                                                                
    })

    $(document).on(\"click\", \".checkout\", function (){
        var nominal = document.getElementById('nominal').value;
        var siswa = document.getElementById('siswa').value;
        swal({
          title: 'Jumlah Uang',
          text: 'Masukan jumlah uang dibayarkan ',
          type: 'input',
          showCancelButton: true,
          closeOnConfirm: false,
          animation: 'slide-from-top',
          inputPlaceholder: 'Write something'
        }, function(inputValue) {
            
            if (inputValue === false) {
                return false;
            }else if (inputValue === '' ) {
                console.log(inputValue);
                console.log(nominal);
                swal.showInputError('Nilai Tidak boleh kosong');
                return false;
            }else if (inputValue === 0 ) {
                console.log(inputValue);
                console.log(nominal);
                swal.showInputError('Nilai Tidak boleh kosong');
                return false;
            }else if (parseInt(inputValue,10) < parseInt(nominal,10)) {
                console.log(inputValue);
                console.log(nominal);
                swal.showInputError('Nominal yang dimasukan tidak cukup');
                return false;
            }
                $.post('kasir/checkout',{
                    data: siswa
                },
                function(data, status){	
                    if(data.err == 'sukses'){			
                        							                    
                        var kembalian = inputValue - nominal;
                        swal('Nilai Kembailan: Rp ' + rupiah(kembalian) , 'Pembayaran Berhasil', 'success');
                        listTagihan();
                        window.open('".$link."checkout_print-'+data.idkwitansi, 'cetak');     
                        console.log(data.err)
                    }else{                    									
                        swal('Saving!', 'Proses Checkout Gagal !', 'error');
                    }
                                                        
            });
          
        });
      });


      $(document).on(\"click\", \".kurang\", function () {		
        var datas = $(this).data('id');
        swal({
            title: 'Are you sure?',
            text: 'List Tagihan Akan dihapus',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#DD6B55',
            confirmButtonText: 'Ya, Lanjutkan!',
            closeOnConfirm: false
        }, function() {							
            console.log(datas);
            $.post('kasir/listdelete',{
                data: datas
            },
            function(data, status){	
                if(data.err == 'sukses'){										
                    listTagihan();	
                    swal('Saving!', 'Tagihan Berhasil dihapus', 'success');
                }else{										
                    swal('Saving!', 'Data Tidak Berhasil dihapus', 'error');
                }
                                                        
            });
        });
                                                                
    }) 

    $(document).on(\"click\", \".print\", function (){    
        var siswa = document.getElementById('siswa').value; 
        window.open('".$link."kasir/print?id='+siswa, 'cetak');          
    });

");

/* @CSS */
$this->registerCssFile($root."/vendors/select2/select2.css");
$this->registerCssFile($root."/vendors/sweetalert/dist/sweetalert.css");
$this->registerCssFile($root."/vendors/datatables/media/css/dataTables.bootstrap4.css");
$this->registerCss(".tambah{cursor: pointer;}.kurang{cursor: pointer;}");

?>

<div class="card card-block">
    <select data-placeholder="pilih siswa" class="select2 m-b-1" style="width: 100%;" id="siswa" onchange="listTagihan()">
        <option value="">- pilih siswa -</option>
        <?php
            foreach($model as $models):
        ?>
        <option value="<?= $models->idsiswa?>"><?= $models->nama_lengkap?> - <?= $models->idsiswa?></option>
        <?php
            endforeach;
        ?>       
    </select>  
</div>


<div class="card">
    <div class="card-block">
        <div class="text-xs-right">
            <button type="button" class="btn btn-info btn-icon btn-sm addCart" data-toggle="modal" data-target=".bd-example-modal"><i class="material-icons">add</i>Cari Tagihan</button>        
        </div>
        <div class="table-responsive p-t-2 p-b-2">
            <table class="table table-bordered m-b-0">
                <thead>
                    <tr>
                        <th>
                            NIS
                        </th>
                        <th>
                            Keterangan
                        </th>
                        <th>
                            Nominal
                        </th>
                        <th>
                            Tahun Ajaran
                        </th>
                        <th>
                            Qty
                        </th>
                        <th>
                            Aksi
                        </th>
                    </tr>
                </thead>
                <tbody id="show">
                    <tr>
                        <td colspan="6" class="text-xs-center">No data available in table</td>
                    </tr>            
                </tbody>
            </table>
        </div>
        <div class="invoice-totals p-t-2 p-b-2" id="jml">
            <div class="invoice-totals-row">
                <strong class="invoice-totals-title">
                Subtotal
                </strong>
                <span class="invoice-totals-value">
                <b>Rp 0</b>
                </span>
                <input type='hidden' id='nominal' name='nominal' value=0>
            </div>        
        </div>      
    </div>
    <div class="card-footer text-xs-right" style="background-color:#f7f7f700">      
        <button type="button" class="btn btn-danger btn-icon btn-sm checkout">
        <i class="material-icons">shopping_basket</i>
        Checkout
        </button>
        <button type="button" class="btn btn-warning btn-icon btn-sm print">
        <i class="material-icons">print</i>
        Cetak
        </button>        
    </div>
</div>


	<!-- ------------ MODAL ADD CART------------------>
	<div class="modal fade bd-example-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="max-width: 800px" >
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">List Tagihan</h4>
				</div>
				<div class="modal-body">
					<div class="table-responsive">
						 <table class="table table-bordered datatable" style="width:100%">
							<thead>
								<tr>
									<th>
										NIS
									</th>
									<th>
										Keterangan
									</th>
									<th>
										Nominal
									</th>
									<th>
										Tahun Ajaran
									</th>								
									<th>
										Aksi
									</th>

								</tr>
							</thead>
						</table>
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>						
				</div>
			</div>
		</div>
	</div>
	<!-- ------------ /MODAL ADD SISWA ------------------>
