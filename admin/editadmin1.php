<?php
include("ses.php");
include("../config.php");
$back="showadmin.php";
$statusMsg = '';
if($_GET['user']==false){
    die();
}
$user = sqlstr($_GET['user']);
if(isset($_POST['user'])==true)
{
    $username = $_POST['user'];
    $username=sqlstr($username);
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
    if($email == ""){
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
    $mob = $_POST['mob'];
    $mob = sqlstr($mob);
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
    $tel = $_POST['tel'];
    $tel = sqlstr($tel);
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
	$sql = "update admins set  `name` = '$name' , `family` = '$family' , `email` = '$email' , `mob` = '$mob' , `tel` = '$tel', `addres` = '$addres' where `user` = '$user'";
if($pass!="")
{
	$sql = "update admins set  `pass` = '$pass' , `name` = '$name' , `family` = '$family' , `email` = '$email' , `mob` = '$mob' , `tel` = '$tel', `addres` = '$addres' where `user` = '$user'";
}
$result = mysqli_query($connection,$sql);
if($result == true) {
    $statusMsg = "مدیر با موفقیت ویرایش شد.";
    msg($statusMsg, $back);
    die();
}else{
    $statusMsg = "اشکال در انجام عملیات...";
    msg($statusMsg, $back);
    die();
}
?>