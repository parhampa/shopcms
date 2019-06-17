<?php
include("ses.php");
include("../config.php");
$back = "showcategories.php";
$statusMsg = "";
if (isset($_GET['id']) == false) {
    $message = "دسته بندی شما انتخاب نشده است";
    msgb($message);
    die();
}
$id = sqlint($_GET['id']);
if (isset($_POST["name"]) == false) {
    $message = "لطفا فیلد عنوان دسته بندی را وارد کنید.";
    msgb($message);
    die();
}
$name = sqlstr($_POST["name"]);
if ($name == "") {
    $message = "لطفا فیلد عنوان دسته بندی را وارد کنید.";
    msgb($message);
    die();
}
if (isset($_POST['Fid']) == false) {
    $message = "لطفا دسته پدر را انتخاب کنید.";
    msgb($message);
    die();
}
$Fid = sqlint($_POST['Fid']);
if ($Fid == "") {
    $message = "لطفا دسته پدر را انتخاب کنید.";
    msgb($message);
    die();
}
if (isset($_POST['ty']) == false) {
    die();
}
$ty = sqlint($_POST['ty']);
if ($ty != 0 && $ty != 1) {
    die();
}
$sql = "update content_cat set `ty`=$ty ,`name` = '$name' , `Fid` = $Fid where id = $id";
$res = mysqli_query($connection, $sql);
mysqli_close($connection);
if ($res == true) {
    $statusMsg = "دسته بندی با موفقیت ویرایش شد.";
    msg($statusMsg, $back);
    die();
} else {
    $message = "اشکال در درج اطلاعات...";
    msgb($message);
    die();
}
?>