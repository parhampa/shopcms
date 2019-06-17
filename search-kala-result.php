<?php include("config.php"); ?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title> کالاها</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/main.min.css">

    <link rel="stylesheet" href="template/css/list-kala.css">
    <script src="functions/ajaxco.js"></script>
    <script>
        var mor = 2;
        var morc = 0;

        function morkala(mors) {
            if (morc > 10) {
                <?php
                $morurl = "";
                if (isset($_GET['name']) == true) {
                    $name = sqlstr($_GET['name']);
                    if ($morurl == "") {
                        $morurl = "name=" . $name;
                    } else {
                        $morurl .= "&name=" . $name;
                    }
                }
                if (isset($_GET['id']) == true) {
                    $id = sqlstr($_GET['id']);
                    if ($morurl == "") {
                        $morurl = "id=" . $id;
                    } else {
                        $morurl .= "&id=" . $id;
                    }
                }
                if (isset($_GET['brand']) == true) {
                    $brand = sqlstr($_GET['brand']);
                    if ($morurl == "") {
                        $morurl = "brand=" . $brand;
                    } else {
                        $morurl .= "&brand=" . $brand;
                    }
                }
                if (isset($_GET['model']) == true) {
                    $model = sqlstr($_GET['model']);
                    if ($morurl == "") {
                        $morurl = "model=" . $model;
                    } else {
                        $morurl .= "&model=" . $model;
                    }
                }
                if (isset($_GET['price1']) == true) {
                    $price1 = sqlstr($_GET['price1']);
                    if ($morurl == "") {
                        $morurl = "price1=" . $price1;
                    } else {
                        $morurl .= "&price1=" . $price1;
                    }
                }
                if (isset($_GET['price2']) == true) {
                    $price2 = sqlstr($_GET['price2']);
                    if ($morurl == "") {
                        $morurl = "price2=" . $price2;
                    } else {
                        $morurl .= "&price2=" . $price2;
                    }
                }
                $morurl = "&" . $morurl;
                ?>
                url = "more-search-result.php?mor=" + mor + "<?php echo($morurl); ?>";
                console.log(url);
                ajaxcomor(url, "morplc");
                morc = 0;
                mors = mors + 1;
            }
            morc++
            return mors;
        }
    </script>

</head>
<body onscroll="mor=morkala(mor);">

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
                        <form method="get" action="search-kala-result.php">
                            <div class="w3-row">
                                <div class="w3-col s12">
                                    <div class="w3-row-padding margin-boxfilter">
                                        <div class="w3-third filter-input">
                                            <input class="w3-input w3-border" name="name" type="text"
                                                   placeholder="نام محصول"
                                                   <?php if (isset($_GET['name']) == true){ ?>value="<?php echo(sqlstr($_GET['name'])); ?>" <?php } ?>>
                                        </div>
                                        <div class="w3-third filter-input">
                                            <input class="w3-input w3-border" name="brand" type="text"
                                                   placeholder="برند"
                                                   <?php if (isset($_GET['brand']) == true){ ?>value="<?php echo(sqlstr($_GET['brand'])); ?>" <?php } ?>>
                                        </div>
                                        <div class="w3-third filter-input">
                                            <input class="w3-input w3-border" name="model" type="text"
                                                   <?php if (isset($_GET['model']) == true){ ?>value="<?php echo(sqlstr($_GET['model'])); ?>" <?php } ?>
                                                   placeholder="مدل">
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
                    <div class="w3-col s12 w3-container">

                        <div class="w3-row w3-container">

                            <div class="w3-col s12">
                                <h5 class="font-titr text-shadow w3-text-gray">
                                    <i class="fas fa-tasks w3-text-pink"></i>
                                    نتیجه جستجو
                                </h5>
                                <hr class="hr-30">
                            </div>

                            <div class="w3-col s12 w3-margin-bottom w3-margin-top " id="morplc">
                                <?php
                                $filter = "";
                                if (isset($_GET['name']) == true) {
                                    $name = sqlstr($_GET['name']);
                                    if ($name != "") {
                                        if ($filter == "") {
                                            $filter = "title like '%$name%' ";
                                        } else {
                                            $filter .= " and title like '%$name%' ";
                                        }
                                    }
                                }
                                if (isset($_GET['brand']) == true) {
                                    $brand = sqlstr($_GET['brand']);
                                    if ($brand != "") {
                                        if ($filter == "") {
                                            $filter = "brand like '%$brand%'";
                                        } else {
                                            $filter .= " and brand like '%$brand%'";
                                        }
                                    }
                                }
                                if (isset($_GET['model']) == true) {
                                    $model = sqlstr($_GET['model']);
                                    if ($model != "") {
                                        if ($filter == "") {
                                            $filter = "model like '%$model%'";
                                        } else {
                                            $filter .= " and model like '%$model%'";
                                        }
                                    }
                                }
                                $price1 = 0;
                                $price2 = 0;
                                if (isset($_GET['price1']) == true) {
                                    if ($_GET['price1'] != "") {
                                        $price1 = sqlint($_GET['price1']);
                                    }
                                }
                                if (isset($_GET['price2']) == true) {
                                    if ($_GET['price2'] != "") {
                                        $price2 = sqlint($_GET['price2']);
                                    }
                                }
                                if ($price1 != 0 && $price2 != 0) {
                                    if ($filter == "") {
                                        $filter = "price<=$price2 and price>=$price1";
                                    } else {
                                        $filter .= " and (price<=$price2 and price>=$price1)";
                                    }
                                }
                                if ($price1 != 0 && $price2 == 0) {
                                    if ($filter == "") {
                                        $filter = "price>=$price1";
                                    } else {
                                        $filter .= " and price>=$price1";
                                    }
                                }
                                if ($price1 == 0 && $price2 != 0) {
                                    if ($filter == "") {
                                        $filter = "price<=$price2";
                                    } else {
                                        $filter .= " and price<=$price2";
                                    }
                                }
                                if (isset($_GET['id']) == true) {
                                    $sid = sqlint($_GET['id']);
                                    if ($filter == "") {
                                        $filter = "`user` in (select `user` from users where senfid=$sid)";
                                    } else {
                                        $filter .= " and `user` in (select `user` from users where senfid=$sid)";
                                    }
                                }
                                if ($filter != "") {
                                    $filter = " where " . $filter;
                                }

                                $sql = "select * from kala $filter order by id desc limit 12";
                                $res = mysqli_query($connection, $sql);
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    ?>
                                    <div class="w3-col l3 m4 s12">
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
                                                        <a href="singel-kala.php?id=<?php echo($fild['id']); ?>"
                                                           target="_blank">
                                                            <button class="button">مشاهده</button>
                                                        </a>
                                                    </div>
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