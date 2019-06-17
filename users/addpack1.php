<?php
include("ses.php");
include("../config.php");
$back="addpack.php";
$user = $_SESSION['user'];
if(isset($_POST['title'])==false)
{
    msgb("لطفا عنوان را انتخاب کنید.");
    die();
}
$title=sqlstr($_POST['title']);
if($title == ""){
    msgb("لطفا عنوان را انتخاب کنید.");
    die();
}
$price = "";
if (isset($_POST['price'])==true) {
    $price = sqlint($_POST['price']);
}
$pic = "";
if ($_FILES['pic']['name'] != "") {
    if ($_FILES['pic']['size'] < 5500000) {
        $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
        if (in_array($_FILES['pic']['type'], $allowTypes)) {
            $targetDir = "../uploads/";
            $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES['pic']['name'];
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
$sql = "insert into pack (`user` , `title` , `price` ,`pic`) values ('$user','$title',$price,'$pic')";
$res = mysqli_query($connection,$sql);
if($res) {
    $lastid = mysqli_insert_id($connection);
    msg("پکیج با موفقیت ثبت شد.", "addpackrow.php" . "?lastid=" . $lastid);
    die();
}else{
    msg("پکیج ثبت نشد." , $back);
    die();
}

?>