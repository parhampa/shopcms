<?php
include("ses.php");
include ("../config.php");
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