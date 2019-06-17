<?php
include("config.php");
if (isset($_GET['ty']) == false) {
    die();
}
$ty=sqlint($_GET['ty']);
if (isset($_GET['li']) == false) {
    die();
}
$li = sqlint($_GET['li']);
$li = ($li - 1) * 12;
$fatherq = "";
if (isset($_GET['fa']) == true) {
    $fa = sqlint($_GET['fa']);
    $fatherq = " and senfid=$fa ";
    if (isset($_GET['ra']) == true) {
        $ra = sqlint($_GET['ra']);
        $fatherq = $fatherq . " and `user` in (select `user` from sub_senf where senfid=$ra)";
    }
}
$sql = "select * from `users` where senfid in(select id from asnaf where `type`=$ty ) $fatherq limit $li,12";
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    ?>
    <div class="w3-col l6 m10 s12 margin-bottom-2 margin-mdum">

        <div class="w3-card-2 box-list-asnaf hover-card">

            <div class="w3-row">
                <div class="w3-col s5">
                    <?php
                    if ($fild['logo'] != "") {
                        ?>
                        <img src="<?php echo(str_replace("../", "", $fild['logo'])); ?>"
                             class="w3-image w3-responsive w3-circle box-asnaf-img">
                        <?php
                    } else {
                        ?>
                        <img src="no-image.png"
                             class="w3-image w3-responsive w3-circle box-asnaf-img">
                        <?php
                    }
                    ?>
                </div>
                <div class="w3-col s7 font-size-1 margin-top-5">

                    <div class="w3-row w3-margin-top">
                        <div class="w3-col s5">
                            <span class="font-titr">نام فروشگاه:</span>
                        </div>
                        <div class="w3-col s6">
                            <span class="font-iran box-asnaf-title"><?php echo($fild['title']); ?></span>
                        </div>
                    </div>

                    <div class="w3-row w3-margin-top w3-margin-bottom">
                        <div class="w3-col s3">
                            <span class="font-titr">آدرس:</span>
                        </div>
                        <div class="w3-col s9 box-asnaf-address">
                                            <span class="font-iran">
                                               <?php echo($fild['addres']); ?>
                                            </span>
                        </div>
                    </div>

                    <div class="w3-row w3-margin-top">
                        <div class="w3-col s5">
                            <span class="font-titr">تلفن:</span>
                        </div>
                        <div class="w3-col s6">
                            <span class="font-yekan box-asnaf-tel"><?php echo($fild['tel']); ?></span>
                        </div>
                    </div>

                </div>
                <div class="w3-col m12 btn-asnaf-re">
                    <a href="foroshgah.php?u=<?php echo($fild['user']); ?>" target="_blank">
                    <button class="w3-button w3-border w3-hover-green w3-pink box-asnaf-btn"><i
                                class="fas fa-shopping-cart"></i>مشاهده
                    </button>
                    </a>
                </div>
            </div>

        </div>

    </div>
    <?php
}
?>