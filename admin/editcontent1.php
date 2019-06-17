<?php
include("ses.php");
include("../config.php");
if ($_GET['id'] == false) {
    die();
}
$id = sqlint($_GET['id']);

if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان مطلب را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان مطلب را وارد نمایید.");
    die();
}

if (isset($_POST['short_content']) == false) {
    msgb("لطفا خلاصه مطلب را وارد نمایید.");
    die();
}
$short_content = sqlstr($_POST['short_content']);
if ($short_content == "") {
    msgb("لطفا خلاصه مطلب را وارد نمایید.");
    die();
}
if (isset($_POST['long_content']) == false) {
    msgb("لطفا متن کامل مطلب را وارد نمایید.");
    die();
}
$long_content = sqlstr($_POST['long_content']);
if ($long_content == "") {
    msgb("لطفا متن کامل مطلب را وارد نمایید.");
    die();
}
$keywords = "";
if (isset($_POST['keywords']) == true) {
    $keywords = sqlstr($_POST['keywords']);
}
$targetFilePath = "";
if ($_FILES['pic']['name'] != "") {
    if ($_FILES['pic']['size'] > 2100000) {
        msgb("حداکثر حجم ممکن برای لوگو 2 مگابایت می باشد.");
        die();
    }
    $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
    if (in_array($_FILES['pic']['type'], $allowTypes)) {
        $targetDir = "../uploads/";
        $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES["pic"]["name"];
        $targetFilePath = $targetDir . $fileName;
        move_uploaded_file($_FILES['pic']['tmp_name'], $targetFilePath);
    } else {
        msgb("فرمت لوگوی ارسالی پشتیبانی نمی شود.");
        die();
    }
}
$pic = $picq = "";
$pic = $targetFilePath;
if ($pic != "") {
    $picq = ",`pic` = '$pic'";
}
if (isset($_POST['category']) == false) {
    msgb("لطفا دسته بندی مطلب را وارد نمایید.");
    die();
}
$category = sqlint($_POST['category']);
if ($category == "") {
    msgb("لطفا دسته بندی مطلب را وارد نمایید.");
    die();
}
$timezone = date_default_timezone_set('Asia/Tehran');
$tarikh = date("Y-m-d");
$sql = "select * from content_cat where id=$category";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msgb("این دسته بندی وجود ندارد.");
    die();
}
$fild = mysqli_fetch_assoc($res);
$sql = "update content set `title`='$title',`short_content`='$short_content',`long_content`='$long_content',
         `tarikh`='$tarikh',`keywords`='$keywords',`category`=$category $picq  where id = $id ";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("ویرایش به درستی صورت گرفت.", "showcontent.php");
}


?>