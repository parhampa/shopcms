<?php
include("ses.php");
include("../config.php");
$back="addadmin.php";
$statusMsg = '';
$username="";
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
$pass="";
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
$name="";
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
$family="";
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
$email="";
if(isset($_POST['email'])==true)
{
    $email = sqlstr($_POST['email']);
    if($family == ""){
        $statusMsg = "لطفا فیلد ایمیل را پر کنید.";
        msgb($statusMsg);
        die();
    }
}
else
{
    $statusMsg = "لطفا فیلد ایمیل را پر کنید.";
    msgb($statusMsg);
    die();
}
$mob="";
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
$tel="";
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
$addres="";
if(isset($_POST['addres'])==true)
{
    $addres = sqlstr($_POST['addres']);
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
$sql = "select `user` from admins where `user` = '$username'";
$qr = mysqli_query($connection,$sql);
if(mysqli_num_rows($qr)==0){
    $sql = "insert into admins (`user` , `pass` , `name` , `family` , `email` , `mob` , `tel`, `addres`) value ('$username' , '$pass' ,  '$name' , '$family' , '$email' , '$mob' , '$tel' , '$addres' )";
    $result = mysqli_query($connection,$sql);
    mysqli_close($connection);
    if($result == true) {
        $statusMsg = "مدیر با موفقیت ثبت شد.";
        msg($statusMsg, $back);
        die();
    }else{
        $statusMsg = "مدیر ثبت نشد.";
        msg($statusMsg, $back);
        die();
    }
}else{
    $statusMsg = "نام کاربری تکراری است.";
    msgb($statusMsg);
    die();
}
?>