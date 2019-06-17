<?php
include("ses.php");
include("../config.php");
$back = "addbanner.php";
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان بنر را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان بنر را وارد نمایید.");
    die();
}
$link = "";
if (isset($_POST['link']) == true) {
    $link = sqlstr($_POST['link']);
}


$pic = "";
if ($_FILES['pic']['name'] != "") {
    if ($_FILES['pic']['size'] < 5500000) {
        $allowTypes = array('image/jpg','image/jpeg');
        if (in_array($_FILES['pic']['type'], $allowTypes)) {
            $targetDir = "../uploads/";
            $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES['pic']['name'];
            $targetFilePath = $targetDir . $fileName;
            move_uploaded_file($_FILES['pic']['tmp_name'], $targetFilePath);
            $pic = $targetFilePath;
        } else {
            msgb("فرمت تصویر ارسالی پشتیبانی نمی شود.");
            die();
        }
    } else {
        msgb("حجم عکس ارسالی از 5 مگابایت بیشتر می باشد.");
        die();
    }
}

$sql = "insert into banner (`title`,`link`,`pic`)
VALUES ('$title','$link','$pic')";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", $back );
    die();
} else {
    msgb("اشکال در درج اطلاعات.");
    die();
}
?>