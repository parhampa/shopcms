<?php
include("ses.php");
include("../config.php");
$back="showkala.php";
if (isset($_GET['ty']) == false) {
    die();
}
$ty = sqlint($_GET['ty']);
if ($ty != 0 && $ty != 1) {
    die();
}

if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = $sql = "select * from khadamat where id=$id";
if ($ty == 0) {
    $sql = "select * from kala where id=$id";
}
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$Pid = $id;
$type = $ty;
if(isset($_POST['start_date'])==false)
{
    msgb("لطفا تاریخ شروع را وارد کنید.");
    die();
}
$start_date = sqlstr($_POST['start_date']);
if($start_date == ""){
    msgb("لطفا تاریخ شروع را وارد کنید.");
    die();
}
if(isset($_POST['end_date'])==false)
{
    msgb("لطفا تاریخ پایان را وارد کنید.");
    die();
}
$end_date = sqlstr($_POST['end_date']);

if($end_date == ""){
    msgb("لطفا تاریخ پایان را وارد کنید.");
    die();
}
if(isset($_POST['percent'])==false)
{
    msgb("لطفا درصد را وارد کنید.");
    die();
}
$percent = sqlint($_POST['percent']);

if($percent == ""){
    msgb("لطفا درصد را وارد کنید.");
    die();
}

$sql = "insert into offer_product (`start_date`,`end_date`,`percent`,`Pid`,`type`) 
        VALUES ('$start_date','$end_date',$percent,$Pid,$type)";

$res = mysqli_query($connection,$sql);
if($res == true) {
    msg("پیشنهاد ویژه با موفقیت درج شد.", $back);
    die();

}else{
    msgb("اشکال در عملیات درج!");
    die();
}
?>