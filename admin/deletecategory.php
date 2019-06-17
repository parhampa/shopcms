<?php
include("ses.php");
include ("../config.php");
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from content_cat where id = $id";
$res = mysqli_query($connection, $sql);
if($res){
	msg("عملیات با موفقیت انجام شد.", "showcategories.php");
    die();
} else {
   $message = "اشکال در انجام عملیات!!!";
   msgb($message);
}
?>