<?php
include("config.php");
$logo = $header = "";
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
$mob =sqlstr($_POST['mob']);
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
$addres = sqlstr($_POST['addres']);
if ($addres == "") {
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
    $mob2 = sqlstr($mob2);
}
$tel2 = "";
if (isset($_POST['tel2']) == true) {
    $tel2 = sqlstr($tel2);
}

if (isset($_POST['senfid']) == false) {
    msgb("لطفا رسته شغلی را وارد نمایید.");
    die();
}

$senfid = sqlint($_POST['senfid']);
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
VALUES ('$user','$pass','$mob','$mob2','$tel','$tel2','$title','$logo','$header','$addres',$senfid,'$name','$famili','$describ','$u_bazaryab','$introduction','$telegram','$instagram','$linkedIn')";
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
    msg("عملیات درج به درستی صورت گرفت.", "usersregister.php");
}else{
    msg("اشکال در عملیات درج!", "usersregister.php");
}
?>