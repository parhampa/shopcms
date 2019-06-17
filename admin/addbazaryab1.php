<?php
include("ses.php");
include("../config.php");
$back="addbazaryab.php";
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
$password="";
if(isset($_POST['password'])==true)
{
    $password = sqlstr($_POST['password']);
    if($password == ""){
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
$address="";
if(isset($_POST['addres'])==true)
{
    $address = sqlstr($_POST['addres']);
    if($address == "")
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
$sql = "select `user` from bazaryab where `user` = '$username'";
$qr = mysqli_query($connection,$sql);
if(mysqli_num_rows($qr)==0){
    $sql = "insert into bazaryab (`user` , `pass` , `name` , `family` , `mob` , `tel`, `addres`) value ('$username' , '$password' ,  '$fname' , '$family' , '$mobile' , '$tel' , '$address' )";
    $result = mysqli_query($connection,$sql);
	mysqli_close($connection);
    if($result == true) {
        $statusMsg = "بازاریاب با موفقیت ثبت شد.";
        msg($statusMsg, $back);
        die();
    }else{
        $statusMsg = "بازاریاب ثبت نشد.";
        msg($statusMsg, $back);
        die();
    }
}else{
    $statusMsg = "نام کاربری تکراری است.";
    msgb($statusMsg);
    die();
}
?>