<?php
include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    die();
}
$id = sqlstr($_GET['user']);
$sql = "delete from bazaryab where `user`= '$id'";
$res = mysqli_query($connection, $sql);
if ($res) {
    ?>
    <script>
        alert("عملیات با موفقیت انجام شد.");
        location.replace("showbazaryab.php");
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
