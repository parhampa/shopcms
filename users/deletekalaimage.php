<?php
include("ses.php");
$user=$_SESSION['user'];
include ("../config.php");
$back = "editkala.php";
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "update kala set `pic`='' where id = $id and `user`='$user'";
$res = mysqli_query($connection,$sql);
mysqli_close($connection);
msg("تصویر کالا حذف شد" , $back . "?id=" . $id);
?>