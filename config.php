<?php
header('Content-Type: text/html; charset=utf-8');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$localhostName = 'localhost';
$username = 'root';
$password = '';
$databaseName = 'divarpezeshki';
$connection = mysqli_connect($localhostName,$username,$password,$databaseName);

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
function msg($pm,$plc){
	?>
	<script>
		alert("<?php echo($pm); ?>");
		location.replace("<?php echo($plc); ?>");
	</script>
	<?php
}
function msgb($pm){
    ?>
    <script>
        alert("<?php echo($pm); ?>");
        window.history.back();
    </script>
    <?php
}
function sqlstr($out)
{
    if (is_array($out) == true) {
        die();
    }
    $out = str_replace("'", "&#" . ord("'") . ";", $out);
    $out = str_replace('"', "&#" . ord('"') . ";", $out);
    $out = str_replace("&", "&#" . ord("&") . ";", $out);
    $out = str_replace("%", "&#" . ord("%") . ";", $out);
    $out = str_replace("(", "&#" . ord("(") . ";", $out);
    $out = str_replace(")", "&#" . ord(")") . ";", $out);
    //$out = str_replace("_", "&#" . ord("_") . ";", $out);
    $out = str_replace('\\', "&#" . ord("\\") . ";", $out);
    $out = str_replace('|', "&#" . ord("|") . ";", $out);
    $out = str_replace('<', "&#" . ord("<") . ";", $out);
    $out = str_replace('>', "&#" . ord(">") . ";", $out);
    return $out;
}

function sqlint($out)
{
    if (is_array($out) == true) {
        die();
    }
    if ($out != null || $out != "") {
        if (is_numeric($out) == false) {
            die();
        } else {
            return $out;
        }
    }
}
header_remove("X-Powered-By");
header_remove("Server");
?>