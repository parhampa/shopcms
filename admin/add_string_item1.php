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
if (isset($_POST['is_important']) == false) {
    die();
}
$is_important = sqlint($_POST['is_important']);
if ($is_important != 0 && $is_important != 1) {
    die();
}
if (isset($_POST['big_text']) == false) {
    die();
}
$big_text = sqlint($_POST['big_text']);
if ($big_text != 0 && $big_text != 1) {
    die();
}
if (isset($_POST['order_string']) == false) {
    msgb("لطفا ترتیب آیتم را وارد نمایید");
    die();
}
$order_string = sqlint($_POST['order_string']);
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان آیتم را اضافه بکنید.");
    die();
}
if ($_POST['title'] == "") {
    msgb("لطفا عنوان آیتم را اضافه بکنید.");
    die();
}
$title = sqlstr($_POST['title']);
$sql = "insert into `item_string`(`cat_id`,`is_important`,`order_string`,`big_text`,`title`)
                        VALUES ($cat_id,$is_important,$order_string,$big_text,'$title')";
$res = mysqli_query($connection, $sql);
if ($res) {
    $back = "add_string_item.php?cat=" . $cat_id;
    msg("عملیات با موفقیت انجام شد", $back);
} else {
    msgb("اشکال در انجام عملیات");
}
?>