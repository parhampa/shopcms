<?php
include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    msg("کاربری انتخاب نشده است.", "showusers.php");
    die();
}
$user = sqlstr($_GET['user']);
$sql = "Select * from users where `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msg("نام کاربری یافت نشد.", "showusers.php");
    die();
}
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "select * from `post_pic` where `id`=$id and `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$fild = mysqli_fetch_assoc($res);
$pid = $fild['pid'];
$ty = $fild['ty'];
$sql = "delete from `post_pic` where `id`=$id and `user`='$user'";
$res = mysqli_query($connection, $sql);
?>
<script>
    location.replace("addpostpic.php?id=<?php echo($pid); ?>&ty=<?php echo($ty); ?>&user=<?php echo($user); ?>");
</script>