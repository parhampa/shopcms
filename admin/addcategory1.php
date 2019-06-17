<?php
include("ses.php");
include("../config.php");
$back = "addcategory.php";
$message = '';
if (isset($_POST['name']) == false) {
    $message = "لطفا فیلد عنوان دسته بندی را وارد کنید.";
    msgb($message);
    die();
}
$name = sqlstr($_POST['name']);
if ($name == "") {
    $message = "لطفا فیلد عنوان دسته بندی را وارد کنید.";
    msgb($message);
    die();
}
if (isset($_POST['Fid']) == false) {
    $message = "لطفا دسته بندی پدر را انتخاب کنید.";
    msgb($message);
    die();
}
$Fid = sqlint($_POST['Fid']);
if ($Fid == "") {
    $message = "لطفا دسته بندی پدر را انتخاب کنید.";
    msgb($message);
    die();
}
if (isset($_POST['ty']) == false) {
    die();
}
$ty = sqlint($_POST['ty']);
if ($ty != 0 && $ty != 1) {
    die();
}
$sql = "insert into content_cat (`name` , `Fid`,`ty`) values ('$name' , $Fid , $ty)";
$res = mysqli_query($connection, $sql);
if ($res == true) {
    $statusMsg = "دسته بندی با موفقیت ثبت شد.";
    msg($statusMsg, $back);
    die();
} else {
    $message = "اشکال در درج اطلاعات...";
    msgb($message);
    die();
}