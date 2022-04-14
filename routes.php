<?php
$page = "module/pages/product_index.php";
if(isset($_GET['page'])){
    $url = $_GET['page'];
    if($url == "about"){
        $page = "module/pages/about.php";
    }if($url == "cara_pemesanan"){
        $page = "module/pages/cara_pemesanan.php";
    }
}