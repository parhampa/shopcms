<?php
include("ses.php");
include("../config.php");
if (isset($_POST['title']) == false) {
    msgb("لطفا عنوان رسته را وارد نمایید");
    die();
}
$title = sqlstr($_POST['title']);
if ($title == "") {
    msgb("لطفا عنوان رسته را وارد نمایید");
    die();
}
if (isset($_POST['ra_order']) == false) {
    msgb("لطفا ترتیب رسته را وارد نمایید");
    die();
}
$ra_order = sqlint($_POST['ra_order']);
$sql = "insert into `raste` (`title`,`ra_order`) VALUES ('$title',$ra_order)";
$res = mysqli_query($connection, $sql);
if ($res) {
    msg("عملیات با موفقیت انجام شد.", "addraste.php");
} else {
    msgb("اشکال در انجام عملیات...");
    die();
}
?>