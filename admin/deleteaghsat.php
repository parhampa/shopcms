<?php
include("ses.php");
include("../config.php");
$back = "showaghsat.php";
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from aghsat where id=$id";
$res = mysqli_query($connection, $sql);
if ($res) {

    msg("عملیات با موفقیت انجام شد." ,$back);
    die();
} else {
    msgb("اشکال در انجام عملیات!!!");
}
?>