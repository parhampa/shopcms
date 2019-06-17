<?php
include("ses.php");
include("../config.php");
$back = "additemmenu.php";
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان آیتم را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان آیتم را وارد نمایید.");
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
    msgb("لطفا لینک آیتم را وارد نمایید");
    die();
}
$link = sqlstr($_POST['link']);
if ($link == "") {
    msgb("لطفا لینک آیتم را وارد نمایید");
    die();
}
$logo = "";
if ($_FILES['logo']['name'] != "") {
    if ($_FILES['logo']['size'] < 5500000) {
        $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
        if (in_array($_FILES['logo']['type'], $allowTypes)) {
            $targetDir = "../uploads/";
            $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES['logo']['name'];
            $targetFilePath = $targetDir . $fileName;
            move_uploaded_file($_FILES['logo']['tmp_name'], $targetFilePath);
            $logo = $targetFilePath;
        } else {
            msgb("فرمت تصویر ارسالی پشتیبانی نمی شود.");
            die();
        }
    } else {
        msgb("حجم عکس ارسالی از 5 مگابایت بیشتر می باشد.");
        die();
    }
}

$sql = "insert into item_menu (`title`,`link`,`order_s`,`logo`)
VALUES ('$title','$link',$order_s,'$logo')";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", $back);
    die();
} else {
    msgb("اشکال در درج اطلاعات.");
    die();
}
?>