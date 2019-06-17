<?php
include("ses.php");
include("../config.php");
if (isset($_GET['cat_id']) == false) {
    die();
}
$cat_id = sqlint($_GET['cat_id']);
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "select * from `item_select` where `id`=$id and `cat_id`=$cat_id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
if (isset($_POST['title']) == "") {
    msgb("لطفا عنوان را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if (isset($_POST['order_select']) == false) {
    msgb("لطفا ترتیب را وارد نمایید.");
    die();
}
$order_select = sqlint($_POST['order_select']);
$sql = "update `item_select` set `title`='$title',`order_select`=$order_select where id=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", "edit_select_item.php?id=" . $id . "&cat_id=" . $cat_id);
    die();
} else {
    msgb("اشکال در انجام عملیات...");
    die();
}
?>