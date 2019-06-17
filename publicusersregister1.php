<?php
include "config.php";
$back = "publicusersregister.php";
if(isset($_POST['user'])==false){
    msgb("لطفا نام کاربری برای خود انتخاب کنید.");
    die();
}
$user = sqlstr($_POST['user']);
if($user == ""){
    msgb("لطفا نام کاربری برای خود انتخاب کنید.");
    die();
}

if(isset($_POST['pass'])==false){
    msgb("لطفا فیلد رمز عبور را پر کنید.");
    die();
}
$pass = sqlstr($_POST['pass']);
if($pass == ""){
    msgb("لطفا فیلد رمز عبور را پر کنید.");
    die();
}
if(isset($_POST['name'])==false){
    msgb("لطفا نام خود را وارد کنید.");
    die();
}
$name = sqlstr($_POST['name']);
if($name == ""){
    msgb("لطفا نام خود را وارد کنید.");
    die();
}
if(isset($_POST['family'])==false){
    msgb("لطفا نام خانوادگی خود را انتخاب کنید.");
    die();
}
$family = sqlstr($_POST['family']);
if($family == ""){
    msgb("لطفا نام خانوادگی خود را انتخاب کنید.");
    die();
}
if(isset($_POST['email'])==false){
    msgb("لطفا فیلد ایمیل را پر کنید.");
    die();
}
$email = sqlstr($_POST['email']);
if($email == ""){
    msgb("لطفا فیلد ایمیل را پر کنید.");
    die();
}
if(isset($_POST['mob'])==false){
    msgb("لطفا فیلد شماره همراه را پر کنید.");
    die();
}
$mob = sqlstr($_POST['mob']);
if($mob == ""){
    msgb("لطفا فیلد شماره همراه را پر کنید.");
    die();
}
if(isset($_POST['tel'])==false){
    msgb("لطفا فیلد تلفن ثابت را پر کنید.");
    die();
}
$tel = sqlstr($_POST['tel']);
if($tel == ""){
    msgb("لطفا فیلد تلفن ثابت را پر کنید.");
    die();
}
if(isset($_POST['addres'])==false){
    msgb("لطفا فیلد آدرس را پر کنید.");
    die();
}
$addres = sqlstr($_POST['addres']);
if($addres == ""){
    msgb("لطفا فیلد آدرس را پر کنید.");
    die();
}
if(isset($_POST['postal_code'])==false){
    msgb("لطفا فیلد کد پستی را پر کنید.");
    die();
}
$postal_code = sqlstr($_POST['postal_code']);
if($postal_code == ""){
    msgb("لطفا فیلد کد پستی را پر کنید.");
    die();
}
$sql = "select `user` from public_user where `user` = '$user'";
$res = mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0){
    $sql1 = "insert into public_user (`user`,`pass`,`name`,`family`,`email`,`mob`,`tel`,`addres`,`postal_code`)
              VALUE ('$user','$pass','$name','$family','$email','$mob','$tel','$addres','$postal_code')";
    $res1 = mysqli_query($connection,$sql1);
    if ($res1){
        msg("درج با موفقیت انجام شد" , $back );
        die();
    }else{
        msg("درج انجام نشد." , $back );
        die();
    }
}else{
    msgb("نام کاربری تکراری است.");
    die();
}


?>

