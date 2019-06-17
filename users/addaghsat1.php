<?php
include("ses.php");
include("../config.php");
$user = $_SESSION['user'];
if (isset($_GET['ty']) == false) {
    die();
}
$ty = sqlint($_GET['ty']);
if ($ty != 0 && $ty != 1) {
    die();
}
if (isset($_GET['pid']) == false) {
    die();
}
$pid = sqlint($_GET['pid']);
$sql = "select * from kala where id=$pid and `user`='$user'";
if ($ty == 1) {
    $sql = "select * from khadamat where id=$pid and `user`='$user'";
}
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$back = "showaghsat.php";
if (isset($_POST['price1']) == false) {
    msgb("لطفا قیمت ابتدای بازه را وارد کنید.");
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
$sql = "insert into aghsat (`price1`,`price2`,`month1`,`month2`,`Pid`,`ty`) VALUES ($price1,$price2,$month1,$month2,$pid,$ty)";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("درج با موفقیت انجام شد.", $back);
    die();
} else {
    msg("خطا در انجام عملیات!", $back);
    die();
}
?>