<?php
include("ses.php");
include("../config.php");
$back = "addlink.php";
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

$sql = "insert into related_links (`title`,`link`,`order_s`)
VALUES ('$title','$link','$order_s')";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", $back );
    die();
} else {
    msgb("اشکال در درج اطلاعات.");
    die();
}
?>