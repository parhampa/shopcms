<?php
include("ses.php");
include("../config.php");
$back = "addkhadamat.php";
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان خدمت را وارد نمایید.");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان خدمت را وارد نمایید.");
    die();
}
if (isset($_POST['price']) == false) {
    msgb("لطفا مبلغ را وارد نمایید");
    die();
}
$price = str_replace(",", "", $_POST['price']);
if (is_numeric($price) == false) {
    msgb("مبلغ وارد شده صحیح نمی باشد.");
    die();
}
$price = sqlint($price);
$discrib = "";
if (isset($_POST['discrib']) == true) {
    $discrib = sqlstr($_POST['discrib']);
}
$pic = "";
/*if ($_FILES['pic']['name'] != "") {
    if ($_FILES['pic']['size'] < 5500000) {
        $allowTypes = array('image/jpg', 'image/png', 'image/jpeg');
        if (in_array($_FILES['pic']['type'], $allowTypes)) {
            $targetDir = "../uploads/";
            $fileName = md5(date("Y-m-d-h-i-sa")) . $_FILES["pic"]["name"];
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
}*/
$tarikh = date("Y-m-d");
if (isset($_GET['user']) == false) {
    msg("کاربری مورد نظر یافت نشد.", "showusers.php");
    die();
}
$user = sqlstr($_GET['user']);
if ($user == "") {
    msg("کاربری مورد نظر یافت نشد.", "showusers.php");
    die();
}
$sql = "select * from users where `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msg("کاربری مورد نظر یافت نشد.", "showusers.php");
    die();
}
if (isset($_POST['cat']) == false) {
    die();
}
$cat_id = sqlint($_POST['cat']);
$sql = "insert into khadamat (`user`,`title`,`discrib`,`price`,`pic`,`tarikh`,`cat_id`)
VALUES ('$user','$title','$discrib','$price','$pic','$tarikh',$cat_id)";
$res = mysqli_query($connection, $sql);
if ($res) {
    $lastid = mysqli_insert_id($connection);
    ////////////////////////add raste
    $sql2 = "select * from `raste`";
    $res2 = mysqli_query($connection, $sql2);
    while ($fild2 = mysqli_fetch_assoc($res2)) {
        $rastefild = "raste" . $fild2['id'];
        if (isset($_POST[$rastefild]) == true) {
            $rid = $fild2['id'];
            $sql3 = "insert into`post_raste` (`pid`,`ty`,`rid`) values($lastid,1,$rid)";
            $res3 = mysqli_query($connection, $sql3);
        }
    }
    ///////////////////////add text
    $sql2 = "select * from `item_string` where `cat_id`=$cat_id and `big_text`=0";
    $res2 = mysqli_query($connection, $sql2);
    while ($fild2 = mysqli_fetch_assoc($res2)) {
        $newval = "txt" . $fild2['id'];
        $val = sqlstr($_POST[$newval]);
        $string_id = $fild2['id'];
        $sql3 = "insert into `post_string` (`pid`,`ty`,`val`,`string_id`) VALUES ($lastid,1,'$val',$string_id)";
        $res3 = mysqli_query($connection, $sql3);
    }
    /////////////////////add bigtext
    $sql2 = "select * from `item_string` where `cat_id`=$cat_id and `big_text`=1";
    $res2 = mysqli_query($connection, $sql2);
    while ($fild2 = mysqli_fetch_assoc($res2)) {
        $newval = "bigtxt" . $fild2['id'];
        $val = trim(sqlstr($_POST[$newval]));
        $string_id = $fild2['id'];
        $sql3 = "insert into `post_string` (`pid`,`ty`,`val`,`string_id`) VALUES ($lastid,1,'$val',$string_id)";
        $res3 = mysqli_query($connection, $sql3);
    }
    ///////////////////add numeric
    $sql2 = "select * from `item_numeric` where `cat_id`=$cat_id";
    $res2 = mysqli_query($connection, $sql2);
    while ($fild2 = mysqli_fetch_assoc($res2)) {
        $newval = "num" . $fild2['id'];
        $val = sqlint($_POST[$newval]);
        $numeric_id = $fild2['id'];
        $sql3 = "insert into `post_numeric` (`pid`,`ty`,`val`,`numeric_id`) VALUES ($lastid,1,$val,$numeric_id)";
        $res3 = mysqli_query($connection, $sql3);
    }
    //////////////////add select
    $sql2 = "select * from `item_select` where `cat_id`=$cat_id";
    $res2 = mysqli_query($connection, $sql2);
    while ($fild2 = mysqli_fetch_assoc($res2)) {
        $newval = "select" . $fild2['id'];
        $val = sqlint($_POST[$newval]);
        $select_id = $fild2['id'];
        $sql3 = "insert into `post_select` (`pid`,`select_id`,`val`,`ty`) VALUES ($lastid,$select_id,$val,1)";
        $res3 = mysqli_query($connection, $sql3);
    }
    msg("عملیات با موفقیت انجام شد.", "addpostpic.php?ty=1&id=" . $lastid . "&user=" . $user);
    die();
} else {
    msgb("اشکال در درج اطلاعات.");
    die();
}
?>