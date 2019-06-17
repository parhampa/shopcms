<?php
include("ses.php");
$user=$_SESSION['user'];
include ("../config.php");
$back = "editkhadamat.php";
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "update khadamat set `pic`='' where id = $id and `user`='$user'";
$res = mysqli_query($connection,$sql);
mysqli_close($connection);
msg("تصویر خدمات حذف شد" , $back . "?id=" . $id);
?>