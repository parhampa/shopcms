<?php
include("ses.php");
include("../config.php");
$back="editporfile.php";
$statusMsg = '';
$user = $_SESSION['user'];
if(isset($_POST['user'])==true)
{
    $username=sqlstr($_POST['user']);
    if($username == ""){
        $statusMsg = "لطفا نام کاربری انتخاب کنید.";
        msgb($statusMsg);
        die();
    }
}
else
{
    $statusMsg = "لطفا نام کاربری انتخاب کنید.";
    msgb($statusMsg);
    die();
}
if(isset($_POST['pass'])==true)
{
    $pass = sqlstr($_POST['pass']);
    if($pass == ""){
        $statusMsg = "لطفا فیلد رمز عبور را پر کنید.";
        msgb($statusMsg);
        die();
    }
}
else{
    $statusMsg = "لطفا فیلد رمز عبور را پر کنید.";
    msgb($statusMsg);
    die();
}
if(isset($_POST['name'])==true)
{
    $name = sqlstr($_POST['name']);
    if($name == ""){
        $statusMsg = "لطفا فیلد نام را پر کنید.";
        msgb($statusMsg);
        die();
    }
}
else{
    $statusMsg = "لطفا فیلد نام را پر کنید.";
    msgb($statusMsg);
    die();
}
if(isset($_POST['family'])==true)
{
    $family = sqlstr($_POST['family']);
    if($family == ""){
        $statusMsg = "لطفا فیلد نام خانوادگی را پر کنید.";
        msgb($statusMsg);
        die();
    }
}
else
{
    $statusMsg = "لطفا فیلد نام خانوادگی را پر کنید.";
    msgb($statusMsg);
    die();
}
if(isset($_POST['mob'])==true)
{
    $mob = sqlstr($_POST['mob']);
    if($mob != "")
    {
        if (is_numeric($mob) == false  || strlen($mob)!= 11)
        {
            $statusMsg = "شماره موبایل اشتباه است.";
            msgb($statusMsg);
            die();
        }
    }else
    {
        $statusMsg = "لطفا فیلد شماره همراه را پر کنید.";
        msgb($statusMsg);
        die();
    }

}else{
    $statusMsg = "لطفا فیلد شماره همراه را پر کنید.";
    msgb($statusMsg);
    die();
}
if(isset($_POST['tel'])==true)
{
    $tel = sqlstr($_POST['tel']);
    if($tel == ""){
        $statusMsg = "لطفا فیلد شماره ثابت را پر کنید.";
        msgb($statusMsg);
        die();
    }
}
else{
    $statusMsg = "لطفا فیلد شماره ثابت را پر کنید.";
    msgb($statusMsg);
    die();
}
if(isset($_POST['addres'])==true)
{
    $addres = $_POST['addres'];
    $addres = sqlstr($addres);
    if($addres == "")
    {
        $statusMsg = "لطفا فیلد آدرس را پر کنید.";
        msgb($statusMsg);
        die();
    }
}
else{
    $statusMsg = "لطفا فیلد آدرس را پر کنید.";
    msgb($statusMsg);
    die();
}

$sql = "update bazaryab set `pass` = '$pass' , `name` = '$name' , `family` = '$family' , `mob` = '$mob' , `tel` = '$tel', `addres` = '$addres' where `user` = '$user'";
$result = mysqli_query($connection,$sql);
mysqli_close($connection);
if($result == true) {
    $statusMsg = "ویرایش با موفقیت انجام شد.";
    msg($statusMsg, $back);
    die();
}else{
    $statusMsg = "اشکال در انجام عملیات!";
    msg($statusMsg, $back);
    die();
}

?>