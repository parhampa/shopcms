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
        <div class="w3-col s12" style="margin-top: 3%;margin-bottom: 3%;">
            <div class="w-95 m-auto">
                <a target="_blank"
                   href="https://www.google.com/maps/place/%D8%B2%D9%86%D8%AF%DA%AF%DB%8C%D9%86%D9%88%E2%80%AD/@36.317828,59.5546174,18z/data=!4m5!3m4!1s0x3f6c93b520043f83:0x9f13dcf5b18abafe!8m2!3d36.3181487!4d59.5536117?hl=fa">
                    <img src="template/img/map-zendegino.PNG" style="width: 100%;height: 100%">
                </a>

            </div>
        </div>

        <div class="w3-col s12">
            <div class="w3-row w3-container">
                <div class="w3-col s12 m6">
                    <div class="w-95 m-auto w3-card-2 w3-padding box-radius w3-margin-bottom"
                         style="min-height: 400px;">
                        <h5 class="font-titr text-shadow w3-text-gray">

                            اطلاعات تماس

                        </h5>
                        <hr class="hr-30">

                        <div class="w3-row w3-container w3-margin-top">
                            <div class="w3-col s12 contact-page">
                                <i class="fas fa-map-marker-alt icon-footer w3-text-pink"></i>
                                <span class="w3-text-pink"> آدرس:</span>

                                <span class="address-content">
                                   مشهد،سجاد، بزرگمهر شمالی یک ، مجتمع آرین ، طبقه دوم ، واحد یک
                               </span>
                            </div>

                            <div class="w3-col s12 contact-page">
                                <i class="fas fa-phone-square icon-footer w3-text-pink"></i>
                                <span class="w3-text-pink"> تلفن تماس:</span>

                                <span class="address-content">
                                   14-37606810-051
                               </span>
                            </div>

                            <div class="w3-col s12 contact-page">
                                <i class="fas fa-fax icon-footer w3-text-pink"></i>
                                <span class="w3-text-pink"> نمابر:</span>

                                <span class="address-content">
                                   37640379-051
                               </span>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="w3-col s12 m6">
                    <div class="w-95 m-auto w3-card-2 w3-padding box-radius w3-margin-bottom" style="min-height: 400px">
                        <h5 class="font-titr text-shadow w3-text-gray">
                            <i class="fas fa-phone-square icon-footer w3-text-pink"></i>
                            فرم تماس

                        </h5>
                        <hr class="hr-30">

                        <div class="w3-col s12">
                            <form class="w3-container w3-card-4 w3-light-grey w3-text-pink w3-margin"
                                  action="adducm.php?u=--" method="post">


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

<?php include("footer.php"); ?>

<script src="template/js/jquery-3.3.1.min.js"></script>

<script src="template/js/slider/owl.carousel.min.js"></script>

<script src="template/js/slider/show_slide.js"></script>


</body>
</html>