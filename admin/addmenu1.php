<?php
include("ses.php");
include("../config.php");
$back = "addmenu.php";
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان منو را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان منو را وارد نمایید.");
    die();
}
if (isset($_POST['link']) == false) {
    msgb("لطفا لینک منو را وارد نمایید");
    die();
}
$link = sqlstr($_POST['link']);
if ($link == "") {
    msgb("لطفا لینک منو را وارد نمایید");
    die();
}
if (isset($_POST['order_s']) == false) {
    msgb("لطفا ترتیب وارد نمایید");
    die();
}
$order_s = sqlint($_POST['order_s']);
if ($order_s == "") {
    msgb("لطفا ترتیب را وارد نمایید");
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
$sql = "insert into menu (`title`,`link`,`order_s`,`fico`,`father`)
VALUES ('$title','$link',$order_s,'$fico',$father)";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", $back);
    die();
} else {
    msgb("اشکال در درج اطلاعات.");
    die();
}
?>