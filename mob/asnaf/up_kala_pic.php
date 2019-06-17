<?php
header('Access-Control-Allow-Origin: *');
header("Pragma-directive: no-cache");
header("Cache-directive: no-cache");
header("Cache-control: no-cache");
header("Pragma: no-cache");
header("Expires: 0");
include("../../config.php");
if(isset($_POST['user'])==false)
{
	die("1");
}
if($_POST['user']=="")
{
	die("2");
}
$user=sqlstr($_POST['user']);
if(isset($_POST['pass'])==false)
{
	die("3");
}
if($_POST['pass']=="")
{
	die("4");
}
$pass=sqlstr($_POST['pass']);
if(isset($_POST['kid'])==false)
{
	die("5");
}
if($_POST['kid']=="")
{
	die("6");
}
$kid=sqlint($_POST['kid']);
$sql="select * from users where `user`='$user' and `pass`='$pass'";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)<=0)
{
	die("7");
}
$sql="select * from kala where id = $kid and `user`='$user'";
$res=mysqli_query($connection,$sql);
if(mysqli_num_rows($res)<=0)
{
	die("8");
}
if(isset($_POST['fi'])==true)
{
	if($_POST['fi']==0)
	{
		if(file_exists($user."khedmatpic.tmp")==1)
		{
			unlink($user."kalapic.tmp");
		}
		if(file_exists($user."khedmatpic.jpg")==1)
		{
			unlink($user."kalapic.jpg");
		}
	}
}
function base64ToImage($base64_string, $output_file,$user,$kid,$connection) {
	$myfile = fopen($base64_string, "r") or die("Unable to open file!");
	$bs64f=fread($myfile,filesize($user."kalapic.tmp"));
	fclose($myfile);
	//unlink($base64_string);
	if(file_exists($output_file)==1)
	{
		unlink($output_file);
	}
	$base64_string=$bs64f;
    $file = fopen($output_file, "wb");

    $data = explode(',', $base64_string);

    fwrite($file, base64_decode($data[1]));
    fclose($file);
	unlink($user."kalapic.tmp");
	$newname=md5(date("Y-m-d-h-i-sa")).$output_file;
	$newpath="../../uploads/".$newname;
	copy($output_file,$newpath);
	unlink($output_file);
	$pic=str_replace("../../","",$newpath);
	$sql="update kala set `pic`='$pic' where `id`=$kid";
	$res=mysqli_query($connection,$sql);
	echo($pic);
    return $output_file;
}
function apfile($data,$user)
{
	$my_file = $user."kalapic.tmp";
	$handle = fopen($my_file, 'a') or die('Cannot open file:  '.$my_file);
	fwrite($handle, $data);
	fclose($handle);
}
if(isset($_POST['pic'])==true)
{
	if($_POST['pic']!="")
	{
		echo($_POST['pic']);
		apfile($_POST['pic'],$user);
		//base64ToImage($_POST['pic'], "test.jpg");
	}
}
if(isset($_GET['last'])==true)
{
	base64ToImage($user."kalapic.tmp", $user."kalapic.jpg",$user,$kid,$connection);
}
?>