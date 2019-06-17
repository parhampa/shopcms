<?php
include("config.php");
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
    <link rel="stylesheet" href="template/css/register.css">
    <script src="../functions/ajaxco.js"></script>


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
    <div class="w3-container w3-row">

        <div class="w3-col s7 w3-margin-top w3-margin-bottom registerform1">
            <div class="w3-container w3-blue">
                <h2>ثبت نام</h2>
            </div>
            <form class="w3-container" action="usersregister1.php" method="post">
                <div>
                    <label for="user">نام کاربری</label>
                    <input class="w3-input" type="text" name="user" id="user">
                </div>
                <div>
                    <label for="pass">رمز عبور</label>
                    <input class="w3-input" type="password" name="pass" id="pass">
                </div>
                <div>
                    <label for="name">نام</label>
                    <input class="w3-input" type="text" name="name" id="name">
                </div>
                <div>
                    <label for="famili">نام خانوادگی</label>
                    <input class="w3-input" type="text" name="famili" id="famili">
                </div>
                <div>
                    <label for="mob">شماره همراه</label>
                    <input class="w3-input" type="text" name="mob" id="mob">
                </div>
                <div>
                    <label for="tel">تلفن ثابت</label>
                    <input class="w3-input" type="text" name="tel" id="tel">
                </div>
                <div>
                    <label for="mob">شماره همراه2</label>
                    <input class="w3-input" type="text" name="mob2" id="mob2">
                </div>
                <div>
                    <label for="tel">تلفن ثابت2</label>
                    <input class="w3-input" type="text" name="tel2" id="tel2">
                </div>
                <div class="w3-row">
                    <label for="asnaf" class="w3-col s2 ">رسته شغلی</label>
                    <div class="w3-col s10">
                        <select id="senfid" name="senfid" class="w3-select"
                                onchange="ajaxco('subsenf.php?id='+this.value,'ressub')">
                            <?php
                            $sql = "select * from asnaf where `father`=0";
                            $res = mysqli_query($connection, $sql);
                            while ($fild = mysqli_fetch_assoc($res)) {
                                ?>
                                <option value="<?php echo($fild['id']); ?>"><?php echo($fild['title']); ?></option>
                                <?php
                            }
                            ?>
                        </select>
                        <small>صنف خود را از منوي فوق انتخاب نماييد</small>
                    </div>
                </div>
                <div class="form-group row" id="ressub">

                </div>

                <script>
                    ajaxco('subsenf.php?id=' + document.getElementById('senfid').value, 'ressub');
                </script>

                <div>
                    <label for="title">عنوان فروشگاه</label>
                    <input class="w3-input" type="text" name="title" id="title">
                </div>
                <div>
                    <label for="u_bazaryab">معرف ( نام کاربری بازاریاب ) </label>
                    <input class="w3-input" type="text" name="u_bazaryab" id="u_bazaryab">
                </div>
                <div>
                    <label for="addres">آدرس</label>
                    <input class="w3-input" type="text" name="addres" id="addres">
                </div>
                <div>
                    <label for="introduction">توضیحات کوتاه</label>
                    <input class="w3-input" type="text" name="introduction" id="introduction">
                </div>
                <div>
                    <label for="describ">معرفی فروشگاه</label>
                    <input class="w3-input" type="text" name="describ" id="describ">
                </div>
                <div>
                    <label for="telegram">لینک تلگرام</label>
                    <input class="w3-input" type="text" name="telegram" id="telegram">
                </div>
                <div>
                    <label for="instagram">لینک اینستاگرام</label>
                    <input class="w3-input" type="text" name="instagram" id="instagram">
                </div>
                <div>
                    <label for="LinkedIn">لینک لینکدین</label>
                    <input class="w3-input" type="text" name="LinkedIn" id="LinkedIn">
                </div>


                <button type="submit" class="btn btn-primary w3-blue">ثبت اطلاعات</button>
            </form>
        </div>
    </div>

</main>

<?php
include("footer.php");
?>


<script src="template/js/jquery-3.3.1.min.js"></script>

<script src="template/js/slider/jquery.waterwheelCarousel.js"></script>
<script src="template/js/slider/owl.carousel.min.js"></script>

<script src="template/js/fade/jquery.fader.js"></script>
<script src="template/js/home.js"></script>


</body>
</html>