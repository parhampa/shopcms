<?php
include("config.php");
include("functions/jdf.php");
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>زندگینو</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/main.css">

    <link rel="stylesheet" href="template/css/home.css">


</head>

<body>

<header>
    <div class="w3-row">
        <div class="w3-col m12 back-header">
            <div class="back-header-w">

                <?php include("sitemenu.php"); ?>

                <div class="w3-row w3-center">
                    <div class="w3-col s8 m5 l4 w3-circle logo-header">
                        <img src="template/img/logo1.png" class="w3-image w3-responsive">

                        <div class="w3-row">
                            <hr class="hr-bottom-logo">
                            <h2 class="font-iran color-white font-size">
                                دیگه وقتشه زندگینو بسازی
                            </h2>
                        </div>

                        <div class="w3-row boxicons">
                            <div class="block">
                                <a href="https://t.me/zendeginogroup" target="_blank" title="@zendeginogroup">
                                    <i class="hovicon effect-1 sub-a"><i class="fab fa-telegram-plane icon-header"></i></i>
                                </a>
                            </div>
                            <div class="block">
                                <a href="https://www.instagram.com/zendeginoapp/?hl=en" target="_blank"
                                   title="zendeginoapp">
                                    <i class="hovicon effect-1 sub-a"><i class="fab fa-instagram icon-header"></i></i>
                                </a>
                            </div>
                            <div class="block">
                                <a href="https://www.linkedin.com/in/zendegino-app-881162175/" title="zendegino-app"
                                   target="_blank">
                                    <i class="hovicon effect-1 sub-a"><i class="fab fa-linkedin icon-header"></i></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="w3-row">
                    <div class="w3-col s8 boxitem">

                        <div class="owl-carousel owl-theme show_slide">

                            <?php include("itemmenu.php"); ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<main>
    <div class="w3-row">
        <div class="w3-col s12">
            <div class="slider">
                <div id="carousel">

                    <?php
                    $sql = "select * from slider order by id desc";
                    $res = mysqli_query($connection, $sql);
                    while ($fild = mysqli_fetch_assoc($res)) {
                        ?>
                        <a href="<?php echo($fild['link']); ?>" target="_blank"
                           title="<?php echo($fild['title']); ?>"><img class="w3-image w3-responsive"
                                                                       src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                                                                       alt="<?php echo($fild['title']); ?>"
                                                                       id="item-1"/></a>
                        <?php
                    }
                    ?>
                </div>

                <a href="#" id="prev" class="btn-prev"><i class="fa fa-chevron-circle-left prev-next"></i></a>
                <a href="#" id="next" class="btn-next"><i class="fa fa-chevron-circle-right prev-next"></i></a>

            </div>
        </div>
    </div>

    <div class="w3-row backW w3-container">

        <div class="w3-col s12">
            <div class="w3-row">

                <div class="w3-col s12">

                    <div class="w3-row w3-container">

                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-tasks w3-text-pink"></i>
                                مشاغل برگزیده تشریفات

                                <span class="showe-mo"> <a href="tashrifat.php" target="_blank">مشاهده بیشتر</a> </span>
                            </h5>

                            <hr class="hr-30">
                        </div>


                        <div class="w3-col s12 kala-rtl">

                            <div class="owl-carousel owl-theme show_slide3">

                                <?php
                                $sql = "select * from users where senfid in(select id from asnaf where `type`=0) limit 4";
                                $res = mysqli_query($connection, $sql);
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    ?>
                                    <a href="foroshgah.php?u=<?php echo($fild['user']); ?>" target="_blank">
                                        <div class="item w3-margin-bottom">
                                            <div class="w3-card-2 box-list-asnaf hover-card">

                                                <div class="w3-row">
                                                    <div class="w3-col s12 relative">
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
                                                    <div class="w3-col s12 font-size-1 margin-main">

                                                        <div class="w3-row w3-margin-top">
                                                            <div class="w3-col s3">
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

                                                        <button class="w3-button w3-border w3-hover-green w3-pink box-asnaf-btn">
                                                            <i class="fas fa-shopping-cart"></i>مشاهده
                                                        </button>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </a>
                                    <?php
                                }
                                ?>


                            </div>
                        </div>
                    <div class="w3-col s12">
                        <h5 class="font-titr text-shadow w3-text-gray">
                            <i class="fas fa-tasks w3-text-pink"></i>
                            مشاغل برگزیده جهیزیه

                            <span class="showe-mo"> <a href="jahiziye.php" target="_blank">مشاهده بیشتر</a> </span>
                        </h5>

                        <hr class="hr-30">
                    </div>


                    <div class="w3-col s12 kala-rtl">

                        <div class="owl-carousel owl-theme show_slide3">

                            <?php
                            $sql = "select * from users where senfid in(select id from asnaf where `type`=1) limit 4";
                            $res = mysqli_query($connection, $sql);
                            while ($fild = mysqli_fetch_assoc($res)) {
                                ?>
                                <a href="foroshgah.php?u=<?php echo($fild['user']); ?>" target="_blank">
                                    <div class="item w3-margin-bottom">
                                        <div class="w3-card-2 box-list-asnaf hover-card">

                                            <div class="w3-row">
                                                <div class="w3-col s12 relative">
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
                                                <div class="w3-col s12 font-size-1 margin-main">

                                                    <div class="w3-row w3-margin-top">
                                                        <div class="w3-col s3">
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

                                                    <button class="w3-button w3-border w3-hover-green w3-pink box-asnaf-btn">
                                                        <i class="fas fa-shopping-cart"></i>مشاهده
                                                    </button>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </a>
                                <?php
                            }
                            ?>


                        </div>

                    </div>
                </div>


            </div>
            <?php
            $sql = "select * from kala order by id desc limit 4";
            $res = mysqli_query($connection, $sql);
            if (mysqli_num_rows($res) > 0) {
                ?>
                <div class="w3-col s12">

                    <div class="w3-row w3-container">

                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-tasks w3-text-pink"></i>
                                کالا های برگزیده
                                <span class="showe-mo"> <a href="list-kala.php" target="_blank">مشاهده بیشتر</a> </span>
                            </h5>
                            <hr class="hr-30">
                        </div>


                        <div class="w3-col s12 kala-rtl">

                            <div id="owl-demo" class="owl-carousel owl-theme show_slide3">

                                <?php
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    ?>
                                    <div class="item">
                                        <div class="w3-card hover-card-m m-auto w-95 box-radius">
                                            <a href="singel-kala.php?id=<?php echo($fild['id']); ?>" target="_blank">
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
                                                             src="template/img/Non-photo2.png">
                                                        <?php
                                                    }
                                                    ?>


                                                    <div class="sub-button">
                                                        <button class="button">مشاهده</button>
                                                    </div>
                                                </div>
                                                <div>
                                                <span class="font-iran khetmat-description">
                                                   <?php echo($fild['title']); ?>
                                                </span>
                                                    <span class="khetmat-price">
                                                    <?php echo($fild['price']); ?> ریال
                                                </span>
                                                </div>
                                            </a>
                                        </div>
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
            $sql = "select * from khadamat order by id desc limit 4";
            $res = mysqli_query($connection, $sql);
            if (mysqli_num_rows($res) > 0) {
                ?>
                <div class="w3-col s12">

                    <div class="w3-row w3-container">

                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-tasks w3-text-pink"></i>
                                خدمات برگزیده
                                <span class="showe-mo"> <a href="list-khadamat.php">مشاهده بیشتر</a> </span>
                            </h5>
                            <hr class="hr-30">
                        </div>


                        <div class="w3-col s12 kala-rtl">

                            <div class="owl-carousel owl-theme show_slide3">
                                <?php
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    ?>
                                    <div class="item">
                                        <div class="w3-card hover-card-m m-auto w-95 box-radius">
                                            <a href="single-khedmat.php?id=<?php echo($fild['id']); ?>">
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
                                                             src="template/img/Non-photo2.png">
                                                        <?php
                                                    }
                                                    ?>
                                                    <div class="sub-button">
                                                        <button class="button">مشاهده</button>
                                                    </div>
                                                </div>
                                                <div>
                                                <span class="font-iran khetmat-description">
                                                   <?php
                                                   echo($fild['title']);
                                                   ?>
                                                </span>
                                                    <span class="khetmat-price">
                                                    <?php echo($fild['price']); ?>ریال
                                                </span>
                                                </div>
                                            </a>
                                        </div>

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
            $sql = "select * from jashnvare order by id desc limit 4";
            $res = mysqli_query($connection, $sql);
            if (mysqli_num_rows($res) > 0) {
                ?>
                <div class="w3-col s12">

                    <div class="w3-row w3-container">

                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-tasks w3-text-pink"></i>
                                جشنوراه های برگزیده
                                <span class="showe-mo"> <a href="festival.php" target="_blank">مشاهده بیشتر</a> </span>
                            </h5>
                            <hr class="hr-30">
                        </div>


                        <div class="w3-col s12 kala-rtl">

                            <div class="owl-carousel owl-theme show_slide3">

                                <?php
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    $user = $fild['user'];
                                    $sql2 = "select * from users where `user`='$user'";
                                    $res2 = mysqli_query($connection, $sql2);
                                    $fild2 = mysqli_fetch_assoc($res2);
                                    ?>
                                    <a href="foroshgah.php?u=<?php echo($fild2['user']); ?>" target="_blank">
                                        <div class="item w3-margin-bottom">

                                            <div class="w3-card-2 box-list-asnaf hover-card">

                                                <div class="w3-row">
                                                    <div class="w3-col s12 relative">
                                                        <?php
                                                        if ($fild2['logo'] != "") {
                                                            ?>
                                                            <img src="<?php echo(str_replace("../", "", $fild2['logo'])); ?>"
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


                                                    <div class="w3-col s12 font-size-1 margin-main">

                                                        <div class="w3-row w3-margin-top">

                                                            <div class="w3-col s12">
                                                                <p class="font-titr text-shadow w3-text-gray w3-xlarge">
                                                                    <?php echo($fild2['title']); ?>
                                                                </p>
                                                            </div>

                                                        </div>


                                                        <div class="w3-row box-time">

                                                            <div class="w3-col s12">
                                                                <div class="w3-row ">
                                                                    <div class="w3-col s5">
                                                                        <span class="font-titr">از تاریخ :</span>
                                                                    </div>
                                                                    <div class="w3-col s7">
                                                                <span class="font-yekan">
                                                                    <?php
                                                                    $tarikh1 = $fild['start_date'];
                                                                    $tar1 = explode("-", $tarikh1);
                                                                    //echo($tar1[0]);
                                                                    $tarikh1 = gregorian_to_jalali($tar1[0], $tar1[1], $tar1[2]);
                                                                    echo($tarikh1[0] . "/" . $tarikh1[1] . "/" . $tarikh1[2]);
                                                                    ?>
                                                                </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="w3-col s12 w3-margin-top">
                                                                <div class="w3-col s5">
                                                                    <span class="font-titr">تا تاریخ :</span>
                                                                </div>
                                                                <div class="w3-col s7">
                                                            <span class="font-yekan">
                                                                <?php
                                                                $tarikh2 = $fild['end_date'];
                                                                $tar2 = explode("-", $tarikh2);
                                                                //echo($tar1[0]);
                                                                $tarikh2 = gregorian_to_jalali($tar2[0], $tar2[1], $tar2[2]);
                                                                echo($tarikh2[0] . "/" . $tarikh2[1] . "/" . $tarikh2[2]);
                                                                ?>
                                                            </span>
                                                                </div>
                                                            </div>

                                                        </div>


                                                        <div class="w3-row w3-margin-top">

                                                            <div class="w3-col s12">

                                                                <div class="icon-festival"></div>

                                                                <span class="font-titr w3-text-gray margin-right-2">
                                                <?php echo($fild['percent']); ?> درصد
                                            </span>
                                                            </div>

                                                        </div>

                                                    </div>

                                                    <div class="w3-col m12 btn-asnaf-re">

                                                        <button class="w3-button w3-border w3-hover-green w3-pink box-asnaf-btn">
                                                            <i class="fas fa-shopping-cart"></i>مشاهده
                                                        </button>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <?php
                                }
                                ?>

                            </div>

                        </div>


                    </div>
                </div>
                <?php
            }
            $sql = "select * from offer_product order by id desc limit 4";
            $res = mysqli_query($connection, $sql);
            if (mysqli_num_rows($res) > 0) {
                ?>
                <div class="w3-col s12">

                    <div class="w3-row w3-container">

                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-tasks w3-text-pink"></i>
                                پیشنهاد های ویژه برگزیده
                                <span class="showe-mo"> <a href="offer.php" target="_blank">مشاهده بیشتر</a> </span>
                            </h5>
                            <hr class="hr-30">
                        </div>


                        <div class="w3-col s12 kala-rtl">

                            <div class="owl-carousel owl-theme show_slide3">
                                <?php
                                while ($fild = mysqli_fetch_assoc($res)) {
                                $pid = $fild['Pid'];
                                $sql2 = "select * from kala where id=$pid";
                                if ($fild['type'] == 1) {
                                    $sql2 = "select * from khadamat where id=$pid";
                                }
                                $res2 = mysqli_query($connection, $sql2);
                                $fild2 = mysqli_fetch_assoc($res2);
                                if ($fild['type'] == 0) {
                                ?>
                                <a href="singel-kala.php?id=<?php echo($fild['Pid']); ?>" target="_blank">
                                    <?php
                                    }
                                    else
                                    {
                                    ?>
                                    <a href="single-khedmat.php?id=<?php echo($fild['Pid']); ?>" target="_blank">
                                        <?php
                                        }
                                        ?>
                                        <div class="item">
                                            <div class="w3-card hover-card-m m-auto w-95 box-off relative">
                                                <div class="offer"><?php echo($fild['percent']); ?>%</div>
                                                <div class="box-img-off">
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
                                                        <button class="button">مشاهده</button>
                                                    </div>
                                                </div>
                                                <div>
                                                <span class="font-iran khetmat-description">
                                                   <?php echo($fild2['title']); ?>
                                                </span>
                                                    <span class="khetmat-price">
                                                    <span>
                                                        <hr class="off-hr">

                                                        <?php echo($fild2['price']); ?>ریال
                                                    </span>
                                                      <?php echo($fild2['price'] - (($fild2['price'] / 100) * $fild['percent'])); ?>ریال
                                                </span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <?php
                                    }
                                    ?>

                            </div>

                        </div>


                    </div>
                </div>
                <?php
            }
            $sql = "select * from aghsat order by id desc limit 4";
            $res = mysqli_query($connection, $sql);
            if (mysqli_num_rows($res) > 0) {
                ?>
                <div class="w3-col s12">
                    <div class="w3-row">
                        <div class="w3-col s12 w3-container">

                            <div class="w3-row">

                                <div class="w3-col s12">
                                    <h5 class="font-titr text-shadow w3-text-gray">
                                        <i class="fas fa-calendar-alt w3-text-pink"></i>
                                        اقساط برگزیده
                                        <span class="showe-mo"> <a href="aghsat.php"
                                                                   target="_blank">مشاهده بیشتر</a> </span>
                                    </h5>
                                    <hr class="hr-30">
                                </div>


                                <div class="w3-col s12 kala-rtl">

                                    <div class="owl-carousel owl-theme show_slide3">
                                        <?php
                                        while ($fild = mysqli_fetch_assoc($res)) {
                                            $pid = $fild['Pid'];
                                            $sql2 = "select * from kala where id=$pid";
                                            if ($fild['ty'] == 1) {
                                                $sql2 = "select * from khadamat where id=$pid";
                                            }
                                            $res2 = mysqli_query($connection, $sql2);
                                            $fild2 = mysqli_fetch_assoc($res2);
                                            ?>
                                            <div class="item">
                                                <div class="w3-card hover-card-m m-auto w-95 box-radius relative">
                                                    <div class="installment"></div>
                                                    <a href="<?php
                                                    if ($fild['ty'] == 0) {
                                                        ?>singel-kala.php?id=<?php
                                                        echo($fild['Pid']);
                                                    } else {
                                                        ?>
                                                single-khedmat.php?id=<?php
                                                        echo($fild['Pid']);
                                                    } ?>" target="_blank">
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
                                                                <button class="button">مشاهده</button>
                                                            </div>
                                                        </div>
                                                        <div>
                                                <span class="font-iran khetmat-description text-shadow">
                                                   <?php echo($fild2['title']); ?>
                                                </span>
                                                            <div class="w3-row w3-center w3-margin-top">
                                                                <div class="w3-col s5">
                                                                    <button class="w3-btn w3-green w3-round w3-small"> <?php echo($fild['month1']); ?>
                                                                        ماهه
                                                                    </button>
                                                                </div>
                                                                <div class="w3-col s2">

                                                                    <span>تا</span>
                                                                </div>
                                                                <div class="w3-col s5">

                                                                    <button class="w3-btn w3-green w3-round w3-small"> <?php echo($fild['month2']); ?>
                                                                        ماهه
                                                                    </button>
                                                                </div>


                                                            </div>
                                                            <span class="khetmat-price-ln">

                                                     <div class="w3-row w3-center w3-margin-top w3-margin-right">
                                                         <div class="w3-col s5">
                                                             <span><?php echo($fild['price1']); ?>ریال</span>
                                                         </div>
                                                         <div class="w3-col s2">

                                                             <span>تا</span>
                                                         </div>
                                                         <div class="w3-col s5">

                                                             <span><?php echo($fild['price2']); ?>ریال</span>
                                                         </div>

                                                     </div>

                                                </span>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        <?php } ?>

                                    </div>

                                </div>


                            </div>
                        </div>


                    </div>
                </div>
            <?php } ?>
        </div>

    </div>

    </div>

    <div class="w3-row backW">
        <div class="w3-col m3 s6">
            <div class="fader fade">
                <ul>
                    <?php
                    $sql = "select * from banner order by id desc limit 0,1";
                    $res = mysqli_query($connection, $sql);
                    while ($fild = mysqli_fetch_assoc($res)) {
                        ?>
                        <li>
                            <a href="<?php echo($fild['link']); ?>" target="_blank"><img
                                        src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                                        alet="<?php echo($fild['title']); ?>"></a>
                        </li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
        </div>
        <div class="w3-col m3 s6">
            <div class="fader2 fade">
                <ul>
                    <?php
                    $sql = "select * from banner order by id desc limit 1,1";
                    $res = mysqli_query($connection, $sql);
                    while ($fild = mysqli_fetch_assoc($res)) {
                        ?>
                        <li>
                            <a href="<?php echo($fild['link']); ?>" target="_blank"><img
                                        src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                                        alet="<?php echo($fild['title']); ?>"></a>
                        </li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
        </div>
        <div class="w3-col w3-hide-small m3 s6">
            <div class="fader3 fade">
                <ul>
                    <?php
                    $sql = "select * from banner order by id desc limit 2,1";
                    $res = mysqli_query($connection, $sql);
                    while ($fild = mysqli_fetch_assoc($res)) {
                        ?>
                        <li>
                            <a href="<?php echo($fild['link']); ?>" target="_blank"><img
                                        src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                                        alet="<?php echo($fild['title']); ?>"></a>
                        </li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
        </div>
        <div class="w3-col w3-hide-small m3 s6">
            <div class="fader4 fade">
                <ul>
                    <?php
                    $sql = "select * from banner order by id desc limit 3,1";
                    $res = mysqli_query($connection, $sql);
                    while ($fild = mysqli_fetch_assoc($res)) {
                        ?>
                        <li>
                            <a href="<?php echo($fild['link']); ?>" target="_blank"><img
                                        src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                                        alet="<?php echo($fild['title']); ?>"></a>
                        </li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>

    <div class="w3-row backLight">
        <div>
            <div class="app-wrapper">
                <div class="app-slider" id="test">
                    <div class="slider-wrapper">
                        <div class="slider-container">
                            <!-- Swiper -->
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img height="100%" src="template/img/app.jpg" alt=""/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="app-info">
                    <div class="w3-row">
                        <div class="w3-col s12">
                            <h3 class="titil-app">
                                اپلیکیشن زندگینو
                            </h3>
                        </div>

                        <div class="w3-col s12">
                            <h4 class="content-app">
                                با دانلود نرم افزار زندگینو و نصب آن از زندگی لذت ببرید
                            </h4>
                        </div>

                        <div class="w3-col s10 box-btn-app">
                            <a href="#">
                                <img src="template/img/btn-android.png">
                            </a>
                            <a href="#">
                                <img src="template/img/btn-ios.png">
                            </a>
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
<script src="template/js/slider/jquery.waterwheelCarousel.min.js"></script>

<script src="template/js/fade/jquery.fader.js"></script>
<script src="template/js/home.js"></script>


</body>
</html>