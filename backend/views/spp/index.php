<?php
/* @var $this yii\web\View */
use yii\helpers\Html;
use yii\grid\GridView;
use yii\web\View;


$root = '@web';
/* @JS */



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
function showSpp(el) {
    var url = 'id='+el;    
    $.ajax({
        type: 'GET',
        url: 'spp/spplist',
        data: url,
        cache: false,
        success: function(html) {											
            $('#listspp').html(html);     
        }
    });
            
}	
",View::POS_HEAD);	



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
			
				<a href="javascript:;" onclick="return showSpp(<?= $models->idsiswa ?>);" class="column-equal" data-toggle="contact">
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
    <div class="flex-xs scroll-y p-a-3 card card-block">
        <div class="table-responsive">
            <table class="table table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th>Bulan</th>
                        <th>Biaya</th>
                        <th>Telah Dibayarkan</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody id="listspp">																			
                    
                    
                </tbody>
            </table>
        </div>
    </div>
</div>
