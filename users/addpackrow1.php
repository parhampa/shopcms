<?php
include("ses.php");
include("../config.php");
$user = $_SESSION['user'];
if(isset($_GET['PAid'])==false){

    die();
}
$PAid = sqlint($_GET['PAid']);
if($PAid == ""){
    die();
}
if(isset($_GET['ty'])==false){
    die();
}
$type = sqlint($_GET['ty']);
if($type == ""){
    die();
}
if($type != 1 && $type != 0){
    die();
}
if(isset($_GET['Pid'])==false){

    die();
}
$Pid = sqlint($_GET['Pid']);
if($Pid == ""){
    die();
}
if(isset($_GET['pg'])==false){
    die();

}
$pg = sqlint($_GET['pg']);
if($pg != 1 && $pg != 0){
    die();
}
$sql = "insert into packrow (`Pid`,`user`,`PAid`,`type`)values($Pid,'$user',$PAid,$type)";
$res = mysqli_query($connection,$sql);
if($res && $pg == 0){
    msg("ثبت با موفقیت انجام شد." , "addpackrow.php" . "?lastid=" . $PAid);
    die();
}
elseif($res && $pg == 1){
    msg("ثبت با موفقیت انجام شد." , "editpack.php" . "?id=" . $PAid);
    die();
}


?>