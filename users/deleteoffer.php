<?php
include("ses.php");
$user=$_SESSION['user'];
include("../config.php");
$back = "showoffers.php";
if(isset($_GET['id'])==false){
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است." , $back);
    die();
}
$id = sqlint($_GET['id']);
if($id == ""){
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است." , $back);
    die();
}
$back = "showoffers.php";
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from offer_product where id = $id";
$res = mysqli_query($connection,$sql);
if($res){
    msg("حذف با موفقیت انجام شد.", $back);
    die();
}else{
    msg("اشکال در عملیات حذف!");
    die();
}
?>