<?php
include("ses.php");
include("../config.php");
if (isset($_GET['sid']) == false) {
    die();
}
$sid = sqlint($_GET['sid']);
$sql = "select * from `item_select` where `id`=$sid";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
if (isset($_GET['cat_id']) == false) {
    die();
}
$cat_id = sqlint($_GET['cat_id']);
$sql = "select * from `content_cat` where `id`=$cat_id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "select * from `item_select_val` where `id`=$id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$sid = sqlint($_GET['sid']);
$sql = "select * from `item_select` where `id`=$sid";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
if (isset($_POST['title']) == "") {
    msgb("لطفا عنوان را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if (isset($_POST['order_val']) == false) {
    msgb("لطفا ترتیب را وارد نمایید.");
    die();
}
$order_val = sqlint($_POST['order_val']);
$sql = "update `item_select_val` set `title`='$title',`order_val`=$order_val where id=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", "edit_select_value.php?cat_id=" . $cat_id . "&id=" . $id . "&sid=" . $sid);
    die();
} else {
    msgb("اشکال در انجام عملیات...");
    die();
}
?>