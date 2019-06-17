<?php
include("ses.php");
include("../config.php");
if (isset($_GET['catid']) == false) {
    die();
}
$cat_id = sqlint($_GET['catid']);
$sql = "select * from `item_string` where `cat_id`=$cat_id and `big_text`=1 ORDER by `order_string` DESC ";
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    ?>
    <div class="form-group">
        <label for="bigtxt<?php echo($fild['id']); ?>"><?php echo($fild['title']); ?></label>
        <textarea class="form-control" id="bigtxt<?php echo($fild['id']); ?>" name="bigtxt<?php echo($fild['id']); ?>"></textarea>
    </div>
    <?php
}
?>