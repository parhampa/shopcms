<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from item_select_val where id=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msgb("عملیات با موفقیت انجام شد...");
} else {
    msgb("اشکال در انجام عملیات!!!");
}
?>