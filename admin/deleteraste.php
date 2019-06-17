<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    msgb("لطفا رسته مورد نظر را وارد نمایید");
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from `raste` WHERE `id`=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.","showraste.php");
    die();
} else {
    msgb("اشکال در انجام عملیات");
    die();
}
?>