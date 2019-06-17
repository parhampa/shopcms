<?php
include("ses.php");
include ("../config.php");
$back = "edituser.php";
if(isset($_GET['user'])==false){
    die();
}
$user = sqlstr($_GET['user']);
$sql = "update users set `header`='' where `user` = '$user'";
$res = mysqli_query($connection,$sql);
mysqli_close($connection);
msg("تصویر سرصفحه حذف شد" , $back . "?user=" . $user);
?>