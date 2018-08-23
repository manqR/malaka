<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\web\View;

/* @var $searchModel backend\models\TagihanSiswaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Billing';
$this->params['breadcrumbs'][] = $this->title;



$root = '@web';
/* @JS */
$this->registerJsFile($root."/vendors/x-editable/dist/bootstrap3-editable/js/bootstrap-editable.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/x-editable/dist/inputs-ext/address/address.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/x-editable/dist/inputs-ext/typeaheadjs/typeaheadjs.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);
$this->registerJsFile($root."/vendors/x-editable/dist/inputs-ext/typeaheadjs/lib/typeahead.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);

$this->registerJsFile($root."/scripts/table/x-editable.js",
['depends' => [\yii\web\JqueryAsset::className()],
'position' => View::POS_END]);




$this->registerJs("
					$(\"#search\" ).keyup(function() {
											
						var siswa = 'id='+$('#search').val();
						$.ajax({
							type: 'GET',
							url: 'tagihan-siswa/listsiswa',
							data: siswa,
							cache: false,
							success: function(html) {
								
								$('#lsItems').css(\"display\",\"none\");
								$('#lsSiswa').css(\"display\",\"block\");								
								$('#lsSiswa').html(html);     								
							}
						});			
					});
				");

				
$this->registerJs("
	function showDetail(el) {
		var url = 'id='+el;
		$.ajax({
			type: 'GET',
			url: 'tagihan-siswa/detailsiswa',
			data: url,
			cache: false,
			success: function(html) {											
				$('#detail').html(html);  
				document.getElementById(\"show1\").style.cursor = \"pointer\";
				document.getElementById(\"show2\").style.cursor = \"pointer\";
				document.getElementById(\"show3\").style.cursor = \"pointer\";				
			}
		});	
		$.ajax({
			type: 'GET',
			url: 'tagihan-siswa/profiledetail',
			data: url,
			cache: false,
			success: function(html) {											
				$('#profileDetail').html(html);     
			}
		});
		$.ajax({
			type: 'GET',
			url: 'tagihan-siswa/spplist',
			data: url,
			cache: false,
			success: function(html) {											
				$('#listspp').html(html);     
			}
		});		
    }	
",View::POS_HEAD);								



$this->registerJs("
	$(document).on(\"click\", \".bd-example-modal\", function () {								
		var nis = $(this).data('id');
		console.log(nis);				
						
	})
");

?>

<div class="layout-xs contacts-container">
    <div class="flexbox-xs layout-column-xs contacts-list b-r">
        <div class="contact-header bg-default">
            <div class="contact-toolbar">
                <form class="form-inline">
                    <input class="form-control" id="search" type="text" placeholder="Search"/>
                </form>
            </div>
        </div>
		
        <div class="flex-xs scroll-y">
            
			<div id="lsSiswa" style="display:none">
			</div>
			<div id="lsItems">
				<?php
					foreach($model as $models):
				?>
				<!--Contact list item-->
			
				<a href="javascript:;" onclick="return showDetail(<?= $models->idsiswa ?>);" class="column-equal" data-toggle="contact">
					<div class="col v-align-middle contact-avatar">
						<div class="circle-icon bg-danger"><?= substr(strtoupper($models->nama_lengkap),0,1) ?></div>
					</div>
					<div class="col v-align-middle contact-details p-l-1">
						<span class="bold"><?= $models->nama_lengkap ?></span>
						<span class="small"><?= $models->idsiswa ?></span>
					</div>
				</a>
			
				<!--Contact list item-->
				<?php endforeach ?>
			</div>
			
			
        </div>
    </div>
	
	
    <div class="flexbox-xs layout-column-xs contact-view">	
        <div class="contact-header hidden-lg-up">
            <div class="contact-toolbar">
                <a href="javascript:;" data-toggle="contact">
                <i class="material-icons visible-xs m-r-1">arrow_back</i>
                </a>
            </div>
        </div>
		
		
        <div class="flex-xs scroll-y p-a-3">
		
			<!-- CHART DATA -->
			<div id="detail">
				
			</div>
			<!-- /CHART DATA -->
			
			
			<!-- MODAL -->
			
			<!-- SPP -->
			<div class="modal fade bd-example-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="max-width: 800px" >
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">SPP</h4>
						</div>
						<div class="modal-body">
							<div class="table-responsive">
								<table class="table table-bordered" style="width:100%">
									<thead>
										<tr>
											<th>Bulan</th>
											<th>Biaya</th>
											<th>Telah Dibayarkan</th>
											<th>aksi</th>
										</tr>
									</thead>
									<tbody id="listspp">																			
										
										
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>						
						</div>
					</div>
				</div>
			</div>
			<!-- /SPP -->
			
			
			
			<!-- FIX -->
			<div class="modal fade fix" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="max-width: 800px" >
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">FIX Charge</h4>
						</div>
						<div class="modal-body">
							<div class="table-responsive">
								<table id="user" class="table table-bordered align-middle">
									<tbody>
										<tr>
											<td width="25%">
												Simple text field
											</td>
											<td width="25%">
												0
											</td>
											<td width="50%">
												<a href="#" id="username" data-type="text" data-pk="1" data-title="Enter username">
												superuser
												</a>
											</td>
										</tr>
										<tr>
											<td>
												Empty text field, required
											</td>
											<td>
												0
											</td>
											<td>
												<a href="#" id="firstname" data-type="text" data-pk="1" data-placement="right" data-placeholder="Required" data-title="Enter your firstname">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												Select, local array, custom display
											</td>
											<td>
												0
											</td>
											<td>
												<a href="#" id="sex" data-type="select" data-pk="1" data-value="" data-title="Select sex">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												Select, remote array, no buttons
											</td>
											<td>
												0
											</td>
											<td>
												<a href="#" id="group" data-type="select" data-pk="1" data-value="5" data-source="/groups" data-title="Select group">
												Admin
												</a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>						
						</div>
					</div>
				</div>
			</div>
			<!-- FIX -->
			
			<!-- OPTIONAL -->
			<div class="modal fade optional" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="max-width: 800px" >
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Optional Billing</h4>
						</div>
						<div class="modal-body">
							<div class="table-responsive">
								<table id="user" class="table table-bordered align-middle">
									<tbody>
										<tr>
											<td width="25%">
												Simple text field
											</td>
											<td width="25%">
												0
											</td>
											<td width="50%">
												<a href="#" id="username" data-type="text" data-pk="1" data-title="Enter username">
												superuser
												</a>
											</td>
										</tr>
										<tr>
											<td>
												Empty text field, required
											</td>
											<td>
												0
											</td>
											<td>
												<a href="#" id="firstname" data-type="text" data-pk="1" data-placement="right" data-placeholder="Required" data-title="Enter your firstname">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												Select, local array, custom display
											</td>
											<td>
												0
											</td>
											<td>
												<a href="#" id="sex" data-type="select" data-pk="1" data-value="" data-title="Select sex">
												</a>
											</td>
										</tr>
										<tr>
											<td>
												Select, remote array, no buttons
											</td>
											<td>
												0
											</td>
											<td>
												<a href="#" id="group" data-type="select" data-pk="1" data-value="5" data-source="/groups" data-title="Select group">
												Admin
												</a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>						
						</div>
					</div>
				</div>
			</div>
			<!-- /OPTIONAL -->
			
			<!-- /MODAL -->
			
			
			
			
			<!-- PROFILE -->
			<div id="profileDetail">
			</div>
            <!-- /PROFILE -->
			
        </div>
    </div>
</div>