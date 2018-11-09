<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\web\View;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CartSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Kasir';
$this->params['breadcrumbs'][] = $this->title;


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
                    console.log(id);
                    
                    var table = $('.datatable').DataTable({
                            'destroy': true,										
                            'ajax': './kasir/cart?id='+id
                    });																								
                });
                ");

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
            $.post('kelas-group/postkelas',{
                data: datas
            },
            function(data, status){	
                if(data.err == 'sukses'){										
                    var rld = datas.split(';');										
                    $('.datatable').DataTable({
                        'destroy': true,										
                        'ajax': './kelas-group/listsiswa?id='+rld[0]+';'+rld[1]
                    
                    });		
                    swal('Saving!', 'Data Siswa Berhasil ditambahkan', 'success');
                }else{										
                    swal('Saving!', 'Data Tidak Berhasil ditambahkan', 'error');
                }
                                                        
            });
        });
                                                                
    })
");

/* @CSS */
$this->registerCssFile($root."/vendors/select2/select2.css");
$this->registerCssFile($root."/vendors/sweetalert/dist/sweetalert.css");
$this->registerCssFile($root."/vendors/datatables/media/css/dataTables.bootstrap4.css");
$this->registerCss(".tambah{cursor: pointer;}");

?>

<div class="card card-block">
    <select data-placeholder="Your Favorite Football Team" class="select2 m-b-1" style="width: 100%;" id="siswa">
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
            <button type="button" class="btn btn-info btn-icon btn-sm addCart" data-toggle="modal" data-target=".bd-example-modal"><i class="material-icons">add</i>Pick Item</button>        
        </div>
        <div class="table-responsive p-t-2 p-b-2">
            <table class="table table-bordered m-b-0">
                <thead>
                    <tr>
                        <th>
                            Description
                        </th>
                        <th>
                            Unit Price
                        </th>
                        <th>
                            Quantity
                        </th>
                        <th>
                            Amount
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="4" class="text-xs-center">No data available in table</td>
                    </tr>
                    <!-- <tr>
                        <td>
                            Monthly web updates for http://www.themeforest.net
                        </td>
                        <td>
                            $250.00
                        </td>
                        <td>
                            1
                        </td>
                        <td>
                            $250.00
                        </td>
                    </tr> -->
                  
                </tbody>
            </table>
        </div>
        <div class="invoice-totals p-t-2 p-b-2">
            <div class="invoice-totals-row">
                <strong class="invoice-totals-title">
                Subtotal
                </strong>
                <span class="invoice-totals-value">
                0
                </span>
            </div>
            <div class="invoice-totals-row">
                <strong class="invoice-totals-title">
                Total
                </strong>
                <span class="invoice-totals-value">
                0
                </span>
            </div>
            <div class="invoice-totals-row">
                <strong class="invoice-totals-title">
                Amount Paid
                </strong>
                <span class="invoice-totals-value">
                0
                </span>
            </div>
            <div class="invoice-totals-row">
                <strong class="invoice-totals-title">
                Amount Due
                </strong>
                <span class="invoice-totals-value">
                0
                </span>
            </div>
        </div>      
    </div>
    <div class="card-footer text-xs-right" style="background-color:#f7f7f700">      
        <button type="button" class="btn btn-danger btn-icon btn-sm">
        <i class="material-icons">shopping_basket</i>
        Checkout
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
