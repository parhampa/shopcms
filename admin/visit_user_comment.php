<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "select * from comment_user where id=$id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msg("این نظر وجود ندارد...", "show_user_comment.php");
}
$fild = mysqli_fetch_assoc($res);
$sql = "update comment_user set `visit`=0 where id=$id";
if ($fild['visit'] == 0) {
    $sql = "update comment_user set `visit`=1 where id=$id";
}
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد...", "show_user_comment.php");
} else {
    msg("اشکال در انجام عملیات!!!", "show_user_comment.php");
}
?>