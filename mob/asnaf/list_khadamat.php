<?php
header('Access-Control-Allow-Origin: *');
header("Pragma-directive: no-cache");
header("Cache-directive: no-cache");
header("Cache-control: no-cache");
header("Pragma: no-cache");
header("Expires: 0");
include("../../config.php");
if(isset($_GET['user'])==false)
{
	die();
}
if($_GET['user']=="")
{
	die();
}
$user=sqlstr($_GET['user']);
if(isset($_GET['pass'])==false)
{
	die();
}
if($_GET['pass']=="")
{
	die();
}
$pass=sqlstr($_GET['pass']);
$sql="select * from users where `user`='$user' and `pass`='$pass'";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0)
{
	die();
}
$sql="select * from khadamat where `user`='$user' order by id desc";
$res=mysqli_query($connection,$sql);
?>
{"khadamat":[<?php
$count=0;
while($fild=mysqli_fetch_assoc($res))
{
	if($count>0)
	{
		echo(",");
	}
	?>{"id":"<?php echo($fild['id']); ?>","title":"<?php echo($fild['title']); ?>","price":"<?php echo($fild['price']); ?>","discrib":"<?php echo($fild['discrib']); ?>","pic":"<?php echo($fild['pic']); ?>"}<?php
	$count++;
}
?>]}