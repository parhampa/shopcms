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
$filter = "";
if (isset($_GET['u']) == true) {
    if ($_GET['u'] != "") {
        $u = sqlstr($_GET['u']);
        $filter = " where `user`='$u' ";
    }
}
$sql = "select * from pack $filter order by id desc limit $mor,12";
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    ?>
    <div class="w3-col l3 m6 s12 w3-margin-bottom">
        <div class="w3-card hover-card-m m-auto w-95 box-radius box-every">
            <a href="single-package.php?id=<?php echo($fild['id']); ?>" target="_blank">
                <div class="box-img-return">
                    <?php
                    if ($fild['pic'] != "") {
                        ?>
                        <img class="m-auto w3-image w3-responsive"
                             src="<?php echo(str_replace("../", "", $fild['pic'])); ?>">
                        <?php
                    } else {
                        ?>
                        <img class="m-auto w3-image w3-responsive"
                             src="template/img/nonpic.png">
                        <?php
                    }
                    ?>
                    <div class="sub-button">
                        <button class="button">مشاهده</button>
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-col s12">
                                            <span class="font-iran khetmat-description text-shadow">
                                                   <?php echo($fild['title']); ?>
                                            </span>
                        <hr class="hr-60">
                    </div>


                    <div class="w3-col s12 w3-margin-top">
                        <div class="w3-row w3-container">
                            <div class="w3-col s7 w3-center padding-top-3">
                                <span class="font-iran"> تعداد کالا:</span>
                            </div>
                            <div class="w3-col s5">
                                <button class="w3-btn w3-green w3-round-medium"><?php
                                    $paid = $fild['id'];
                                    $sql2 = "select * from packrow where PAid=$paid and type=0";
                                    $res2 = mysqli_query($connection, $sql2);
                                    echo(mysqli_num_rows($res2));
                                    ?></button>
                            </div>
                        </div>
                    </div>

                    <div class="w3-col s12 w3-margin-top">
                        <div class="w3-row w3-container">
                            <div class="w3-col s7 w3-center padding-top-3">
                                <span class="font-iran">تعداد خدمات:</span>
                            </div>
                            <div class="w3-col s5">
                                <button class="w3-btn w3-green w3-round-medium"><?php
                                    $paid = $fild['id'];
                                    $sql2 = "select * from packrow where PAid=$paid and type=1";
                                    $res2 = mysqli_query($connection, $sql2);
                                    echo(mysqli_num_rows($res2));
                                    ?></button>
                            </div>
                        </div>
                    </div>

                    <div class="w3-col s12 w3-margin-top">
                        <div class="w3-row w3-container">
                            <div class="w3-col s7 w3-center padding-top-3">
                                <span class="font-iran">جمع مبلغ کل:</span>
                            </div>
                            <div class="w3-col s5">
                                <span class="w3-text-pink w3-center">
                                      <?php
                                      $sql2 = "select sum(price) as prc from kala where id in(select Pid from packrow where PAid=$paid and type=0)";
                                      $res2 = mysqli_query($connection, $sql2);
                                      $fild2 = mysqli_fetch_assoc($res2);
                                      $prc1 = $fild2['prc'];
                                      $sql2 = "select sum(price) as prc from khadamat where id in(select Pid from packrow where PAid=$paid and type=1)";
                                      $res2 = mysqli_query($connection, $sql2);
                                      $fild2 = mysqli_fetch_assoc($res2);
                                      $prc2 = $fild2['prc'];
                                      echo($prc1 + $prc2);
                                      ?> ریال</span>
                            </div>
                        </div>
                    </div>

                    <div class="w3-col s12 w3-margin-top">
                        <div class="w3-row w3-container">
                            <div class="w3-col s7 w3-center padding-top-3">
                                <span class="font-iran">مبلغ قابل پرداخت:</span>
                            </div>
                            <div class="w3-col s5">
                                <span class="w3-text-pink w3-center"><?php echo($fild['price']); ?> ریال</span>
                            </div>
                        </div>
                    </div>

                </div>
            </a>
        </div>

    </div>
<?php } ?>