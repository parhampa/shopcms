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
if(isset($_GET['pass'])==false)
{
	die();
}
if($_GET['pass']=="")
{
	die();
}
$user=sqlstr($_GET['user']);
$pass=sqlstr($_GET['pass']);
$sql="select * from bazaryab where `user`='$user' and `pass`='$pass'";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0)
{
	die();
}
$sql="select * from users where `u_bazaryab`='$user'";
$res=mysqli_query($connection,$sql); ?>{"users":[<?php 
$count=0;
while($fild=mysqli_fetch_assoc($res))
{
	if($count > 0){ echo(","); }
	
	?>{"title":"<?php echo($fild['title']); ?>","describ":"<?php echo($fild['describ']); ?>","logo":"<?php echo($fild['logo']); ?>","user":"<?php echo($fild['user']); ?>"}<?php
	$count++;
}
?>]}