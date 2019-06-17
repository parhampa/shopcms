<?php
include("ses.php");
include("../config.php");
$user = $_SESSION['user'];
if(isset($_GET['id'])==false) {
    die();
}
$id = sqlint($_GET['id']);
if($id == ""){
    die();
}
$title = "";
if(isset($_POST['title'])==false){
    msgb("لطفا فیلد عنوان را پر کنید.");
    die();
}
$title = sqlstr($_POST['title']);
if($title == ""){
    msgb("لطفا فیلد عنوان را پر کنید.");
    die();
}
if(isset($_GET['sum'])==false){
    die();
}
$sum = sqlint($_GET['sum']);
if($sum == ""){
    die();
}
$price = "";
if(isset($_POST['price'])==false){
    msgb("لطفا فیلد قیمت را پر کنید.");
    die();
}
$price = sqlint($_POST['price']);
if ($price == ""){
    msgb("لطفا فیلد قیمت را پر کنید.");
    die();
}
if($price > $sum){
    msgb("مبلغ شما باید از مجموع قیمت،کمتر یا مساوی با آن باشد.");
    die();
}
$pic = "";
$targetFilePath="";
if ($_FILES['pic']['name'] != "") {
    if ($_FILES['pic']['size'] < 5500000) {
        $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
        if (in_array($_FILES['pic']['type'], $allowTypes)) {
            $targetDir = "../uploads/";
            $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES["pic"]["name"];
            $targetFilePath = $targetDir . $fileName;
            move_uploaded_file($_FILES['pic']['tmp_name'], $targetFilePath);

        } else {
            msgb("فرمت تصویر ارسالی پشتیبانی نمی شود.");
            die();
        }
    } else {
        msgb("حجم عکس ارسالی از 5 مگابایت بیشتر می باشد.");
        die();
    }
}
$pic = $targetFilePath;
$picq="";
if($pic != ""){
    $picq = ",`pic`='$pic'";
}
$sql = "update pack set `title`='$title',`price`=$price $picq WHERE id = $id and `user`='$user'";
$res = mysqli_query($connection,$sql);
if ($res){

    msg("ویرایش با موفقیت انجام شد." , "showpackages.php?id=" . $id);
    die();
}else{
    msgb("خطا در انجام عملیات!");
    die();
}
?>