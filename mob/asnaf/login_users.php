<?php
header('Access-Control-Allow-Origin: *');
header("Pragma-directive: no-cache");
header("Cache-directive: no-cache");
header("Cache-control: no-cache");
header("Pragma: no-cache");
header("Expires: 0");
include("../../config.php");
if (isset($_GET['user']) == false) {
    ?>
    {"msg":"2"}
    <?php
    die();
}
if (isset($_GET['pass']) == false) {
    ?>
    {"msg":"2"}
    <?php
    die();
}
$user = $_GET['user'];
$user = sqlstr($user);
$pass = $_GET['pass'];
$pass = sqlstr($pass);
if ($user == "" || $pass == "") {
    die();
}
$sql = "select * from users where `user`='$user' and `pass`='$pass'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    ?>
    {"msg":"0"}
    <?php
} else {
    ?>
    {"msg":"1"}
    <?php
}
?>