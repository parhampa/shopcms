<?php
include("ses.php");
include("../config.php");
$back = "showmenus.php";
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان منو را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان منو را وارد نمایید.");
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
    msgb("لطفا لینک را وارد نمایید");
    die();
}
$link = sqlstr($_POST['link']);
if ($link == "") {
    msgb("لطفا لینک را وارد نمایید");
    die();
}
$fico = "";
if (isset($_POST['fico']) == true) {
    $fico = sqlstr($_POST['fico']);
}
if (isset($_POST['father']) == false) {
    die();
}
$father = sqlint($_POST['father']);
$sql = "update menu set `title`='$title',`link`='$link',`order_s`=$order_s,`fico`='$fico',`father`=$father where id = $id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("ویرایش با موفقیت انجام شد.", $back);
    die();
} else {
    msgb("اشکال در ویرایش اطلاعات.");
    die();
}
?>