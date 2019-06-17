<?php
include("ses.php");
include ("../config.php");
$back = "showjashnvare.php";
$user=$_SESSION['user'];
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from jashnvare where id = $id and `user`='$user'";
$res = mysqli_query($connection,$sql);
if($res){
    msg("حذف با موفقیت انجام شد.", $back);
    die();
}else{
    msg("اشکال در عملیات حذف!");
    die();
}
?>