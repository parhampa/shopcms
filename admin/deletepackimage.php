<?php
include("ses.php");
include ("../config.php");
$back = "editpack.php";
if(isset($_GET['user'])==false){
    die();
}
$user = sqlstr($_GET['user']);
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);

$sql = "update pack set `pic`='' where `id` = $id";
$res = mysqli_query($connection,$sql);
mysqli_close($connection);
msg("تصویر حذف شد" , $back . "?user=" . $user . "&id=" . $id);
?>