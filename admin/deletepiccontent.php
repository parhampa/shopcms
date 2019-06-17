<?php
include("ses.php");
include ("../config.php");
$back = "editcontent.php";
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "update content set `pic`='' where id = $id";
$res = mysqli_query($connection,$sql);
mysqli_close($connection);
msg("تصویر حذف شد" , $back . "?id=" . $id);

?>