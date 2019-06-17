<?php
include("ses.php");
include "../config.php";
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from related_links WHERE id = $id";
$res = mysqli_query($connection,$sql);
if($res){
    msg("عملیات با موفقیت انجام شد.","showrelatedlinks.php");
    die();
}else{
    msgb("اشکال در انجام عملیات!");
    die();
}

?>