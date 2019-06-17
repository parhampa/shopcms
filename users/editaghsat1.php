<?php
include("ses.php");
$user = $_SESSION['user'];
include "../config.php";
$back = "showaghsat.php";
if (isset($_GET['id']) == false) {
    msg("موردی برای ویرایش انتخاب نشده است...", $back);
    die();
}
$id = sqlint($_GET['id']);
if ($id == "") {
    msg("موردی برای ویرایش انتخاب نشده است...", $back);
    die();
}
$sql = "select * from aghsat where id = $id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msg("اقساط مورد نظر وجود ندارد.", $back);
    die();
}
$fild = mysqli_fetch_assoc($res);
$pid = $fild['Pid'];
$sql2 = "select * from khadamat where id=$pid and `user`='$user'";
if ($fild['ty'] == 0) {
    $sql2 = "select * from kala where id=$pid and `user`='$user'";
}
$res2 = mysqli_query($connection, $sql2);
if (mysqli_num_rows($res2) == 0) {
    die();
}
if (isset($_POST['price1']) == false) {
    msg("لطفا قیمت ابتدای بازه را وارد کنید.");
    die();
}
$price1 = sqlint($_POST['price1']);
if ($price1 == "") {
    msgb("لطفا قیمت ابتدای بازه را وارد کنید.");
    die();
}
if (isset($_POST['price2']) == false) {
    msgb("لطفا قیمت انتهای بازه را وارد کنید.");
    die();
}
$price2 = sqlint($_POST['price2']);
if ($price2 == "") {
    msgb("لطفا قیمت انتهای بازه را وارد کنید.");
    die();
}
if (isset($_POST['month1']) == false) {
    msgb("لطفا ماه ابتدای بازه را وارد کنید.");
    die();
}
$month1 = sqlint($_POST['month1']);
if ($month1 == "") {
    msgb("لطفا ماه ابتدای بازه را وارد کنید.");
    die();
}
if (isset($_POST['month2']) == false) {
    msgb("لطفا ماه انتهای بازه را وارد کنید.");
    die();
}
$month2 = sqlint($_POST['month2']);
if ($month2 == "") {
    msgb("لطفا ماه انتهای بازه را وارد کنید.");
    die();
}
$sql = "update aghsat set price1=$price1,price2=$price2,month1=$month1,month2=$month2 where id = $id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("ویرایش با موفقیت انجام شد.", $back);
    die();
} else {
    msgb("خطا در انجام عملیات!");
    die();
}
?>