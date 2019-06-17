<?php
$sqlmi = "select * from item_menu order by order_s";
$resmi = mysqli_query($connection, $sqlmi);
while ($fildmi = mysqli_fetch_assoc($resmi)) {
    ?>
    <div class="item">
        <a href="<?php echo($fildmi['link']); ?>" target="_blank">
            <div class="box-item-img">
                <img class="m-auto" src="<?php echo(str_replace("../","",$fildmi['logo'])); ?>">
            </div>
            <p class="item-content">
                <?php echo($fildmi['title']); ?>
            </p>
        </a>
    </div>
    <?php
}
?>