<?php
session_start();
if (isset($_SESSION['user']) == false) {
    ?>
    <script>
        location.replace("login.php");
    </script>
    <?php
    die();
}
if (isset($_SESSION['pass']) == false) {
    ?>
    <script>
        location.replace("login.php");
    </script>
    <?php
    die();
}
if (isset($_SESSION['admin']) == false) {
    ?>
    <script>
        location.replace("login.php");
    </script>
    <?php
    die();
}
?>