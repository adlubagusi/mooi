<?php
$page = "module/front/index.php";
if(isset($_GET['page'])){
    $url = $_GET['page'];
    if($url == "home"){
        $page = "module/front/index.php";
    }else if($url == "login"){
        $page = "module/pages/login.php";
    }
}