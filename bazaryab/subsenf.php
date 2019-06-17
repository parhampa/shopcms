<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    die();
}
if ($_GET['id'] == "") {
    die();
}
$id = sqlint($_GET['id']);
$sql = "select * from asnaf where `father`=$id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) > 0) {
    ?>
    <label class="col-md-2"></label>
    <?php
}
$user = "";
if (isset($_GET['user']) == true) {
    if ($_GET['user'] != "") {
        $user = sqlstr($_GET['user']);
        $sql2 = "select * from users where `user`='$user'";
        $res2 = mysqli_query($connection, $sql2);
        if (mysqli_num_rows($res2) == 0) {
            die();
        }
    }
}
while ($fild = mysqli_fetch_assoc($res)) {
    if ($user != "") {
        $senfid = $fild['id'];
        $sql2 = "select * from sub_senf where `user`='$user' and `senfid`=$senfid";
        $res2 = mysqli_query($connection, $sql2);
        $fild2 = mysqli_fetch_assoc($res2);
    }
    ?>
    <div class="custom-control custom-checkbox">
        <input type="checkbox" class="custom-control-input" id="test<?php echo($fild['id']); ?>"
               name="chbtn<?php echo($fild['id']); ?>" <?php if ($user != "") {
            if (mysqli_num_rows($res2) > 0) {
                echo("checked");
            }
        } ?>>
        <label class="custom-control-label" for="test<?php echo($fild['id']); ?>"></label>
    </div>
    <label class="col-md-2" style="margin-right: 10px"><?php echo($fild['title']); ?></label>
    <?php
}
?>