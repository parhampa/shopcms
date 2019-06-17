<?php
include("config.php");
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>همه چی با ما</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/main.css">

    <link rel="stylesheet" href="template/css/everythingwithus.css">
    <script src="functions/ajaxco.js"></script>
    <script>
        var mor = 2;
        var morc = 0;

        function moropack(mors) {
            if (morc > 10) {
                <?php
                $param = "";
                if (isset($_GET['u']) == true) {
                    $u = sqlstr($_GET['u']);
                    if ($u != "") {
                        $param = $param . "&u=" . $u;
                    }
                }
                ?>
                url = "more-pack.php?mor=" + mor + "<?php echo($param); ?>";
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

<body onscroll="mor=moropack(mor);">

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
        <div class="w3-row">

            <div class="w3-col s12 w3-container">

                <div class="w3-row">

                    <div class="w3-col s12">
                        <h5 class="font-titr text-shadow w3-text-gray w3-xxlarge">
                            <i class="fas fa-cubes w3-text-pink"></i>
                            همه چی با ما
                        </h5>
                        <hr class="hr-30">
                    </div>

                    <div class="w3-col s12 w3-margin-bottom w3-margin-top " id="morplc">
                        <?php
                        $filter = "";
                        if (isset($_GET['u']) == true) {
                            if ($_GET['u'] != "") {
                                $u = sqlstr($_GET['u']);
                                $filter = " where `user`='$u' ";
                            }
                        }
                        $sql = "select * from pack $filter order by id desc limit 0,12";
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

                    </div>

                </div>
            </div>

        </div>
    </div>

</main>

<?php include("footer.php"); ?>

<script src="template/js/jquery-3.3.1.min.js"></script>

<script src="template/js/slider/owl.carousel.min.js"></script>

<script src="template/js/slider/show_slide.js"></script>


</body>
</html>