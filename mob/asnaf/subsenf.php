<?php
header('Access-Control-Allow-Origin: *');
header("Pragma-directive: no-cache");
header("Cache-directive: no-cache");
header("Cache-control: no-cache");
header("Pragma: no-cache");
header("Expires: 0");
include("../../config.php");
$sql = "select * from asnaf where `father`=0";
if (isset($_GET['sid']) == true) {
    $sid = sqlint($_GET['sid']);
    $sql = "select * from asnaf where `father`=$sid";
}
$res = mysqli_query($connection, $sql);
$count = 0;
?>
{"asnaf":[<?php
while ($fild = mysqli_fetch_assoc($res)) {
    if ($count > 0) {
        echo(",");
    }
    ?>{"id":"<?php echo($fild['id']); ?>","title":"<?php echo($fild['title']); ?>","pic":"<?php echo($fild['pic']); ?>"}<?php
    $count++;
}
?>]}