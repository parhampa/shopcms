<?php
include("ses.php");
include("../config.php");
$back = "showpublicusers.php";
$statusMsg = '';
if ($_GET['user'] == false) {
    die();
}
$user = sqlstr($_GET['user']);
if (isset($_POST['user']) == true) {
    $username = sqlstr($_POST['user']);
    if ($username == "") {
        $statusMsg = "لطفا نام کاربری انتخاب کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا نام کاربری انتخاب کنید.";
    msgb($statusMsg);
    die();
}
$pass = "";
if (isset($_POST['pass']) == true) {
    $pass = sqlstr($_POST['pass']);
    if ($pass == "") {
        $statusMsg = "لطفا فیلد رمز عبور را پر کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا فیلد رمز عبور را پر کنید.";
    msgb($statusMsg);
    die();
}
$name = "";
if (isset($_POST['name']) == true) {
    $name = sqlstr($_POST['name']);
    if ($name == "") {
        $statusMsg = "لطفا فیلد نام را پر کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا فیلد نام را پر کنید.";
    msgb($statusMsg);
    die();
}
$family = "";
if (isset($_POST['family']) == true) {
    $family = sqlstr($_POST['family']);
    if ($family == "") {
        $statusMsg = "لطفا فیلد نام خانوادگی را پر کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا فیلد نام خانوادگی را پر کنید.";
    msgb($statusMsg);
    die();
}
$email = "";
if (isset($_POST['email']) == true) {
    $email = sqlstr($_POST['email']);
    if ($family == "") {
        $statusMsg = "لطفا فیلد ایمیل را پر کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا فیلد ایمیل را پر کنید.";
    msgb($statusMsg);
    die();
}
$mob = "";
if (isset($_POST['mob']) == true) {
    $mob = sqlstr($_POST['mob']);
    if ($mob != "") {
        if (is_numeric($mob) == false || strlen($mob) != 11) {
            $statusMsg = "شماره موبایل اشتباه است.";
            msgb($statusMsg);
            die();
        }
    } else {
        $statusMsg = "لطفا فیلد شماره همراه را پر کنید.";
        msgb($statusMsg);
        die();
    }

} else {
    $statusMsg = "لطفا فیلد شماره همراه را پر کنید.";
    msgb($statusMsg);
    die();
}
$tel = "";
if (isset($_POST['tel']) == true) {
    $tel = sqlstr($_POST['tel']);
    if ($tel == "") {
        $statusMsg = "لطفا فیلد شماره ثابت را پر کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا فیلد شماره ثابت را پر کنید.";
    msgb($statusMsg);
    die();
}
$addres = "";
if (isset($_POST['addres']) == true) {
    $addres = sqlstr($_POST['addres']);
    if ($addres == "") {
        $statusMsg = "لطفا فیلد آدرس را پر کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا فیلد آدرس را پر کنید.";
    msgb($statusMsg);
    die();
}
$postal_code = "";
if (isset($_POST['postal_code']) == true) {
    $postal_code = sqlstr($_POST['postal_code']);
    if ($postal_code == "") {
        $statusMsg = "لطفا فیلد آدرس را پر کنید.";
        msgb($statusMsg);
        die();
    }
} else {
    $statusMsg = "لطفا فیلد آدرس را پر کنید.";
    msgb($statusMsg);
    die();
}
$sql = "update public_user set  `pass` = '$pass' , `name` = '$name' , `family` = '$family' , `email` = '$email' , `mob` = '$mob' , `tel` = '$tel', `addres` = '$addres' , `postal_code`='$postal_code' where `user` = '$user'";
$result = mysqli_query($connection, $sql);
mysqli_close($connection);
if ($result == true) {
    $statusMsg = "ویررایش با موفقیت انجام شد.";
    msg($statusMsg, $back);
    die();
} else {
    $statusMsg = "اشکال در انجام عملیات...";
    msg($statusMsg, $back);
    die();
}

?>