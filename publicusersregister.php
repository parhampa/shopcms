<?php
include("config.php");
?>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>ورود کاربران</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="template/css/w3.css">

    <link rel="stylesheet" href="template/css/all.min.css">

    <link rel="stylesheet" href="template/css/owl.carousel.css">

    <link rel="stylesheet" href="template/css/main.css">

    <link rel="stylesheet" href="template/css/login.css">

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

<main class="main-login">
    <div class="login-holder">
        <div class="container">
            <div class="login">
                <div class="form-holder">
                    <div class="dish"></div>
                    <div class="header">
                        <a class="header-item" href="#login" id="login-caller">ورود</a>
                        <a class="header-item activated" href="#register" id="register-caller">عضویت</a>
                    </div>
                    <div class="form" id="login">
                        <form>
                            <div class="input-row">
                                <input class="input" id="user-login" type="text" required>
                                <label class="label">نام کاربری</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div class="input-row">
                                <input class="input" id="pass-login" type="password" required>
                                <label class="label">گذرواژه</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div>
                                <input class="check-input" type="checkbox" id="login-checkbox"/>
                                <label for="login-checkbox">من را به خاطر بسپار.</label>
                            </div>

                            <div class="sub-button">
                                <input class="button" type="submit" value="ارسال">
                            </div>
                        </form>

                    </div>
                    <div class="form activated" id="register">
                        <form action="publicusersregister1.php" method="post">

                            <div class="input-row">
                                <input class="input" id="user" type="text" name="user" required>
                                <label class="label">نام کاربری</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div class="input-row">
                                <input class="input" id="pass" type="password" name="pass" required>
                                <label class="label">گذرواژه</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div class="input-row">
                                <input class="input" id="name" type="text" name="name" required>
                                <label class="label">نام</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>

                            <div class="input-row">
                                <input class="input" id="family" type="text" name="family" required>
                                <label class="label">نام خانوادگی</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div class="input-row">
                                <input style="direction: ltr" class="input" id="email" type="email" name="email"
                                       required>
                                <label class="label">ایمیل</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div class="input-row">
                                <input class="input" id="mob" type="text" name="mob" required>
                                <label class="label">موبایل</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div class="input-row">
                                <input class="input" id="tel" type="text" name="tel" required>
                                <label class="label">تلفن ثابت</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div class="input-row">
                                <input style="direction: ltr" class="input" id="postal_code" name="postal_code"
                                       type="text" required>
                                <label class="label">کد پستی</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>

                            <div class="input-row">
                                <textarea class="input" id="addres" type="text" name="addres" required></textarea>
                                <label class="label">آدرس</label>
                                <span class="highlite"></span>
                                <span class="bar"></span>
                            </div>
                            <div>
                                <input class="check-input" type="checkbox" id="register-checkbox"/>
                                <label for="register-checkbox">از قوانین آگاهی دارم و با آن موافقم.</label>
                            </div>
                            <div class="sub-button">
                                <button class="button" type="submit" value="ارسال">ارسال</button>
                            </div>
                        </form>

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

<script src="template/js/login.js"></script>


</body>
</html>