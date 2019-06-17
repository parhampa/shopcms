<?php
include("ses.php");
include("../config.php");
if(isset($_GET['PAid'])==false){

    die();
}
$PAid = sqlint($_GET['PAid']);
if($PAid == ""){
    die();
}
if(isset($_GET['user'])==false){
    msg("کاربری انتخاب نشده است." , "showusers.php");
    die();
}
$user = sqlstr($_GET['user']);
if($user == ""){
    msg("کاربری انتخاب نشده است." , "showusers.php");
    die();
}
if(isset($_GET['id'])==false){
    die();
}
$id = sqlint($_GET['id']);
if($id == ""){
    die();
}
if(isset($_GET['pg'])==false){
    die();

}
$pg = sqlint($_GET['pg']);
if($pg != 1 && $pg != 0){
    die();
}
$sql = "delete from packrow where id = $id";

$res = mysqli_query($connection,$sql);

if($res && $pg == 0){
    msg("حذف از پکیج با موفقیت انجام شد.","addpackrow.php" . "?user=" .$user ."&lastid=" . $PAid);
    die();
}elseif ($res && $pg == 1){
    msg("حذف از پکیج با موفقیت انجام شد.","editpack.php" . "?user=" .$user ."&id=" . $PAid);
    die();
}
?>