<?php
include("../config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from menu where `id`=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", "showmenus.php");
    die();
} else {
    msgb("اشکال در انجام عملیات!!!");
    die();
}
?>