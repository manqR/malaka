<?php


use yii\web\View;


$this->title = 'Laporan Keuangan';
// @root
$root = '@web';

$this->registerJs("

    function loading(){
        $('.ball-beat').css(\"display\",\"block\");
    }
    function removeLoading(){
        $('.ball-beat').css(\"display\",\"none\");
    }
    
    function spp(){        
        alert('abcd');
        $('.listMenu').css(\"display\",\"none\");        
        $('.back').css(\"display\",\"block\");        
        loading();        
        $('.aksi').css(\"display\",\"block\");
        removeLoading();        
        document.getElementById('kategori').value = 'spp';
    }
    function lainnya(){        
        alert('defg');
        $('.listMenu').css(\"display\",\"none\");
        $('.back').css(\"display\",\"block\");
        $('.ball-beat').css(\"display\",\"block\");
        $('.aksi').css(\"display\",\"block\");
        $('.ball-beat').css(\"display\",\"none\");
        document.getElementById('kategori').value = 'lain';
    }

    function back(){
        $('.ball-beat').css(\"display\",\"none\");
        $('.back').css(\"display\",\"none\");
        $('.listMenu').css(\"display\",\"flex\");
        $('.aksi').css(\"display\",\"none\");
    
    }

",View::POS_HEAD);

$this->registerCss(".ball-beat{display: none;} .text-center{text-align:center} .back{display:none} .aksi{display:none}");

$this->registerCssFile($root."/styles/loaders.css");
?>

<div class="card">
    <div class="card-block">
        <div class="loader text-center">
            
            <div class="loader-inner ball-beat">
                <div>       
                </div>
                <div>
                </div>
                <div>
                </div>
            </div>

        </div>
        <div class="listMenu">
            <a href="javascript:;" onclick="spp();" class="btn btn-outline-info btn-lg m-r-xs">Laporan SPP</a>
            <a href="javascript:;" onclick= "lainnya();" class="btn btn-outline-info btn-lg m-r-xs">Laporan Lainnya</a>            
        </div> 


        <form action="keuangan/post" method="POST" class="aksi">
            <input type="hidden" name="kategori" id="kategori" value="" />
            <div class="form-group">
                <label>Tahun Ajaran</label>
                <select name="tahun_ajaran" class="form-control">
                    <option></option>
                </select>
            </div>       
            <div class="form-group">
                <input type="submit" class="btn btn-success btn-md" value="Search" />
            </div>   
        </form> 
    </div>
</div>
<a href="javascript:;" onclick="back();" class="btn btn-outline-info back btn-sm m-r-xs">Back</a>
