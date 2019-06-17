<?php
include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    msg("کاربری انتخاب نشده است.", "showusers.php");
    die();
}
$user = sqlstr($_GET['user']);
$sql = "Select * from users where `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msg("نام کاربری یافت نشد.", "showusers.php");
    die();
}
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
if (isset($_GET['ty']) == false) {
    die();
}
$ty = sqlint($_GET['ty']);
if ($ty != 0 && $ty != 1) {
    die();
}
$sql = "select * from `kala` where `id`=$id and `user`='$user'";
if ($ty = 1) {
    $sql = "select * from `khadamat` where `id`=$id and `user`='$user'";
}
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$pic = "";
if ($_FILES['pic']['name'] != "") {
    if ($_FILES['pic']['size'] < 5500000) {
        $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
        if (in_array($_FILES['pic']['type'], $allowTypes)) {
            $targetDir = "../uploads/";
            $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES["pic"]["name"];
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
$pic = str_replace("../", "", $pic);
if ($pic != "") {
    $sql = "insert into `post_pic` (`user`,`pid`,`url`,`ty`) VALUES ('$user',$id,'$pic',$ty)";
    $res = mysqli_query($connection, $sql);
}
?>