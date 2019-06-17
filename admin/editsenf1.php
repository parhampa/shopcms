<?php
include("ses.php");
include("../config.php");
$back = "showsenf.php";
$statusMsg = "";
$pic = "";
$picq = "";
if (isset($_GET['id']) == false){
    die();
}
$id = sqlint($_GET['id']);
if (isset($_POST['Senfname'])==false) {
    $message = "لطفا فیلد عنوان صنف را وارد کنید.";
    msgb($message);
    die();
}
$Senfname = sqlstr($_POST['Senfname']);
if ($Senfname == "") {
    $message = "لطفا فیلد عنوان صنف را وارد کنید.";
    msgb($message);
    die();
}
if (isset($_POST['father'])==false) {
    $message = "لطفا دسته پدر را انتخاب کنید.";
    msgb($message);
    die();
}
$father = sqlstr($_POST['father']);
if($father == "") {
    $message = "لطفا دسته پدر را انتخاب کنید.";
    msgb($message);
    die();
}
$targetFilePath = "";
if ($_FILES["file1"]["name"] != "") {
    if ($_FILES["file1"]["size"] <= 8000000) {
        $targetDir = "../uploads/";
        $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES["file1"]["name"];
        $targetFilePath = $targetDir . $fileName;
        $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);
        $allowTypes = array('jpg', 'png', 'jpeg');
        if (in_array($fileType, $allowTypes)) {
            move_uploaded_file($_FILES["file1"]["tmp_name"], $targetFilePath);

        } else {
            $statusMsg = "عکس با این پسوند مجاز نیست.";
            msg($statusMsg, $back);
            die();
        }
    } else {
        $statusMsg = "سایز عکس غیر مجاز است.";
        msg($statusMsg, $back);
        die();
    }
}
$pic = $targetFilePath;
//die($pic);
if (isset($_POST['type']) == false) {
    die();
}
if ($_POST['type'] == "") {
    die();
}
$type = sqlint($_POST['type']);

if ($pic != ""){
    $picq = ",`pic` = '" . str_replace("../","",$pic) . "'";
    //die($picq);
}
$sql = "update asnaf set `title` = '$Senfname' , `father` = '$father' , `type` = $type $picq where `id` = $id";
//die($sql);
$result = mysqli_query($connection, $sql);
mysqli_close($connection);
if ($result == true) {
    $statusMsg = "صنف با موفقیت ویرایش شد.";
    msg($statusMsg, $back);
    die();
}
?>