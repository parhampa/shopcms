<?php
include("config.php");
include("functions/jdf.php");
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>جشنواره</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">


    <link rel="stylesheet" href="template/css/all.min.css">


    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/festival.css">

    <script src="functions/ajaxco.js"></script>
    <script>
        var mor = 2;
        var morc = 0;

        function morfest(mors) {
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
                url = "more-fest.php?mor=" + mor + "<?php echo($param); ?>";
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
<body onscroll="mor=morfest(mor);">

<header>
    <div class="w3-row">
        <div class="w3-col m12">
            <div class="">

                <?php include("sitemenu.php"); ?>
                <div class="w3-row">

                    <div class="w3-col s12">
                        <div class="">
                            <?php
                            $sql = "select * from jashnvare_slider order by id desc";
                            $res = mysqli_query($connection, $sql);
                            while ($fild = mysqli_fetch_assoc($res)) {
                                ?>
                                <img class="slider-festival w3-animate-right" src="<?php echo(str_replace("../","",$fild['pic'])); ?>" alt="<?php echo($fild['title']); ?>">
                                <?php
                            }
                            ?>
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

            <div class="w3-col s12">
                <div class="w3-row padding-right-4" id="morplc">


                    <?php
                    $filter = "";
                    if (isset($_GET['u']) == true) {
                        $u = sqlstr($_GET['u']);
                        if ($u != "") {
                            $sqltest = "select * from users where `user`='$u'";
                            $restest = mysqli_query($connection, $sqltest);
                            if (mysqli_num_rows($restest) != 0) {
                                if ($filter == "") {
                                    $filter = "`user`='$u'";
                                } else {
                                    $filter = " and `user`='$u'";
                                }
                            }
                        }
                    }
                    if ($filter != "") {
                        $filter = " where " . $filter;
                    }
                    $sql = "select * from jashnvare $filter order by id desc limit 10";
                    $res = mysqli_query($connection, $sql);
                    while ($fild = mysqli_fetch_assoc($res)) {
                        $user = $fild['user'];
                        $sql2 = "select * from users where `user`='$user'";
                        $res2 = mysqli_query($connection, $sql2);
                        $fild2 = mysqli_fetch_assoc($res2);
                        ?>
                        <div class="w3-col m6 s12 margin-bottom-2 margin-mdum">

                            <a href="foroshgah.php?u=<?php echo($fild['user']); ?>" target="_blank">
                                <div class="w3-card-2 box-list-asnaf hover-card">

                                    <div class="w3-row">
                                        <div class="w3-col l5 m12 s12 relative">
                                            <?php
                                            if ($fild2['logo'] != "") {
                                                ?>
                                                <img src="<?php echo(str_replace("../", "", $fild2['logo'])); ?>"
                                                     class="w3-image w3-responsive w3-circle box-festival-img">
                                                <?php
                                            } else {
                                                ?>
                                                <img src="no-image.png"
                                                     class="w3-image w3-responsive w3-circle box-festival-img">
                                                <?php
                                            }
                                            ?>

                                        </div>

                                        <div class="w3-col l7 m12 s12 font-size-1 content-festival">

                                            <div class="w3-row w3-margin-top">

                                                <div class="w3-col s12">
                                                    <p class="font-titr text-shadow w3-text-gray w3-xlarge">
                                                        <?php echo($fild2['title']); ?>
                                                    </p>
                                                </div>

                                            </div>


                                            <div class="w3-row box-time">

                                                <div class="w3-col s6">
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
                                                <div class="w3-col s6">
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

                                                    <div></div>


                                                    <img src="template/icons/percentage.png" width="30" height="30">
                                                    <span class="font-titr w3-text-gray margin-right-2">
                                                <?php echo($fild['percent']); ?> درصد
                                            </span>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="w3-col m12 btn-asnaf-re">

                                            <button class="w3-button w3-border w3-hover-green w3-pink box-asnaf-btn"><i
                                                        class="fas fa-shopping-cart"></i>مشاهده
                                            </button>

                                        </div>
                                    </div>

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
</main>

<?php
include("footer.php");
?>


<script src="template/js/jquery-3.3.1.min.js"></script>

<script src="template/js/festival.js"></script>


</body>
</html>