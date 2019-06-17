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
if($_GET['pass']==false)
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
if(isset($_GET['sid'])==false)
{
	msgdie("4");
}
if($_GET['sid']=="")
{
	msgdie("4");
}
$sid=sqlint($_GET['sid']);
$sql="select * from asnaf where id = $sid";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0)
{
	msgdie("5");
}
$sql="insert into sub_senf (`user`,`senfid`) values ('$user',$sid)";
$res=mysqli_query($connection,$sql);
if($res)
{
	msgdie("0");
}else{
	msgdie("999");
}
?>