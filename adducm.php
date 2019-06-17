<?php
include("config.php");
if (isset($_POST['name']) == false) {
    msgb("لطفا نام و نام خانوادگی را وارد نمایید...");
    die();
}
$name = sqlstr($_POST['name']);
if (isset($_POST['email']) == false) {
    msgb("لطفا آدرس ایمیل خود را وارد نمایید...");
    die();
}
$email = sqlstr($_POST['email']);
if (isset($_POST['txt']) == false) {
    msgb("لطفا متن نظر خود را وارد نمایید...");
    die();
}
$txt = sqlstr($_POST['txt']);
if (isset($_GET['u']) == false) {
    msg("اشکال در ثبت نظر...", "index.php");
    die();
}
$u = sqlstr($_GET['u']);
$tarikh = date("Y-m-d");
date_default_timezone_set("Asia/Tehran");
$saat = date("h:i");
$sql = "insert into comment_user (`name`,`email`,`txt`,`tarikh`,`saat`,`user`,`visit`) value ('$name','$email','$txt','$tarikh','$saat','$u',0)";
$res = mysqli_query($connection, $sql);
if ($res) {
    if ($u != "--") {
        msg("نظر شما با موفقیت درج شد...", "foroshgah.php?u=" . $u);
    } else {
        msg("نظر شما با موفقیت درج شد...", "contact.php");
    }
} else {
    msgb("اشکال در درج نظر...");
}
?>