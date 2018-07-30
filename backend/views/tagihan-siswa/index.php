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

	window.onload =  function(){
        document.getElementById(\"show1\").style.cursor = \"pointer\";
        document.getElementById(\"show2\").style.cursor = \"pointer\";
        document.getElementById(\"show3\").style.cursor = \"pointer\";
    };",
	View::POS_READY
	
	
);	


?>

<div class="layout-xs contacts-container">
    <div class="flexbox-xs layout-column-xs contacts-list b-r">
        <div class="contact-header bg-default">
            <div class="contact-toolbar">
                <form class="form-inline">
                    <input class="form-control" type="text" placeholder="Search"/>
                </form>
            </div>
        </div>
        <div class="flex-xs scroll-y">
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">M</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Aigner Manuela</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-success">C</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Arroyave César</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">T</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Barbu Tudora</span>
                    <span class="small">Engineering</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-info">C</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Cadanțu Crenguța</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-success">C</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Carrillo Cristina</span>
                    <span class="small">Accounting</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">J</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Chavez Janice</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">D</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Chiopu David</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">J</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Ciucurescu Janeta</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">M</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Conte Marco</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">T</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Coșbuc Teodora</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">D</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Curtis Douglas</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">F</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Cuza Francesca</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-success">S</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Declercq Stijn</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-info">J</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Dixon Jose</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">S</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Dogaru Savina</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">T</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Dolgan Titus</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">E</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">elmaru Eugenia</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">G</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Fox Grace</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-info">K</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Grant Kimberly</span>
                    <span class="small">Accounting</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">D</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Hoffman Danielle</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-info">D</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Ildikó Dávid</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">I</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Ionescu Ianis</span>
                    <span class="small">Accounting</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">J</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">james Janice</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">F</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Kralj Franc</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">A</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Madsen Andrea</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">B</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Martínez Bertha</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">M</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Morales Mary</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-success">V</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Moțoc Varvara</span>
                    <span class="small">Accounting</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">K</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Mustafa Kemal</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">J</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Obrien Jerry</span>
                    <span class="small">Engineering</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">V</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Oliveira Victor</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">P</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Ortiz Patricia</span>
                    <span class="small">Engineering</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-info">E</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Owens Eric</span>
                    <span class="small">Accounting</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">B</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Palmer Barbara</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-success">P</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Peters Peter</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">C</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Posteucă Codruț</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">L</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Saunderson Luca</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">V</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Smith Vincent</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-danger">B</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Szandra Bodrogi</span>
                    <span class="small">Accounting</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">I</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Săvescu Ina</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-info">P</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Testa Pietro</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">P</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Thomas Phillip</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">S</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Todea Sofia</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-success">C</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Ungur Carmen</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">V</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Vanghelie Vasilică</span>
                    <span class="small">Engineering</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-dark">R</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Viktória Rosta</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-success">C</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Viles Carmen</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon bg-primary">M</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Vosper Mikayla</span>
                    <span class="small">Engineering</span>
                </div>
            </a>
            <!--Contact list item-->
            <a href="javascript:;" class="column-equal" data-toggle="contact">
                <div class="col v-align-middle contact-avatar">
                    <div class="circle-icon">M</div>
                </div>
                <div class="col v-align-middle contact-details p-l-1">
                    <span class="bold">Wagner Marc</span>
                    <span class="small">Personnel</span>
                </div>
            </a>
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
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="card card-block">
						<h5 class="m-b-0 v-align-middle text-overflow">					
							<span class="small pull-xs-right tag bg-success p-y-0 p-x-xs"  id="show1" data-toggle="modal" data-target=".bd-example-modal"  style="line-height: 24px;">
								<span >Complete</span>
							</span>
							<span>4.000.000</span>
						</h5>
						<div class="small text-overflow text-muted">
							SPP
						</div>
						<div class="small text-overflow">
							Updated:&nbsp;<span>05:35 AM</span>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="card card-block">
						<h5 class="m-b-0 v-align-middle text-overflow">
							<span class="small pull-xs-right tag bg-success p-y-0 p-x-xs" id="show2" data-toggle="modal" data-target=".fix" style="line-height: 24px;">
								<span >Complete</span>
							</span>
							<span>5.000.000</span>
						</h5>
						<div class="small text-overflow text-muted">
							FIX CHARGE
						</div>
						<div class="small text-overflow">
							Updated:&nbsp;<span>12:42 PM</span>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-lg-4">
					<div class="card card-block">
						<h5 class="m-b-0 v-align-middle text-overflow">
							<span class="small pull-xs-right tag bg-danger p-y-0 p-x-xs" id="show3" data-toggle="modal" data-target=".optional" style="line-height: 24px;">
							<span >Incomplete</span>
							</span>
							<span>-1.000.000</span>
						</h5>
						<div class="small text-overflow text-muted">
							Optional Billing
						</div>
						<div class="small text-overflow">
							Updated:&nbsp;<span>09:26 AM</span>
						</div>
					</div>
				</div>										
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
			<!-- FIX -->
			
			<!-- /MODAL -->
			
			
			
			
			<!-- PROFILE -->
            <div class="column-equal m-b-2">
                <div class="col" style="width:128px;">
                    <img src="images/face1.jpg" class="avatar avatar-lg img-circle" alt="">
                </div>
                <div class="col v-align-middle p-l-2">
                    <h1>
                        <b>Aigner</b>
                        Manuela
                    </h1>
                    <h3>Personnel</h3>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">Email</span>
                </div>
                <div class="col p-l-2">
                    <a ng-href="email@example.com" href="email@example.com">
                    email@example.com
                    </a>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">
                    Mobile
                    </span>
                </div>
                <div class="col p-l-2">
                    <span>
                    +1 123 456 789
                    </span>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">
                    Home
                    </span>
                </div>
                <div class="col p-l-2">
                    <a ng-href="">
                    http://www.example.com
                    </a>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">
                    Country
                    </span>
                </div>
                <div class="col p-l-2">
                    <span>
                    Austria
                    </span>
                </div>
            </div>
            <div class="column-equal m-b-2">
                <div class="col p-l-2 text-xs-right" style="width:128px;">
                    <span class="text-muted">
                    Note
                    </span>
                </div>
                <div class="col p-l-2">
                    <span>
                    Cras mattis consectetur purus sit amet fermentum. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Aenean lacinia bibendum nulla sed consectetur. Nulla vitae elit libero, a pharetra augue. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.
                    </span>
                </div>
            </div>			
			<!-- /PROFILE -->
			
        </div>
    </div>
</div>