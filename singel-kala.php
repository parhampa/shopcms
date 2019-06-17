<?php
include("config.php");
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
$sql = "select * from kala where id=$id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$fild = mysqli_fetch_assoc($res);
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title><?php echo($fild['title'] . " " . $fild['model']); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.min.css">

    <link rel="stylesheet" href="template/css/foroshga.css">


</head>
<body>

<header>
    <?php
    $user = $fild['user'];
    $sql2 = "select * from users where `user`='$user'";
    $res2 = mysqli_query($connection, $sql2);
    $fild2 = mysqli_fetch_assoc($res2);
    ?>
    <div class="w3-row <?php if ($fild2['header'] == "") { ?>back-head-foroshga-comment<?php } else { ?>background:url(<?php echo($fild2['header']); ?>) center no-repeat #fafafa;<?php } ?>">
        <div class="head-foroshga-opacity-comment">

        </div>
    </div>

    <div class="w3-row">
        <div class="w3-col s12 relative">

            <div class="small-left">
                <?php
                if ($fild2['logo'] != "") {
                    ?>
                    <img src="<?php echo(str_replace("../", "", $fild2['logo'])); ?>"
                         class="w3-image w3-responsive w3-circle logo-foroshga">
                    <?php
                }
                ?>
            </div>
            <div class="w3-hide-large w3-hide-medium btn-list-small">
                <button class="w3-button w3-text-white w3-xlarge" onclick="w3_open()">☰</button>
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
                    <a href="<?php echo($fild2['telegram']); ?>" class="icon-foroshga">
                        <i class="fab fa-telegram-plane"></i>
                    </a>
                    <a href="<?php echo($fild2['instagram']); ?>" class="icon-foroshga">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="<?php echo($fild2['LinkedIn']); ?>" class="icon-foroshga">
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
            <div class="w3-col m5 s12 relative">
                <!--  img offer   -->
                <?php
                $tarikh = date("Y-m-d");
                $sql4 = "select * from offer_product where `type`=0 and `Pid`=$id and `end_date`>=$tarikh order by id desc";
                $res4 = mysqli_query($connection, $sql4);
                $fild4 = mysqli_fetch_assoc($res4);
                if (mysqli_num_rows($res4) > 0) {
                    ?>
                    <div class="offer"><?php echo($fild4['percent']); ?>%</div>
                    <?php
                }
                if ($fild['pic'] != "") {
                    ?>
                    <img src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                         class="w3-image w3-responsive img-kala">
                    <?php
                } else {
                    ?>
                    <img src="template/img/NoPhoto.png"
                         class="w3-image w3-responsive img-kala">
                    <?php
                }
                ?>
            </div>

            <div class="w3-col m6 s12 box-margin">
                <div class="w3-row">
                    <div class="w3-col s12 w3-margin-top box-kala">
                        <h3 class="font-titr text-shadow font-size w3-text-pink">
                            <?php echo($fild['title']); ?>
                        </h3>
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-col s4 w3-margin-top padding-16 box-kala">
                        <span class="font-iran w3-text-gray">
                        <i class="fas fa-check-square w3-text-pink"></i>
                        برند:
                        </span>
                    </div>

                    <div class="w3-col s7 w3-margin-top padding-16 box-kala margin-right-2">
                        <span class="font-iran w3-text-gray">
                        <?php echo($fild['brand']); ?>
                        </span>
                    </div>
                </div>


                <div class="w3-row">
                    <div class="w3-col s4 w3-margin-top padding-16 box-kala">
                        <span class="font-iran w3-text-gray">
                        <i class="fas fa-check-square w3-text-pink"></i>
                        مدل:
                        </span>
                    </div>

                    <div class="w3-col s7 w3-margin-top padding-16 box-kala margin-right-2">
                        <span class="font-iran w3-text-gray">
                        <?php echo($fild['model']); ?>
                        </span>
                    </div>
                </div>




                <?php
                $sql5 = "select * from aghsat where `ty`=0 and `Pid`=$id order by id desc";
                $res5 = mysqli_query($connection, $sql5);
                if (mysqli_num_rows($res5) > 0) {
                    $fild5 = mysqli_fetch_assoc($res5);
                    ?>
                    <div class="w3-row">
                        <div class="w3-col s4 w3-margin-top padding-16 box-kala">
                        <span class="font-iran w3-text-gray">
                        <i class="fas fa-calendar-alt w3-text-pink"></i>
                        بازه قسطی:
                        </span>
                        </div>

                        <div class="w3-col s7 w3-margin-top padding-16 box-kala margin-right-2">
                            <button class="w3-btn w3-green w3-round"> <?php echo($fild5['month1']); ?> ماهه</button>
                            <span class="w3-margin-right w3-margin-left w3-text-gray">تا</span>
                            <button class="w3-btn w3-green w3-round"> <?php echo($fild5['month2']); ?> ماهه</button>
                        </div>
                    </div>


                    <div class="w3-row">
                        <div class="w3-col s4 w3-margin-top padding-16 box-kala">
                        <span class="font-iran w3-text-gray">
                        <i class="fas fa-calendar-alt w3-text-pink"></i>
                        بازه قیمت:
                        </span>
                        </div>

                        <div class="w3-col s7 w3-margin-top padding-16 box-kala margin-right-2">
                            <div class="w3-row">
                                <div class="w3-col s5">
                                    <button class="btn_custumer w3-medium"><?php echo($fild5['price1']); ?>ریال
                                    </button>
                                </div>
                                <div class="w3-col s2 w3-text-gray">
                                    <span class="rang-prace">تا</span>
                                </div>
                                <div class="w3-col s5">
                                    <button class="btn_custumer w3-medium"><?php echo($fild5['price2']); ?>ریال
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>






                <div class="w3-row">
                    <div class="w3-col s12 w3-margin-top padding-16 w3-justify box-kala box-content-kala">
                        <span class="font-iran w3-text-gray">
                            <?php echo($fild['describ']); ?>
                        </span>
                    </div>
                </div>


                <!-- offer -->

                <div class="w3-row">

                    <div class="w3-col m8 s12">
                        <button class="btn_custumer w3-large w3-margin-left w3-green">مشاهده فروشگاه</button>
                    </div>


                    <div class="w3-col m4 12">
                        <span class="khetmat-price">
                            <span>
                                <hr class="off-hr">
                                <?php echo($fild['price']); ?>ریال
                            </span>
                            <?php echo($fild['price'] - (($fild['price'] / 100) * $fild4['percent'])); ?>ریال
                        </span>
                    </div>
                </div>


            </div>
        </div>

        <div class="w3-row">
            <div class="w3-col s12">
                <div class="w3-row w3-container">
                    <div class="w3-col s12 w3-margin-top">
                        <h5 class="font-titr text-shadow w3-text-gray">
                            <i class="fas fa-tasks w3-text-pink"></i>
                            سایر کالا ها این فروشگاه
                        </h5>
                        <hr class="hr-30">
                    </div>

                    <div class="w3-col s12 w3-margin-bottom w3-margin-top w3-container kala-rtl">

                        <div id="owl-demo" class="owl-carousel owl-theme show_slide2">
                            <?php
                            $sql3 = "select * from kala where `user`='$user' order by id desc ";
                            $res3 = mysqli_query($connection, $sql3);
                            while ($fild3 = mysqli_fetch_assoc($res3)) {
                                ?>
                                <div class="item hover-card-m">

                                    <a href="singel-kala.php?id=<?php echo($fild3['id']); ?>">
                                        <div class="box-khetmat-img">
                                            <img class="m-auto w3-image w3-responsive"
                                                 src="<?php if ($fild3['pic'] != "") {
                                                     echo(str_replace("../", "", $fild3['pic']));
                                                 } else {
                                                     ?>
                                                     template/img/Non-photo2.png
                                                     <?php
                                                 } ?>">
                                        </div>
                                        <div>
                                    <span class="font-iran khetmat-description">
                                    <?php echo($fild3['title']); ?>
                                    </span>
                                            <span class="khetmat-price">
                                      <?php echo($fild3['price']); ?> تومان
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

            <div class="w3-col s12">
                <div class="w3-row w3-container">

                    <div class="w3-col s12">
                        <h5 class="font-titr text-shadow w3-text-gray">
                            <i class="fas fa-tasks w3-text-pink"></i>
                            سایر خدمات این فروشگاه
                        </h5>
                        <hr class="hr-30">
                    </div>

                    <div class="w3-col s12 w3-margin-bottom w3-margin-top kala-rtl">

                        <div class="owl-carousel owl-theme show_slide2">

                            <?php
                            $sql3 = "select * from khadamat where `user`='$user' order by id desc ";
                            $res3 = mysqli_query($connection, $sql3);
                            while ($fild3 = mysqli_fetch_assoc($res3)) {
                                ?>
                                <div class="item hover-card-m">

                                    <a href="single-khedmat.php?id=<?php echo($fild3['id']); ?>">
                                        <div class="box-khetmat-img">
                                            <img class="m-auto w3-image w3-responsive"
                                                 src="<?php if ($fild3['pic'] != "") {
                                                     echo(str_replace("../", "", $fild3['pic']));
                                                 } else {
                                                     ?>
                                                     template/img/Non-photo2.png
                                                     <?php
                                                 } ?>">
                                        </div>
                                        <div>
                                    <span class="font-iran khetmat-description">
                                    <?php echo($fild3['title']); ?>
                                    </span>
                                            <span class="khetmat-price">
                                      <?php echo($fild3['price']); ?> تومان
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
        </div>


    </div>
</main>


<?php
include("footer.php");
?>



<script src="template/js/jquery-3.3.1.min.js"></script>
<script src="template/js/slider/owl.carousel.min.js"></script>
<script src="template/js/slider/show_slide.min.js"></script>
<script src="template/js/foroshga.js"></script>


</body>
</html>