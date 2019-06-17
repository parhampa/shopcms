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
if(isset($_POST['user'])==false)
{
	msgdie("1");
}
if($_POST['user']=="")
{
	msgdie("1");
}
$user=sqlstr($_POST['user']);
if(isset($_POST['pass'])==false)
{
	msgdie("2");
}
if($_POST['pass']=="")
{
	msgdie("2");
}
$pass=sqlstr($_POST['pass']);
$sql="select * from users where `user`='$user' and `pass`='$pass'";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0)
{
	msgdie("3");
}
if(isset($_POST['title'])==false)
{
	msgdie("4");
}
if($_POST['title']=="")
{
	msgdie("4");
}
$title=sqlstr($_POST['title']);
if(isset($_POST['price'])==false)
{
	msgdie("5");
}
$price=sqlint($_POST['price']);
$discrib="";
if(isset($_POST['discrib'])==true)
{
	$discrib=sqlstr($_POST['discrib']);
}

$tarikh=date("Y-m-d");
$sql="insert khadamat (`title`,`price`,`discrib`,`user`,`tarikh`)
				values('$title','$price','$discrib','$user','$tarikh')";
$res=mysqli_query($connection,$sql);
if($res)
{
	msgdie("0");
}
else{
	msgdie("999");
}
?>