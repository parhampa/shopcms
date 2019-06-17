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
if(isset($_GET['user'])==false)
{
	msgdie("1");
}
if($_GET['user']=="")
{
	msgdie("1");
}
if(isset($_GET['pass'])==false)
{
	msgdie("2");
}
if($_GET['pass']=="")
{
	msgdie("2");
}
$user=sqlstr($_GET['user']);
$pass=sqlstr($_GET['pass']);
$sql="select * from users where `user`='$user' and `pass`='$pass'";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0)
{
	msgdie("3");
}
if(isset($_GET['id'])==false)
{
	die();
}
if($_GET['id']=="")
{
	die();
}
$id=sqlint($_GET['id']);
$sql="select * from kala where `user`='$user' and id=$id";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0)
{
	die();
}
$fild=mysqli_fetch_assoc($res);
?>{"id":"<?php echo($fild['id']); ?>","title":"<?php echo($fild['title']); ?>","brand":"<?php echo($fild['brand']); ?>","describ":"<?php echo($fild['describ']); ?>","model":"<?php echo($fild['model']); ?>","price":"<?php echo($fild['price']); ?>","pic":"<?php echo($fild['pic']); ?>"}