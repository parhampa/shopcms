<?php
include("ses.php");
include("../config.php");
if (isset($_GET['catid']) == false) {
    die();
}
$cat_id = sqlint($_GET['catid']);
$sql = "select * from `item_select` where `cat_id`=$cat_id order by `order_select` DESC";
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    ?>
    <div class="form-group">
        <label for="select<?php echo($fild['id']); ?>"><?php echo($fild['title']); ?></label>
        <select class="form-control" id="select<?php echo($fild['id']); ?>" name="select<?php echo($fild['id']); ?>">
            <?php
            $sid = $fild['id'];
            $sql2 = "select * from `item_select_val` where `sid`=$sid";
            $res2 = mysqli_query($connection, $sql2);
            while ($fild2 = mysqli_fetch_assoc($res2)) {
                ?>
                <option value="<?php echo($fild2['id']); ?>"><?php echo($fild2['title']); ?></option>
                <?php
            }
            ?>
        </select>
    </div>
    <?php
}
?>