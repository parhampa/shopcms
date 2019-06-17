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
if (isset($_POST['is_money']) == false) {
    die();
}
$is_money = sqlint($_POST['is_money']);
if ($is_money != 0 && $is_money != 1) {
    die();
}
if (isset($_POST['order_show']) == false) {
    msgb("لطفا ترتیب آیتم را وارد نمایید");
    die();
}
$order_show = sqlint($_POST['order_show']);
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان آیتم را اضافه بکنید.");
    die();
}
if ($_POST['title'] == "") {
    msgb("لطفا عنوان آیتم را اضافه بکنید.");
    die();
}
$title = sqlstr($_POST['title']);
$sql = "insert into `item_numeric`(`cat_id`,`is_important`,`order_show`,`is_money`,`title`)
                        VALUES ($cat_id,$is_important,$order_show,$is_money,'$title')";
$res = mysqli_query($connection, $sql);
if ($res) {
    $back = "add_numeric_item.php?cat=" . $cat_id;
    msg("عملیات با موفقیت انجام شد", $back);
} else {
    msgb("اشکال در انجام عملیات");
}
?>