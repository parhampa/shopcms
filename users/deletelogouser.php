<?php
include("ses.php");
include ("../config.php");
$back = "editprofile.php";
$user = $_SESSION['user'];
$sql = "update users set `logo`='' where `user` = '$user'";
$res = mysqli_query($connection,$sql);
mysqli_close($connection);
msg("لوگو حذف شد" , $back . "?user=" . $user);
?>