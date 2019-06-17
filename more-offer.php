<?php
include("config.php");
if (isset($_GET['mor']) == false) {
    die();
}
$mor = sqlint($_GET['mor']);
if ($mor <= 2) {
    $mor = 2;
}
$mor = (($mor - 1) * 12);
$tarikh = date("Y-m-d");
$filter = "";
if (isset($_GET['u']) == true) {
    $u = sqlstr($_GET['u']);
    if ($u != "") {
        $sqltest = "select * from users where `user`='$u'";
        $restest = mysqli_query($connection, $sqltest);
        if (mysqli_num_rows($restest) != 0) {
            if ($filter == "") {
                $filter = "(Pid in (select id from kala where `user`='$u') and `type`=0) or 
                                                (Pid in (select id from khadamat where `user`='$u') and `type`=1)";
            } else {
                $filter = " and (Pid in (select id from kala where `user`='$u') and `type`=0) or 
                                                (Pid in (select id from khadamat where `user`='$u') and `type`=1)";
            }
        }
    }
}
if ($filter != "") {
    $filter = " and " . $filter;
}
$sql = "select * from offer_product where end_date >='$tarikh' $filter order by id desc limit $mor,12";
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    $ty = $fild['type'];
    $pid = $fild['Pid'];
    $sql2 = "select * from khadamat where id=$pid";
    if ($ty == 0) {
        $sql2 = "select * from kala where id=$pid";
    }
    $res2 = mysqli_query($connection, $sql2);
    $fild2 = mysqli_fetch_assoc($res2);
    ?>
    <div class="w3-col l3 m6 s12">
        <div class="w3-card hover-card-m m-auto w-95 box-radius relative">
            <div class="offer">%<?php echo($fild['percent']); ?></div>
            <?php
            if ($ty == 0)
            {
            ?>
            <a href="singel-kala.php?id=<?php echo($pid); ?>" target="_blank">
                <?php
                }
                else {
                ?>
                <a href="single-khedmat.php?id=<?php echo($pid); ?>" target="_blank">
                    <?php
                    }
                    ?>
                    <div class="box-img-return">
                        <?php
                        if ($fild2['pic'] != "") {
                            ?>
                            <img class="m-auto w3-image w3-responsive"
                                 src="<?php echo(str_replace("../", "", $fild2['pic'])); ?>">
                            <?php
                        } else {
                            ?>
                            <img class="m-auto w3-image w3-responsive"
                                 src="template/img/Non-photo2.png">
                            <?php
                        }
                        ?>
                        <div class="sub-button">
                            <?php
                            if ($ty == 0)
                            {
                            ?>
                            <a href="singel-kala.php?id=<?php echo($pid); ?>" target="_blank">
                                <?php
                                }
                                else {
                                ?>
                                <a href="single-khedmat.php?id=<?php echo($pid); ?>" target="_blank">
                                    <?php
                                    }
                                    ?>
                                    <button class="button">مشاهده</button>
                                </a>
                        </div>
                    </div>
                    <div>
                                                <span class="font-iran khetmat-description">
                                                   <?php echo($fild2['title']); ?>
                                                </span>
                        <span class="khetmat-price">
                                                    <span>
                                                        <hr class="off-hr">

                                                        <?php echo($fild2['price']); ?> ریال
                                                    </span>
                                                        <?php
                                                        $newprice = $fild2['price'] - (($fild2['price'] / 100) * $fild['percent']);
                                                        echo($newprice);
                                                        ?> ریال
                                                </span>
                    </div>
                </a>
        </div>
    </div>
    <?php
}
?>