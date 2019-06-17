<?php
include("ses.php");
include("../config.php");
if (isset($_GET['catid']) == false) {
    die();
}
$cat_id = sqlint($_GET['catid']);
$sql = "select * from `item_numeric` where `cat_id`=$cat_id ORDER by `order_show` DESC ";
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    ?>
    <div class="form-group">
        <label for="num<?php echo($fild['id']);?>"><?php echo($fild['title']); ?></label>
        <input type="number" class="form-control" id="num<?php echo($fild['id']);?>" name="num<?php echo($fild['id']);?>">
    </div>
    <?php
}
?>