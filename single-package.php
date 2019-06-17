<?php
include("config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sqlp = "select * from pack where id=$id";
$resp = mysqli_query($connection, $sqlp);
if (mysqli_num_rows($resp) == 0) {
    die();
}
$fildp = mysqli_fetch_assoc($resp);
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>مشاده پکیچ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.min.css">

    <link rel="stylesheet" href="template/css/foroshga.css">


</head>
<body>

<header>
    <?php
    $user = $fildp['user'];
    $sql = "select * from users where `user`='$user'";
    $res = mysqli_query($connection, $sql);
    $fild = mysqli_fetch_assoc($res);
    ?>
    <div class="w3-row <?php if ($fild['header']) ?>back-head-foroshga">
        <div class="head-foroshga-opacity padding-top-8">
            <div class="w3-row relative">
                <div class="w3-col s4 m3 l2 w3-light-blue w3-text-gray font-iran title-foroshga font-size-2 padding-8">
                    <span>
                        <a href="foroshgah.php?u=<?php echo($u); ?>">
                             <?php echo($fild['title']); ?>
                        </a>
                    </span>
                </div>
            </div>
            <?php
            if ($fild['introduction'] != "") {
                ?>
                <div class="w3-row relative">
                    <div class="w3-col s5 m4 l3 w3-light-grey w3-text-gray font-iran discript-foroshga font-size-1 padding-16">
                        <span><?php echo($fild['introduction']); ?></span>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
    </div>

    <div class="w3-row">
        <div class="w3-col s12 relative">
            <?php
            if ($fild['logo'] != "") {
                ?>
                <div class="small-left">
                    <img src="<?php echo(str_replace("../", "", $fild['logo'])); ?>"
                         class="w3-image w3-responsive w3-circle logo-foroshga">
                </div>
                <?php
            }
            ?>
            <div class="w3-hide-large w3-hide-medium btn-list-small">
                <button class="w3-button w3-text-white w3-xlarge w3-margin-right" onclick="w3_open()">☰</button>
            </div>

            <div class="topnav-foroshga">
                <div class="w3-hide-small">
                    <a href="index.php" class="nav">صفحه اصلی</a>
                    <a href="festival.php?u=<?php echo($fild['user']); ?>" class="nav">جشنواره</a>
                    <a href="offer.php?u=<?php echo($fild['user']); ?>" class="nav">پیشنهاد جذاب</a>
                    <a href="aghsat.php?u=<?php echo($fild['user']); ?>" class="nav">اقساطینو</a>
                    <a href="pack.php?u=<?php echo($fild['user']); ?>" class="nav">پکیج ها</a>

                </div>

                <div class="left-float">
                    <a href="<?php echo($fild['telegram']); ?>" class="icon-foroshga">
                        <i class="fab fa-telegram-plane"></i>
                    </a>
                    <a href="<?php echo($fild['instagram']); ?>" class="icon-foroshga">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="<?php echo($fild['LinkedIn']); ?>" class="icon-foroshga">
                        <i class="fab fa-linkedin"></i>
                    </a>
                </div>

            </div>
        </div>

        <div class="w3-sidebar w3-bar-block w3-border-right mySidebar" id="mySidebar">
            <button onclick="w3_close()" class="w3-bar-item w3-large w3-right-align"><i
                        class="fas fa-times-circle w3-xlarge"></i>بستن
            </button>
            <div class="topnav-foroshga">
                <div>
                    <a href="index.php" class="nav nav-re">صفحه اصلی</a>
                    <a href="festival.php?u=<?php echo($fild['user']); ?>" class="nav nav-re">جشنواره</a>
                    <a href="offer.php?u=<?php echo($fild['user']); ?>" class="nav nav-re">پیشنهاد جذاب</a>
                    <a href="aghsat.php?u=<?php echo($fild['user']); ?>" class="nav nav-re">اقساطینو</a>
                    <a href="pack.php?u=<?php echo($fild['user']); ?>" class="nav nav-re">پکیج ها</a>
                </div>
            </div>
        </div>

    </div>
</header>

<main>

    <div class="w3-container w3-margin-top">

        <div class="w3-row">

            <div class="w3-col l6 s12">
                <div class="w3-row">
                    <div class="w3-col s12 box-img-every">
                        <?php if ($fildp['pic'] != "") {
                            ?>
                            <img src="<?php echo(str_replace("../", "", $fildp['pic'])); ?>" class="w3-round">
                            <?php
                        } else {
                            ?>
                            <img src="template/img/baner4.jpg" class="w3-round">
                            <?php
                        } ?>


                    </div>

                    <div class="w3-col s12 ">
                        <div class="w3-row">
                            <div class="w3-col s12 w3-margin-top box-kala">
                                <h3 class="font-titr text-shadow font-size w3-text-pink">
                                    <?php echo($fild['title']); ?>
                                </h3>
                            </div>
                        </div>

                        <div class="w3-row">
                            <div class="w3-col s4 w3-margin-top padding-16 box-kala">
                                <span class="font-iran w3-text-gray address-every">
                                    <i class="fas fa-map-marker-alt w3-text-pink"></i>
                                    آدرس:
                                </span>
                            </div>

                            <div class="w3-col s7 w3-margin-top padding-16 box-kala margin-right-2">
                                <span class="font-iran w3-text-gray address-content-every">
                                    <?php echo($fild['addres']); ?>
                                </span>
                            </div>
                        </div>


                        <div class="w3-row">
                            <div class="w3-col s4 w3-margin-top padding-16 box-kala">
                                <span class="font-iran w3-text-gray bold">
                                    <i class="fab fa-telegram-plane w3-text-pink"></i>
                                    تلفن:
                                </span>
                            </div>

                            <div class="w3-col s7 w3-margin-top padding-16 box-kala margin-right-2">
                        <span class="font-yekan w3-text-gray">
                        <?php echo($fild['tel']); ?>
                        </span>
                            </div>
                        </div>


                        <div class="w3-row">
                            <div class="w3-col s12">
                                <a href="foroshgah.php?u=<?php echo($fild['user']); ?>" target="_blank">
                                    <button class="btn_custumer w3-large w3-margin-left w3-green">مشاهده فروشگاه
                                    </button>
                                </a>
                            </div>
                        </div>


                    </div>

                </div>
            </div>


            <div class="w3-col l6 s12 w3-margin-top">
                <div class="w-95 box-radius w3-card-4 m-auto box-factor">
                    <div class="w3-row">
                        <div class="w3-col s12 factor-head">
                            <div class="w3-row w3-center w3-margin-top">
                                <div class="w3-col s1 row-factor">
                                    <span>ردیف</span>
                                </div>

                                <div class="w3-col s4 row-factor">
                                    <span>عنوان کالا/خدمت</span>
                                </div>

                                <div class="w3-col s4 row-factor">
                                    <span>مبلغ</span>
                                </div>

                                <div class="w3-col s3 row-factor">
                                    <span>#</span>
                                </div>
                            </div>
                        </div>
                        <?php
                        $paid = $fildp['id'];
                        $sqlpr = "select * from packrow where PAid=$paid";
                        $respr = mysqli_query($connection, $sqlpr);
                        $count = 0;
                        $sum = 0;
                        while ($fildpr = mysqli_fetch_assoc($respr)) {
                            $count++;
                            ?>
                            <div class="w3-col s12">
                                <div class="w3-row w3-center w3-text-gray w3-margin-top bac-row-factor">
                                    <div class="w3-col s1 row-factor">
                                        <span><?php echo($count); ?></span>
                                    </div>

                                    <div class="w3-col s4 row-factor">
                                        <span><?php
                                            $pid = $fildpr['Pid'];
                                            if ($fildpr['type'] == 0) {
                                                $sqlk = "select * from kala where id=$pid";
                                                $link = "singel-kala.php?id=" . $pid;
                                            } else {
                                                $sqlk = "select * from khadamat where id=$pid";
                                                $link = "single-khedmat.php?id=" . $pid;
                                            }
                                            $resk = mysqli_query($connection, $sqlk);
                                            $fildk = mysqli_fetch_assoc($resk);
                                            echo($fildk['title']);
                                            ?></span>
                                    </div>

                                    <div class="w3-col s4 row-factor">
                                        <span><?php echo($fildk['price']);
                                            $sum += $fildk['price']; ?> ریال</span>
                                    </div>
                                    <a href="<?php echo($link); ?>" target="_blank">
                                        <div class="w3-col s3 row-factor">
                                            <button class="w3-btn w3-green w3-small w3-hover-pink"> مشاهده</button>
                                        </div>
                                    </a>

                                </div>
                            </div>
                        <?php } ?>

                        <div class="w3-col s12">
                            <div class="w3-row w3-center w3-text-gray w3-margin-top factor-footer">
                                <div class="w3-col s1 row-factor">

                                </div>

                                <div class="w3-col s5 row-factor">
                                    جمع مبلغ کل:
                                </div>

                                <div class="w3-col s4 row-factor">
                                    <span class="w3-text-pink price"><?php echo($sum); ?> ریال</span>
                                </div>

                                <div class="w3-col s2 row-factor">

                                </div>
                            </div>
                        </div>

                        <div class="w3-col s12">
                            <div class="w3-row w3-center w3-text-gray">
                                <div class="w3-col s1 row-factor">

                                </div>

                                <div class="w3-col s5 row-factor">
                                    مبلغ قابل پرداخت:
                                </div>

                                <div class="w3-col s4 row-factor">
                                    <span class="w3-text-green price"><?php echo($fildp['price']); ?> ریال</span>
                                </div>

                                <div class="w3-col s2 row-factor">

                                </div>
                            </div>
                        </div>


                    </div>
                </div>


            </div>
        </div>


        <div class="w3-row w3-container">

            <?php
            $u = $fild['user'];
            $sql = "select * from kala where `user`='$u' order by id desc";
            $res = mysqli_query($connection, $sql);
            if (mysqli_num_rows($res) > 0) {
                ?>
                <div class="w3-col s12">
                    <div class="w3-row w3-container">
                        <div class="w3-col s12 w3-margin-top">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-tasks w3-text-pink"></i>
                                کالا های این فروشگاه
                            </h5>
                            <hr class="hr-30">
                        </div>


                        <div class="w3-col s12 w3-margin-bottom w3-margin-top w3-container kala-rtl backLight"
                             style="border-radius: 5px">

                            <div id="owl-demo" class="owl-carousel owl-theme show_slide2">
                                <?php
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    ?>
                                    <div class="item hover-card-m">

                                        <a href="singel-kala.php?id=<?php echo($fild['id']); ?>" target="_blank">
                                            <div class="box-khetmat-img">
                                                <?php
                                                if ($fild['pic'] != "") {
                                                    ?>
                                                    <img class="m-auto w3-image w3-responsive"
                                                         src="<?php echo(str_replace("../", "", $fild['pic'])); ?>">
                                                    <?php
                                                } else {
                                                    ?>
                                                    <img class="m-auto w3-image w3-responsive"
                                                         src="template/img/Non-photo2.png">
                                                    <?php
                                                }
                                                ?>
                                            </div>
                                            <div>
                                    <span class="font-iran khetmat-description">
                                    <?php echo($fild['title']); ?>
                                    </span>
                                                <span class="khetmat-price">
                                      <?php echo($fild['price']); ?>ریال
                                    </span>
                                            </div>
                                        </a>

                                    </div>
                                    <?php
                                }
                                ?>
                            </div>

                        </div>

                    </div>
                </div>
                <?php
            }
            $sql = "select * from khadamat where `user`='$u' order by id desc";
            $res = mysqli_query($connection, $sql);
            if (mysqli_num_rows($res) > 0) {
                ?>
                <div class="w3-col s12">
                    <div class="w3-row w3-container">

                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-tasks w3-text-pink"></i>
                                خدمات این فروشگاه
                            </h5>
                            <hr class="hr-30">
                        </div>

                        <div class="w3-col s12 w3-margin-bottom w3-margin-top kala-rtl backLight"
                             style="border-radius: 5px">

                            <div class="owl-carousel owl-theme show_slide2">

                                <?php
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    ?>
                                    <div class="item hover-card-m">

                                        <a href="single-khedmat.php?id=<?php echo($fild['id']); ?>" target="_blank">
                                            <div class="box-khetmat-img">
                                                <?php
                                                if ($fild['pic'] != "") {
                                                    ?>
                                                    <img class="m-auto w3-image w3-responsive"
                                                         src="<?php echo(str_replace("../", "", $fild['pic'])); ?>">
                                                    <?php
                                                } else {
                                                    ?>
                                                    <img class="m-auto w3-image w3-responsive"
                                                         src="template/img/Non-photo2.png">
                                                    <?php
                                                }
                                                ?>
                                            </div>
                                            <div>
                                    <span class="font-iran khetmat-description">
                                    <?php echo($fild['title']); ?>
                                    </span>
                                                <span class="khetmat-price">
                                      <?php echo($fild['price']); ?>ریال
                                    </span>
                                            </div>
                                        </a>

                                    </div>
                                    <?php
                                }
                                ?>

                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>

        </div>

    </div>
</main>

<?php include("footer.php"); ?>


<script src="template/js/jquery-3.3.1.min.js"></script>
<script src="template/js/slider/owl.carousel.min.js"></script>
<script src="template/js/slider/show_slide.js"></script>
<script src="template/js/foroshga.js"></script>


</body>
</html>