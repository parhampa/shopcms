<?php
include("ses.php");
include("../config.php");
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
if($id == ""){
    die();
}
if(isset($_GET['user'])==false){
    msg("کاربری انتخاب نشده است." , "showusers.php");
    die();
}
$user = sqlstr($_GET['user']);
if($user == ""){
    msg("کاربری انتخاب نشده است." , "showusers.php");
    die();
}
if(isset($_GET['sum'])==false){
    die();
}
$sum = sqlint($_GET['sum']);
if($sum == ""){
    die();
}

if(isset($_POST['finalprice'])==false){
    msgb("لطفا قیمت مورد نظر برای پکیج را وارد کنید.");
    die();
}
$finalprice = sqlint($_POST['finalprice']);
if($finalprice == ""){
    msgb("لطفا قیمت مورد نظر برای پکیج را وارد کنید.");
    die();
}
if($finalprice <= $sum){
    $sql = "update pack set `price` = $finalprice where id = $id";
    $res = mysqli_query($connection,$sql);
    if($res){
        msg("قیمت آپدیت شد." , "showpackages.php");
        die();
    }else{
        msgb("خطا در انجام عملیات!");
        die();
    }
}else{
    msgb("مبلغ شما باید از مجموع قیمت کمتر یا مساوی با آن باشد.");
    die();
}


?>