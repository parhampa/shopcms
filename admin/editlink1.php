<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$back = "showrelatedlinks.php";
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان لینک را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان لینک را وارد نمایید.");
    die();
}
if (isset($_POST['order_s']) == false) {
    msgb("لطفا ترتیب را وارد نمایید");
    die();
}
$order_s = sqlint($_POST['order_s']);
if ($order_s == "") {
    msgb("لطفا ترتیب را وارد نمایید");
    die();
}
if (isset($_POST['link']) == false) {
    msgb("لطفا آدرس لینک را وارد نمایید");
    die();
}
$link = sqlstr($_POST['link']);
if ($link == "") {
    msgb("لطفا آدرس لینک را وارد نمایید");
    die();
}

$sql = "update related_links set `title` = '$title' , `link` = '$link' , `order_s` = '$order_s' where id=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", $back);
    die();
} else {
    msgb("اشکال در درج اطلاعات.");
    die();
}
?>