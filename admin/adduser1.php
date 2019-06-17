<?php
include("ses.php");
include("../config.php");
if (isset($_POST['user']) == false) {
    msgb("لطفا نام کاربری را وارد نمایید.");
    die();
}
$user = sqlstr($_POST['user']);
if ($user == "") {
    msgb("لطفا نام کاربری را وارد نمایید.");
    die();
}
$sql = "select * from users where `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) > 0) {
    msgb("این نام کاربری قبلا ثبت شده است.");
    die();
}
if (isset($_POST['pass']) == false) {
    msgb("لطفا کلمه عبور را وارد نمایید.");
    die();
}
$pass = sqlstr($_POST['pass']);
if ($pass == "") {
    msgb("لطفا کلمه عبور را وارد نمایید.");
    die();
}
if (isset($_POST['name']) == false) {
    msgb("لطفا نام را وارد نمایید.");
    die();
}
$name = sqlstr($_POST['name']);
if ($name == "") {
    msgb("لطفا نام را وارد نمایید.");
    die();
}
if (isset($_POST['famili']) == false) {
    msgb("لطفا نام خانوادگی را وارد نمایید.");
    die();
}
$famili = sqlstr($_POST['famili']);
if ($famili == "") {
    msgb("لطفا نام خانوادگی را وارد نمایید.");
    die();
}
if (isset($_POST['mob']) == false) {
    msgb("لطفا شماره تلفن همراه وارد نمایید.");
    die();
}
$mob = sqlstr($_POST['mob']);
if ($mob == "") {
    msgb("لطفا شماره تلفن همراه وارد نمایید.");
    die();
}
if (isset($_POST['tel']) == false) {
    msgb("لطفا شماره تلفن ثابت را وارد نمایید.");
    die();
}
$tel = sqlstr($_POST['tel']);
if ($tel == "") {
    msgb("لطفا شماره تلفن ثابت را وارد نمایید.");
    die();
}
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان فروشگاه را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان فروشگاه را وارد نمایید.");
    die();
}
if (isset($_POST['addres']) == false) {
    msgb("لطفا آدرس را وارد نمایید.");
    die();
}
$address = sqlstr($_POST['addres']);
if ($address == "") {
    msgb("لطفا آدرس را وارد نمایید.");
    die();
}
$u_bazaryab = "";
if (isset($_POST['u_bazaryab']) == true) {
    $u_bazaryab = sqlstr($_POST['u_bazaryab']);
}
$describ = "";
if (isset($_POST['describ']) == true) {
    $describ = sqlstr($_POST['describ']);
}
$introduction = "";
if (isset($_POST['introduction']) == true) {
    $introduction = sqlstr($_POST['introduction']);
}
$telegram = "";
if (isset($_POST['telegram']) == true) {
    $telegram = sqlstr($_POST['telegram']);
}
$instagram = "";
if (isset($_POST['instagram']) == true) {
    $instagram = sqlstr($_POST['instagram']);
}
$linkedIn = "";
if (isset($_POST['linkedIn']) == true) {
    $linkedIn = sqlstr($_POST['linkedIn']);
}
$mob2 = "";
if (isset($_POST['mob2']) == true) {
    $mob2 = sqlstr($_POST['mob2']);
}
$tel2 = "";
if (isset($_POST['tel2']) == true) {
    $tel2 = sqlstr($_POST['tel2']);
}
$targetFilePath = "";
if ($_FILES['logo']['name'] != "") {
    if ($_FILES['logo']['size'] > 2100000) {
        msgb("حداکثر حجم ممکن برای لوگو 2 مگابایت می باشد.");
        die();
    }
    $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
    if (in_array($_FILES['logo']['type'], $allowTypes)) {
        $targetDir = "../uploads/";
        $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES["logo"]["name"];
        $targetFilePath = $targetDir . $fileName;
        move_uploaded_file($_FILES['logo']['tmp_name'], $targetFilePath);
    } else {
        msgb("فرمت لوگوی ارسالی پشتیبانی نمی شود.");
        die();
    }
}
$logo = $targetFilePath;
$targetFilePath1 = "";
if ($_FILES['header1']['name'] != "") {
    if ($_FILES['header1']['size'] > 2100000) {
        msgb("حداکثر حجم ممکن برای سر صفحه 2 مگابایت می باشد.");
        die();
    }
    $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
    if (in_array($_FILES['header1']['type'], $allowTypes)) {
        $targetDir = "../uploads/";
        $fileName = md5(date("Y-m-d-h-i-sa") . "2") . $_FILES["header1"]["name"];
        $targetFilePath1 = $targetDir . $fileName;
        move_uploaded_file($_FILES['header1']['tmp_name'], $targetFilePath1);
    } else {
        msgb("فرمت سر صفحه ارسالی پشتیبانی نمی شود.");
        die();
    }
}
$header = $targetFilePath1;

if (isset($_POST['senfid']) == false) {
    msgb("لطفا رسته شغلی را وارد نمایید.");
    die();
}
$senfid = $_POST['senfid'];
$senfid = sqlint($senfid);
if ($senfid == "") {
    msgb("لطفا رسته شغلی را وارد نمایید.");
    die();
}
$sql = "select * from asnaf where id=$senfid";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msgb("این رسته وجود ندارد.");
    die();
}
$fild = mysqli_fetch_assoc($res);
$father = $fild['id'];

$sql = "insert into users (`user`,`pass`,`mob`,`tel`,`mob2`,`tel2`,`title`,`logo`,`header`,`addres`,`senfid`,`name`,`famili`,`describ`,`u_bazaryab`,`introduction`,`telegram`,`instagram`,`linkedIn`)
VALUES ('$user','$pass','$mob','$tel','$mob2','$tel2','$title','$logo','$header','$address',$senfid,'$name','$famili','$describ','$u_bazaryab','$introduction','$telegram','$instagram','$linkedIn')";
$res = mysqli_query($connection, $sql);
if ($res) {
    $sql = "select * from asnaf where `father`=$father";
    $res = mysqli_query($connection, $sql);
    while ($fild = mysqli_fetch_assoc($res)) {
        $item = "chbtn" . $fild['id'];
        if (isset($_POST[$item]) == true) {
            $subsenf = $fild['id'];
            $sql2 = "insert into sub_senf (`user`,`senfid`) VALUES ('$user',$subsenf)";
            $res2 = mysqli_query($connection, $sql2);
        }
    }
    msg("عملیات درج به درستی صورت گرفت.", "adduser.php");
}
?>