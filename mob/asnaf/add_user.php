<?php
header('Access-Control-Allow-Origin: *');
header("Pragma-directive: no-cache");
header("Cache-directive: no-cache");
header("Cache-control: no-cache");
header("Pragma: no-cache");
header("Expires: 0");
include("../../config.php");
function msgdie($errdie)
{
    ?>
    {"msg":"<?php echo($errdie); ?>"}
    <?php
    die();
}

if (isset($_POST['user']) == false) {
    msgdie("1");
}
if ($_POST['user'] == "") {
    msgdie("1");
}
$user = sqlstr($_POST['user']);
$sql = "select * from users where `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) > 0) {
    msgdie("2");
}
if (isset($_POST['pass']) == false) {
    msgdie("3");
}
if ($_POST['pass'] == "") {
    msgdie("3");
}
$pass = sqlstr($_POST['pass']);
if (isset($_POST['mob']) == false) {
    msgdie("4");
}
if ($_POST['mob'] == "") {
    msgdie("4");
}
$mob = sqlstr($_POST['mob']);
$mob2 = "";
if (isset($_POST['mob2']) == true) {
    if ($_POST['mob2'] != "") {
        $mob2 = sqlstr($_POST['mob2']);
    }
}
if (isset($_POST['tel']) == false) {
    msgdie("5");
}
if ($_POST['tel'] == "") {
    msgdie("5");
}
$tel2 = "";
if (isset($_POST['tel2']) == true) {
    if ($_POST['tel2'] != "") {
        $tel2 = $_POST['tel2'];
    }
}
if (isset($_POST['title']) == false) {
    msgdie("6");
}
if ($_POST['title'] == "") {
    msgdie("6");
}
/*$logo = "";
if (isset($_POST['logo']) == true) {
    if ($_POST['logo'] != "") {
        $logo = md5(date("Ymdhsa"));
    }
}*/
if (isset($_POST['addres']) === false) {
    msgdie("7");
}
if ($_POST['addres'] == "") {
    msgdie("7");
}
msgdie($_POST['addres']);
$addres = sqlstr($_POST['addres']);
if (isset($_POST['senfid']) == false) {
    msgdie("8");
}
if ($_POST['senfid'] == "") {
    msgdie("8");
}
$senfid = sqlint($_POST['senfid']);
if (isset($_POST['name']) == false) {
    msgdie("9");
}
if ($_POST['name'] == "") {
    msgdie("9");
}
$name = sqlstr($_POST['name']);
if (isset($_POST['famili']) == false) {
    msgdie("10");
}
if ($_POST['famili'] == "") {
    msgdie("10");
}
$famili = sqlstr($_POST['famili']);
$describ = "";
if (isset($_POST['describ']) == true) {
    if ($_POST['describ'] != "") {
        $describ = sqlstr($_POST['describ']);
    }
}
$u_bazaryab="";
if(isset($_POST['u_bazaryab'])==true)
{
	$u_bazaryab=sqlstr($_POST['u_bazaryab']);
}
$sql="insert into users (`user`,`pass`,`mob`,`mob2`,`tel`,`tel2`,`title`,`addres`,`senfid`,`name`,`famili`,`describ`,`u_bazaryab`)
			values('$user','$pass','$mob','$mob2','$tel','$tel2','$title','$addres',$senfid,'$name','$famili','$describ','$u_bazaryab')";
$res=mysqli_query($connection,$sql);
if($res)
{
	msgdie("0");
}
else
{
	msgdie("999");
}
?>