<?php
include("config.php");
include("functions/jdf.php");
if (isset($_GET['u']) == false) {
    die();
}
$u = sqlstr($_GET['u']);
$sql = "select * from `users` where `user`='$u'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$fild = mysqli_fetch_assoc($res);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>فروشگاه اختصاصی</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">
    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/foroshga.css">

</head>
<body>

<header>
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
    <div class="w3-container w3-row">
        <div class="w3-col s12 w3-card-4 w3-border w3-border-pink w3-container w3-text-gray box-content-foroshga w3-margin-bottom">
            <div class="w3-row">
                <div id="information" class="w3-col l6 m12 padding-top-2">
                    <div class="w3-row">
                        <div class="w3-col s12 w3-margin-top">
                            <h3 class="font-titr text-shadow font-size-4">
                                مدیریت <?php echo($fild['name'] . " " . $fild['famili']); ?>
                            </h3>
                        </div>
                    </div>

                    <div class="w3-row w3-container w3-margin-top">
                        <div class="w3-col s6 font-size-4">
                            <label>تلفن ثابت:</label>
                            <span class="margin-right-2">
                                <?php echo($fild['tel']); ?>
                            </span>
                        </div>
                        <?php
                        if ($fild['tel2'] != "") {
                            ?>
                            <div class="w3-col s6 font-size-4">
                                <label>تلفن ثابت:</label>
                                <span class="margin-right-2">
                                <?php echo($fild['tel2']); ?>
                            </span>
                            </div>
                            <?php
                        }
                        ?>
                    </div>

                    <div class="w3-row w3-container w3-margin-top">
                        <div class="w3-col s6 font-size-4">
                            <label>تلفن همراه:</label>
                            <span class="margin-right-2">
                                <?php
                                echo($fild['mob']);
                                ?>
                            </span>
                        </div>
                        <?php
                        if ($fild['mob2'] != "") {
                            ?>
                            <div class="w3-col s6 font-size-4">
                                <label>تلفن همراه:</label>
                                <span class="margin-right-2">
                                <?php echo($fild['mob2']); ?>
                            </span>
                            </div>
                            <?php
                        }
                        ?>
                    </div>

                    <div class="w3-row w3-container w3-margin-top">
                        <div class="w3-col s12 address-foroshga font-size-4">
                            <label>آدرس:</label>
                            <span class="w3-text-pink w3-hover-text-gray margin-right-2 w3-justify">
                                <a href="#">
                                    <?php
                                    echo($fild['addres']);
                                    ?>
                                </a>
                            </span>
                        </div>
                    </div>

                    <div class="w3-row w3-hide-large">
                        <div class="w3-col s12 w3-left-align">
                            <button class="w3-button w3-green" onclick="open_about()">معرفی فروشگاه</button>
                        </div>
                    </div>

                </div>

                <div id="about" class="w3-col l6 m12 none">
                    <div class="w3-row">
                        <div class="w3-col s12 w3-margin-top">
                            <h5 class="font-titr text-shadow">
                                معرفی فروشگاه
                            </h5>
                            <hr class="hr-30">
                        </div>
                    </div>

                    <div class="w3-row">
                        <div class="w3-col s11 w3-container w3-justify box-discript font-size-4">
                            <p>
                                <?php
                                echo($fild['describ']);
                                ?>
                            </p>
                        </div>
                    </div>

                    <div class="w3-row w3-hide-large">
                        <div class="w3-col s12 w3-left-align">
                            <button class="w3-button w3-green" onclick="open_inf()">اطلاعات فروشگاه</button>
                        </div>
                    </div>
                    <?php
                    $tarikh = date("Y-m-d");
                    $sqlj = "select * from jashnvare where end_date >='$tarikh' and `user`='$u' order by id desc ";
                    $resj = mysqli_query($connection, $sqlj);
                    if (mysqli_num_rows($resj) > 0) {
                        $fildj = mysqli_fetch_assoc($resj);
                        ?>
                        <div class="w3-row w3-container w3-margin-top">
                            <div class="w3-col s8 font-size-4">

                                <div class="w3-row box-time">

                                    <div class="w3-col m6 s12">
                                        <div class="w3-row ">
                                            <div class="w3-col s5">
                                                <span class="font-titr">از تاریخ :</span>
                                            </div>
                                            <div class="w3-col s7">
                                            <span class="font-yekan">
                                                <?php
                                                $tarikh1 = $fildj['start_date'];
                                                $tar1 = explode("-", $tarikh1);
                                                //echo($tar1[0]);
                                                $tarikh1 = gregorian_to_jalali($tar1[0], $tar1[1], $tar1[2]);
                                                echo($tarikh1[0] . "/" . $tarikh1[1] . "/" . $tarikh1[2]);
                                                ?>
                                            </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="w3-col m6 s12">
                                        <div class="w3-col s5">
                                            <span class="font-titr">تا تاریخ :</span>
                                        </div>
                                        <div class="w3-col s7">
                                        <span class="font-yekan">
                                            <?php
                                            $tarikh2 = $fildj['end_date'];
                                            $tar2 = explode("-", $tarikh2);
                                            //echo($tar1[0]);
                                            $tarikh2 = gregorian_to_jalali($tar2[0], $tar2[1], $tar2[2]);
                                            echo($tarikh2[0] . "/" . $tarikh2[1] . "/" . $tarikh2[2]);
                                            ?>
                                        </span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="w3-col s4 font-size-4">
                                <div class="w3-row w3-margin-top">

                                    <div class="w3-col s12 box-offer">

                                        <div class="img-box-offer w3-responsive"></div>

                                        <span class="font-titr w3-text-gray margin-right-2 font-offer">
                                                <?php echo($fildj['percent']); ?> درصد تخفیف
                                    </span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    <?php } ?>

                </div>

            </div>
        </div>

        <?php
        $sql = "select * from gallery where `user`='$u' order by id desc ";
        $res = mysqli_query($connection, $sql);
        if (mysqli_num_rows($res) > 0) {
            ?>
            <div class="w3-col s12">
                <div class="w3-row w3-container">
                    <div class="w3-col s12 w3-margin-top">
                        <h5 class="font-titr text-shadow w3-text-gray">
                            <i class="far fa-images w3-text-pink"></i>
                            گالری تصاویر
                        </h5>
                        <hr class="hr-30">
                    </div>
                </div>

                <section id="galleries">
                    <!-- Photo Galleries -->
                    <div class="gallery">
                        <div class="content">
                            <?php

                            while ($fild = mysqli_fetch_assoc($res)) {
                                ?>
                                <div class="media">
                            <span onclick="document.getElementById('id<?php echo($fild['id']); ?>').style.display='block'"><img
                                        src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                                        class="w3-image w3-responsive" alt=""
                                        title="<?php echo($fild['title']); ?>"/></span>
                                </div>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </section>

                <?php
                $sql = "select * from gallery where `user`='$u' order by id desc ";
                $res = mysqli_query($connection, $sql);
                while ($fild = mysqli_fetch_assoc($res)) {
                    ?>
                    <div id="id<?php echo($fild['id']); ?>" class="w3-modal w3-animate-opacity">
                        <div class="w3-modal-content w3-card-4">
                            <header class="w3-container w3-pink">
                        <span onclick="document.getElementById('id<?php echo($fild['id']); ?>').style.display='none'"
                              class="w3-button w3-large w3-display-topright">&times;</span>
                            </header>
                            <div class="w3-row">
                                <div class="w3-col s12">
                                    <img src="<?php echo(str_replace("../", "", $fild['pic'])); ?>"
                                         style="width: 100%;height:auto">
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                }
                ?>
            </div>
            <?php
        }
        ?>

        <?php
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
                                                     src="no-image.png">
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
                                                     src="no-image.png">
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
        <div class="w3-col s12 w3-margin-top">
            <div class="w3-row w3-container">
                <div class="w3-col m7 s12">
                    <div class="w3-row">
                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fas fa-comments w3-text-pink"></i>
                                مشاهده نظرات
                            </h5>
                            <hr class="hr-30">
                        </div>
                    </div>

                    <div class="w3-row w3-margin-bottom">
                        <?php
                        $sql = "select * from comment_user where `user`='$u' and `visit`=1 order by id desc";
                        $res = mysqli_query($connection, $sql);
                        while ($fild = mysqli_fetch_assoc($res)) {
                            ?>
                            <div class="w3-col m11 s12 w3-card-2 box-comment">
                                <div class="w3-row">
                                    <div class="w3-col s12">
                                        <div class="w3-row w3-container w3-text-gray">
                                            <div class="w3-col s6 w3-margin-top font-size-3">
                                                <span>از:</span>
                                                <span><?php echo($fild['name']); ?></span>
                                            </div>
                                            <div class="w3-col s6 w3-left-align comment-time">
                                                <span>
                                                    <?php
                                                    $tarikh = $fild['tarikh'];
                                                    $gregor = explode("-", $tarikh);
                                                    echo(gregorian_to_jalali($gregor[0], $gregor[1], $gregor[2], "-"));
                                                    ?>
                                                </span>
                                                <span>&nbsp;</span>
                                                <span><?php echo($fild['saat']); ?></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="w3-col s12 w3-container comment-content">
                                        <p class="font-iran font-size-4">
                                            <?php echo($fild['txt']); ?>
                                        </p>
                                    </div>

                                    <div class="w3-col s12 w3-margin-top w3-left-align comment-icon">
                                        <i class="fas fa-reply w3-xlarge w3-text-pink"></i>
                                        <i class="far fa-heart w3-xlarge w3-text-pink margin-right-2"></i>
                                    </div>
                                </div>
                            </div>
                            <?php
                        }
                        ?>
                        <?php
                        if (mysqli_num_rows($res) > 0) {
                            ?>
                            <div class="w3-col m11 s12 w3-center">
                                <button class="w3-btn w3-pink w3-border w3-round-large">
                                    <a href="#">
                                        نظرات بیشتر
                                    </a>
                                </button>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                </div>
                <div class="w3-col m5 s12">

                    <div class="w3-row">
                        <div class="w3-col s12">
                            <h5 class="font-titr text-shadow w3-text-gray">
                                <i class="fab fa-telegram-plane w3-text-pink"></i>
                                ارسال نظر
                            </h5>
                            <hr class="hr-30">
                        </div>

                        <div class="w3-col s12">
                            <form class="w3-container w3-card-4 w3-light-grey w3-text-pink w3-margin"
                                  action="adducm.php?u=<?php echo($u); ?>" method="post">


                                <div class="w3-row w3-section">
                                    <div class="w3-col w50px"><i class="w3-xxlarge fa fa-user"></i></div>
                                    <div class="w3-rest">
                                        <input class="w3-input w3-border" name="name" type="text"
                                               placeholder="نام و نام خانوادگی">
                                    </div>
                                </div>

                                <div class="w3-row w3-section">
                                    <div class="w3-col w50px"><i class="w3-xxlarge far fa-envelope"></i></div>
                                    <div class="w3-rest">
                                        <input class="w3-input w3-border w3-left-align" name="email" type="email"
                                               placeholder="email@info.com">
                                    </div>
                                </div>


                                <div class="w3-row w3-section">
                                    <div class="w3-col w50px"><i class="w3-xxlarge fas fa-pen-square"></i></div>
                                    <div class="w3-rest">
                                        <textarea class="w3-input w3-border" name="txt"
                                                  placeholder="متن پیام"></textarea>

                                    </div>
                                </div>

                                <input type="submit" value="ارسال"
                                       class="w3-button w3-block w3-section w3-green w3-ripple w3-padding">

                            </form>
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
<script src="template/js/slider/show_slide.js"></script>
<script src="template/js/foroshga.js"></script>


</body>
</html>