<?php
include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    die();
}
$user = sqlstr($_GET['user']);
$sql = "delete from public_user where `user`= '$user'";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.","showpublicusers.php");
    die();
} else {
    msgb("اشکال در انجام عملیات!!!");
    die();
}
?>
