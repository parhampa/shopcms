<?php
include("ses.php");
include("../config.php");
$back = "showoffers.php";
if (isset($_GET['id']) == false) {
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است.", $back);
    die();
}
$id = sqlint($_GET['id']);
if ($id == "") {
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است.", $back);
    die();
}
if (isset($_POST['start_date']) == false) {
    msg("لطفا تاریخ شروع جشنواره را وارد کنید.");
    die();
}
$start_date = sqlstr($_POST['start_date']);
if ($start_date == "") {
    msg("لطفا تاریخ شروع جشنواره را وارد کنید.");
    die();
}
if (isset($_POST['end_date']) == false) {
    msg("لطفا تاریخ پایان جشنواره را وارد کنید.");
    die();
}
$end_date = sqlstr($_POST['end_date']);
if ($end_date == "") {
    msg("لطفا تاریخ پایان جشنواره را وارد کنید.");
    die();
}
if (isset($_POST['percent']) == false) {
    msg("لطفا درصد تخفیف را وارد کنید.");
    die();
}
$percent = sqlint($_POST['percent']);
if ($percent == "") {
    msg("لطفا درصد تخفیف را وارد کنید.");
    die();
}
$sql = "update offer_product set `start_date`='$start_date' , `end_date`='$end_date' , `percent` = $percent WHERE id = $id";

$res = mysqli_query($connection, $sql);
if ($res) {
    msg("ویرایش با موفقیت انجام شد.", $back);
    die();
} else {
    die();
    msgb("اشکال در عملیات!");
    die();
}
?>