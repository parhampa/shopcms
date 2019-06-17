<?php
include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    msg("نام کاربری انتخاب نشده", "showusers.php");
    die();
}
$user = sqlstr($_GET['user']);
$back = "addjashnvare.php?user=" . $user;
if (isset($_POST['start_date']) == false) {
    msgb("لطفا تاریخ شروع را وارد کنید.");
    die();
}
$start_date = sqlstr($_POST['start_date']);
if ($start_date == "") {
    msgb("لطفا تاریخ شروع را وارد کنید.");
    die();
}
if (isset($_POST['end_date']) == false) {
    msgb("لطفا تاریخ پایان را وارد کنید.");
    die();
}
$end_date = sqlstr($_POST['end_date']);

if ($end_date == "") {
    msgb("لطفا تاریخ پایان را وارد کنید.");
    die();
}
if (isset($_POST['percent']) == false) {
    msgb("لطفا درصد را وارد کنید.");
    die();
}
$percent = sqlint($_POST['percent']);

if ($percent == "") {
    msgb("لطفا درصد را وارد کنید.");
    die();
}

$sql = "insert into jashnvare (`user`,`start_date`,`end_date`,`percent`) 
        VALUES ('$user','$start_date','$end_date',$percent )";
$res = mysqli_query($connection, $sql);
if ($res == true) {
    msg("جشنواره با موفقیت درج شد.", $back);
    die();
} else {
    msgb("اشکال در عملیات درج جشنواره!");
    die();
}
?>