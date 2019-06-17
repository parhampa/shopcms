<?php
include("config.php");
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>اقساطینو</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/main.css">

    <link rel="stylesheet" href="template/css/Installments.css">

    <script src="functions/ajaxco.js"></script>
    <script>
        var mor = 2;
        var morc = 0;

        function morghest(mors) {
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
                url = "more-aghsat.php?mor=" + mor + "<?php echo($param); ?>";
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
<body onscroll="mor=morghest(mor);">

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

            <div class="w3-col s12 w3-margin-top">
                <div class="w3-row">
                    <div class="w3-col s12 w3-container">

                        <div class="w3-row">

                            <div class="w3-col s12">
                                <h5 class="font-titr text-shadow w3-text-gray w3-xxlarge">
                                    <i class="fas fa-calendar-alt w3-text-pink"></i>
                                    اقساطینو
                                </h5>
                                <hr class="hr-30">
                            </div>

                            <div class="w3-col s12 w3-margin-bottom w3-margin-top " id="morplc">

                                <?php
                                $filter = "";
                                if (isset($_GET['u']) == true) {
                                    $u = sqlstr($_GET['u']);
                                    if ($u != "") {
                                        $sqltest = "select * from users where `user`='$u'";
                                        $restest = mysqli_query($connection, $sqltest);
                                        if (mysqli_num_rows($restest) != 0) {
                                            if ($filter == "") {
                                                $filter = "(Pid in (select id from kala where `user`='$u') and `ty`=0) or 
                                                (Pid in (select id from khadamat where `user`='$u') and `ty`=1)";
                                            } else {
                                                $filter = " and (Pid in (select id from kala where `user`='$u') and `ty`=0) or 
                                                (Pid in (select id from khadamat where `user`='$u') and `ty`=1)";
                                            }
                                        }
                                    }
                                }
                                if ($filter != "") {
                                    $filter = " where " . $filter;
                                }
                                $sql = "select * from aghsat $filter order by id desc limit 0,12";
                                $res = mysqli_query($connection, $sql);
                                while ($fild = mysqli_fetch_assoc($res)) {
                                    $pid = $fild['Pid'];
                                    $sql2 = "select * from khadamat where id =$pid";
                                    if ($fild['ty'] == 0) {
                                        $sql2 = "select * from kala where id =$pid";
                                    }
                                    $res2 = mysqli_query($connection, $sql2);
                                    $fild2 = mysqli_fetch_assoc($res2);
                                    ?>
                                    <div class="w3-col l3 m6 s12">
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