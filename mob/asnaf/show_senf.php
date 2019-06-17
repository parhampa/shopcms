<?php
header('Access-Control-Allow-Origin: *');
header("Pragma-directive: no-cache");
header("Cache-directive: no-cache");
header("Cache-control: no-cache");
header("Pragma: no-cache");
header("Expires: 0");
include("../../config.php");
$sql = "select * from users";
if (isset($_GET['sid']) == true) {
    if ($_GET['sid'] != "") {
        $sid = sqlint($_GET['sid']);
        $sql = "select * from users where `senfid` in 
                (select id from asnaf where id=$sid or `father`=$sid) or `user` in 
                (select `user` from sub_senf where `senfid`=$sid)";
    }
}
$res = mysqli_query($connection, $sql);
?>
{"users":[<?php
$count = 0;
while ($fild = mysqli_fetch_assoc($res)) {
    if ($count > 0) {
        echo(",");
    }
    ?>{"title":"<?php echo($fild['title']); ?>","addres":"<?php echo($fild['addres']); ?>","tel":"<?php echo($fild['tel']); ?>","logo":"<?php echo($fild['logo']); ?>"}<?php
    $count++;
}
?>]}