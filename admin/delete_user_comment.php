<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from comment_user where id=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد...", "show_user_comment.php");
} else {
    msg("اشکال در انجام عملیات!!!", "show_user_comment.php");
}
?>