<?php
include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    die();
}
$user = sqlstr($_GET['user']);
$sql = "delete from admins where `user`= '$user'";
$res = mysqli_query($connection, $sql);
if ($res) {
    ?>
    <script>
        alert("عملیات با موفقیت انجام شد.");
        location.replace("showadmin.php");
    </script>
    <?php
    die();
} else {
    ?>
    <script>
        alert("اشکال در انجام عملیات!!!");
        window.history.back();
    </script>
    <?php
}
?>
