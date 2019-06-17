<?php
include("ses.php");
$user=$_SESSION['user'];
include("../config.php");
$id = sqlint($_GET['id']);
$sql = "delete from khadamat where id = $id and `user`='$user'";
$res = mysqli_query($connection, $sql);
if ($res) {
    ?>
    <script>
        alert("عملیات با موفقیت انجام شد.");
        location.replace("showMykhadamat.php");
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