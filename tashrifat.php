<?php
include("config.php");
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>لیست اصناف</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/font.css">
    <link rel="stylesheet" href="template/css/all.min.css">
    <link rel="stylesheet" href="template/css/iconeffect.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">
    <link rel="stylesheet" href="template/css/owl.theme.default.css">

    <link rel="stylesheet" href="template/css/sidebar-menu.css">


    <link rel="stylesheet" href="template/css/page-asnaf.css">
    <link rel="stylesheet" href="template/css/main.css">
    <script src="functions/ajaxco.js"></script>
    <script>
        var mor = 2;
        var morc = 0;

        function morsenf(mors) {
            if (morc > 10) {
                <?php
                $famor = "";
                if (isset($_GET['fa']) == true) {
                    $fa = sqlint($_GET['fa']);
                    $famor = "&fa=" . $fa;
                    if (isset($_GET['ra']) == true) {
                        $ra = sqlint($_GET['ra']);
                        $ramor = "&ra=" . $ra;
                    }
                }
                ?>
                tmmors = mors;
                ajaxcomor("morsenf.php?ty=0&li=" + tmmors <?php if ($famor != "") {
                    echo(' + "' . $famor . '"');
                } ?>, "morplc");
                morc = 0;
                mors = mors + 1;
            }
            morc++
            return mors;
        }
    </script>
</head>
<body onscroll="mor=morsenf(mor);">

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
                                <a href="https://www.instagram.com/zendeginoapp/?hl=en" target="_blank" title="zendeginoapp">
                                    <i class="hovicon effect-1 sub-a"><i class="fab fa-instagram icon-header"></i></i>
                                </a>
                            </div>
                            <div class="block">
                                <a href="https://www.linkedin.com/in/zendegino-app-881162175/" title="zendegino-app" target="_blank">
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
    <div class="w3-container">
        <div class="w3-row box-content">
            <div class="w3-col m3 w3-hide-small w3-card-4">
                <section>
                    <ul class="sidebar-menu-rtl font-size-1" id="myUL">
                        <input type="text" id="myInput" class="search-asnaf" onkeyup="filterList()"
                               placeholder="صنف خود را جستجو کنید" title="اصناف تشریفات">
                        <?php
                        $sql = "select * from asnaf where `father`=0 and `type`=0";
                        $res = mysqli_query($connection, $sql);
                        while ($fild = mysqli_fetch_assoc($res)) {
                            ?>
                            <li>
                                <a href="tashrifat.php?fa=<?php echo($fild['id']); ?>" class="font-iran">
                                    <img src="<?php echo(str_replace("../", "", $fild['pic'])); ?>" class="icon-asnaf">
                                    <?php echo($fild['title']); ?>
                                </a>
                            </li>
                            <?php
                        }
                        ?>
                    </ul>
                </section>
            </div>

            <div class="w3-col m9 s12">
                <div class="w3-row padding-right-4" id="morplc">
                    <?php
                    if (isset($_GET['fa']) == true) {
                        $fa = sqlint($_GET['fa']);
                        $sql = "select * from asnaf where `father`=$fa and `type`=0";
                        $res = mysqli_query($connection, $sql);
                        if (mysqli_num_rows($res) > 0) {
                            ?>
                            <section class="card w3-margin-bottom w3-text-gray">
                                <?php
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    ?>
                                    <div>
                                        <a href="tashrifat.php?fa=<?php echo($fa); ?>&ra=<?php echo($fild['id']); ?>"
                                           class="w3-bar-item w3-button menu-asnaf <?php
                                           if (isset($_GET['ra']) == true) {
                                               if ($_GET['ra'] == $fild['id']) {
                                                   echo('active-item');
                                               }
                                           }
                                           ?>">
                                            <?php echo($fild['title']); ?>
                                        </a>
                                    </div>
                                    <?php
                                }
                                ?>
                            </section>

                            <?php
                        }
                    }
                    $fatherq = "";
                    if (isset($_GET['fa']) == true) {
                        $fa = sqlint($_GET['fa']);
                        $fatherq = " and senfid=$fa ";
                        if (isset($_GET['ra']) == true) {
                            $ra = sqlint($_GET['ra']);
                            $fatherq = $fatherq . " and `user` in (select `user` from sub_senf where senfid=$ra)";
                        }
                    }
                    $sql = "select * from `users` where senfid in(select id from asnaf where `type`=0 ) $fatherq limit 0,12";
                    //die($sql);
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

                                        <a href="foroshgah.php?u=<?php echo($fild['user']); ?>" target="_blank" class="w3-button w3-border w3-hover-green w3-pink box-asnaf-btn"><i
                                                    class="fas fa-shopping-cart"></i>مشاهده
                                        </a>

                                    </div>
                                </div>

                            </div>

                        </div>
                        <?php
                    }
                    ?>


                </div>
            </div>
        </div>
    </div>
</main>

<?php
include("footer.php");
?>



<script src="template/js/jquery-3.3.1.min.js"></script>

<script src="template/js/slider/jquery.waterwheelCarousel.js"></script>
<script src="template/js/slider/owl.carousel.min.js"></script>

<script src="template/js/slider/show_slide.js"></script>
<script src="template/js/list-ansaf.js"></script>


</body>
</html>