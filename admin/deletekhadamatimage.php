<?php
include("ses.php");
include ("../config.php");
$back = "editkhadamat.php";
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "update khadamat set `pic`='' where `id` = $id";
$res = mysqli_query($connection,$sql);
mysqli_close($connection);
msg("لوگو حذف شد" , $back . "?id=" . $id);
?>