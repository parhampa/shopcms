<?php
include("ses.php");
include("../config.php");
$back = "addsenf.php";
$statusMsg = '';
if (isset($_POST['Senfname']) && $_FILES['file1']['name'] != "") {
    $Senfname = sqlstr($_POST['Senfname']);
    if ($Senfname != "") {
        if (isset($_POST['father'])) {
            $father = $_POST['father'];
            $father = sqlint($father);
            if ($_FILES["file1"]["size"] <= 8000000) {
                $targetDir = "../uploads/";
                $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES["file1"]["name"];
                $targetFilePath = $targetDir . $fileName;
                $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);
                $allowTypes = array('jpg', 'png', 'jpeg');
                if (isset($_POST['type']) == false) {
                    die();
                }
                if ($_POST['type'] == "") {
                    die();
                }
                $type = sqlint($_POST['type']);
                if (in_array($fileType, $allowTypes)) {
                    move_uploaded_file($_FILES["file1"]["tmp_name"], $targetFilePath);
                    $sql = "insert into asnaf (`title` , `pic` , `father` , `type`) value ('$Senfname' , '$targetFilePath' , '$father' , '$type')";
                    $result = mysqli_query($connection, $sql);
                    mysqli_close($connection);
                    if ($result == true) {
                        $statusMsg = "صنف با موفقیت ثبت شد.";
                        msg($statusMsg, $back);
                        die();
                    }

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
        } else {
            $message = "لطفا دسته پدر را انتخاب کنید.";
            msgb($message);
            die();
        }
    } else {
        $message = "لطفا فیلد عنوان صنف را وارد کنید.";
        msgb($message);
        die();
    }
} else {
    $message = "لطفا عکس خود را انتخاب کنید.";
    msgb($message);
    die();
}
?>