<?php include("config.php"); ?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>لیست خدمات</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/main.min.css">

    <link rel="stylesheet" href="template/css/list-kala.css">


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
    <div class="w3-container">
        <div class="w3-row box-content">

            <div class="w3-col s12 w3-margin-top w3-card-2 box-filter">

                <div class="w3-row w3-container">

                    <div class="w3-col m2 s12 box-img-filter">
                        <img src="template/img/kalayab.png" class="">
                        <span class="w3-text-gray w3-xlarge">
                            کالایاب
                        </span>
                    </div>

                    <div class="w3-col m10 s12">
                        <form method="get" action="search-kahadamat-result.php">
                            <div class="w3-row">
                                <div class="w3-col s12">
                                    <div class="w3-row-padding margin-boxfilter">
                                        <div class="w3-third filter-input">
                                            <input class="w3-input w3-border" name="name" type="text"
                                                   placeholder="عنوان خدمات"
                                                   <?php if (isset($_GET['name']) == true){ ?>value="<?php echo(sqlstr($_GET['name'])); ?>" <?php } ?>>
                                        </div>

                                    </div>
                                </div>


                                <div class="w3-col s12">
                                    <div class="w3-row margin-boxfilter-bottom">

                                        <div class="w3-col l8 m10 s8">
                                            <div class="w3-row-padding">
                                                <div class="w3-third w3-text-gray filter-input margin-top-5">
                                                    <label class="w3-col s2 padding-top-8" for="min-praci">از</label>
                                                    <input id="min-praci" name="price1"
                                                           class="w3-input w3-border w3-col s10"
                                                           type="number" placeholder="حداقل قیمت" min="0"
                                                           <?php if (isset($_GET['price1']) == true){
                                                           if ($_GET['price1'] != "") { ?>value="<?php echo(sqlint($_GET['price1'])); ?>" <?php }
                                                    } ?>>
                                                </div>
                                                <div class="w3-third w3-text-gray filter-input margin-top-5">
                                                    <label class="w3-col s2 padding-top-8" for="max-praci">تا</label>
                                                    <input id="max-praci" name="price2"
                                                           class="w3-input w3-border w3-col s10"
                                                           type="number" placeholder="حداکثر قیمت" min="0"
                                                           <?php if (isset($_GET['price2']) == true){
                                                           if ($_GET['price2'] != "") { ?>value="<?php echo(sqlint($_GET['price2'])); ?>" <?php }
                                                    } ?>>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="w3-col l4 m2 s12 box-searchf">
                                            <div class="w3-row">
                                                <div class="scene left-float w3-margin-left">
                                                    <div class="cube">
                                                        <input type="submit" class="side top" value="جستو رو شروع کنید">
                                                        <input type="submit" class="side front"
                                                               value="شروع جستجو"></input>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </form>

                    </div>

                </div>
            </div>

            <div class="w3-col s12">
                <div class="w3-row">
                    <?php
                    $sqlsenf = "select * from asnaf where `father`=0";
                    $ressenf = mysqli_query($connection, $sqlsenf);
                    while ($fildasnaf = mysqli_fetch_assoc($ressenf)) {
                        $senfid = $fildasnaf['id'];
                        $sqlkala = "select * from khadamat where `user` in (select `user` from `users` where `senfid`=$senfid) order by id desc limit 10";
                        $reskala = mysqli_query($connection, $sqlkala);
                        if (mysqli_num_rows($reskala) > 0) {
                            ?>
                            <div class="w3-col s12 w3-container">

                                <div class="w3-row w3-container">

                                    <div class="w3-col s12">
                                        <h5 class="font-titr text-shadow w3-text-gray">
                                            <i class="fas fa-tasks w3-text-pink"></i>
                                            <?php echo($fildasnaf['title']); ?>
                                        </h5>
                                        <a href="search-kala-result.php?id=<?php echo($fildasnaf['id']); ?>">
                                            <button class="btn_custumer w3-small w3-margin-left">همه محصولات این دسته
                                            </button>
                                            <hr class="hr-30">
                                        </a>
                                    </div>

                                    <div class="w3-col s12 w3-margin-bottom w3-margin-top kala-rtl">

                                        <div class="owl-carousel owl-theme show_slide2">
                                            <?php
                                            while ($fildkala = mysqli_fetch_assoc($reskala)) {
                                                ?>
                                                <div class="item hover-card-m">
                                                    <a href="single-khedmat.php?id=<?php echo($fildkala['id']); ?>">
                                                        <div class="box-khetmat-img">
                                                            <?php
                                                            if ($fildkala['pic'] != "") {
                                                                ?>
                                                                <img class="m-auto w3-image w3-responsive"
                                                                     src="<?php echo(str_replace("../", "", $fildkala['pic'])); ?>">
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
                                                   <?php echo($fildkala['title']); ?>
                                                </span>
                                                            <span class="khetmat-price">
                                                    <?php echo($fildkala['price']); ?> ریال
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

<script src="template/js/slider/owl.carousel.min.js"></script>

<script src="template/js/slider/show_slide.js"></script>
<script src="template/js/list-ansaf.js"></script>


</body>
</html>