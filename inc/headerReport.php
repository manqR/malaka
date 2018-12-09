<?php

function HeaderReport($img){

    $head = '<html>
            <style>
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
            </style>
            <body>
                <img src="'.$img.'" >
                <div class="text">
                    <h2>SMK MALAKA</h2>
                    <p>Jl. Mawar Merah No.23, RT.2/RW.1, Pd. Kopi, Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460</p> 
                </div>               
            </body>
        </html>';

    return $head;
}
?>