<?php
include("ses.php");
include("../config.php");
$back="showbazaryab.php";
$statusMsg = '';
if($_GET['user'] == false){
    die();
}
$user = sqlstr($_GET['user']);
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
$password="";
if(isset($_POST['password'])==true)
{
    $password = sqlstr($_POST['password']);
}
$fname="";
if(isset($_POST['fname'])==true)
{
    $fname = sqlstr($_POST['fname']);
    if($fname == ""){
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
$mobile="";
if(isset($_POST['mobile'])==true)
{
    $mobile = sqlstr($_POST['mobile']);
    if($mobile != "")
    {
        if (is_numeric($mobile) == false  || strlen($mobile)!= 11)
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

$sql = "update bazaryab set `name` = '$fname' , `family` = '$family' , `mob` = '$mobile' , `tel` = '$tel', `addres` = '$addres' where `user` = '$user'";
if($password!="")
{
	$sql = "update bazaryab set `pass` = '$password' , `name` = '$fname' , `family` = '$family' , `mob` = '$mobile' , `tel` = '$tel', `addres` = '$addres' where `user` = '$user'";
}
$result = mysqli_query($connection,$sql);
mysqli_close($connection);
if($result == true) {
    $statusMsg = "بازاریاب با موفقیت ویرایش شد.";
    msg($statusMsg, $back);
    die();
}else{
    $statusMsg = "اشکال در انجام عملیات!";
    msg($statusMsg, $back);
    die();
}
?>