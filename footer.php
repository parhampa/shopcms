<footer>
    <div class="bac-footer">
        <div class="w3-row bac-footer-opacity">
            <div class="w3-col s12 img-brand">
                <img src="template/img/logo1.png" class="w3-image w3-responsive">
            </div>

            <div class="w3-col s12 content-brand-footer">
                <h3>
                    دیگه وقتشه زندگینو بسازی ...
                </h3>
            </div>

            <div class="w3-col s12 m6 icon-brand-footer">
                <div class="w3-row">
                    <div class="w3-row">
                        <div class="w3-col m8 s10 margin-icon-footer">
                            <div class="block">
                                <a href="https://t.me/zendeginogroup" target="_blank" title="@zendeginogroup">
                                    <i class="hovicon effect-2 sub-a"><i class="fab fa-telegram-plane icon-header"></i></i>
                                </a>
                            </div>
                            <div class="block">
                                <a href="https://www.instagram.com/zendeginoapp/?hl=en" target="_blank"
                                   title="zendeginoapp">
                                    <i class="hovicon effect-2 sub-a"><i class="fab fa-instagram icon-header"></i></i>
                                </a>
                            </div>
                            <div class="block">
                                <a href="https://www.linkedin.com/in/zendegino-app-881162175/" title="zendegino-app"
                                   target="_blank">
                                    <i class="hovicon effect-2 sub-a"><i class="fab fa-linkedin icon-header"></i></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bac2-footer">
        <div class="w3-row">
            <div class="w3-col l3 m4 s12 w3-container">
                <h5 class="font-titr text-shadow w3-text-white">
                    لینک های مرتبط
                </h5>
                <hr class="hr-30">

                <div class="w3-row w3-text-white" style="padding-right: 6%">
                    <?php
                    $sqlf = "select * from related_links order by order_s desc";
                    $resf = mysqli_query($connection, $sqlf);
                    while ($fildf = mysqli_fetch_assoc($resf)) {
                        ?>
                        <div class="w3-col s12 w3-margin-bottom">
                            <a href="<?php echo($fildf['link']); ?>" target="_blank">
                                <span><?php echo($fildf['title']); ?></span>
                            </a>
                        </div>
                    <?php } ?>
                </div>

            </div>
            <div class="w3-col l5 m8 s12">

                <div class="w3-row w3-container w3-margin-top">
                    <div class="w3-col s12 address">
                        <i class="fas fa-map-marker-alt icon-footer"></i>
                        <span> آدرس:</span>

                        <span class="address-content">
                    مشهد،سجاد، بزرگمهر شمالی یک ، مجتمع آرین ، طبقه دوم ، واحد یک
                        </span>
                    </div>

                    <div class="w3-col s12 address">
                        <i class="fas fa-phone-square icon-footer"></i>
                        <span> تلفن تماس:</span>

                        <span class="address-content">
                    14-37606810-051
                        </span>
                    </div>

                    <div class="w3-col s12 address">
                        <i class="fas fa-fax icon-footer"></i>
                        <span> نمابر:</span>

                        <span class="address-content">
                    37640379-051
                        </span>
                    </div>
                </div>
            </div>

            <div class="w3-col l4 m12 s12 w3-center w3-margin-top" style="display: none;">
                <a href="#"><img src="template/img/namad-e.png"></a>
                <a href="#"><img src="template/img/reza.png"></a>
            </div>
        </div>
    </div>
</footer>