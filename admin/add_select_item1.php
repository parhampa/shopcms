<?php
include("ses.php");
include("../config.php");
if (isset($_GET['cat_id']) == false) {
    die();
}
$cat_id = sqlint($_GET['cat_id']);
$sql = "select * from `content_cat` where `id`=$cat_id";
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
$sql = "insert into `item_select` (`cat_id`,`title`,`order_select`) VALUES ($cat_id,'$title',$order_select)";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", "add_select_item.php?cat=" . $cat_id);
    die();
} else {
    msgb("اشکال در انجام عملیات...");
    die();
}
?>