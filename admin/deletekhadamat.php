<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "delete from khadamat where `id`=$id";
$res = mysqli_query($connection, $sql);
if ($res) {
    ?>
    <script>
        alert("عملیات با موفقیت انجام شد.");
        location.replace("showkhadamat.php");
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