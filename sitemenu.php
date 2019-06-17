<div class="topnav">
    <div class="w3-hide-small">
        <?php
        $sqlm = "select * from menu order by `order_s`";
        $resm = mysqli_query($connection, $sqlm);
        while ($fildm = mysqli_fetch_assoc($resm)) {
            ?>
            <a href="<?php echo($fildm['link']); ?>" class="nav"><?php echo($fildm['title']); ?></a>
            <?php
        }
        ?>
    </div>
    <div class="w3-hide-large w3-hide-medium">
        <a onclick="document.getElementById('id01').style.display='block'" target="_blank"
           class="nav w3-text-white"><span class="w3-xlarge">☰</span></a>

        <div id="id01" class="w3-modal">
            <div class="w3-modal-content w3-animate-top w3-card-4">
                <header class="w3-container w3-center heade-modal">
                    <span onclick="document.getElementById('id01').style.display='none'"
                          class="w3-button w3-display-topright w3-text-pink">&times;</span>

                </header>
                <div class="">
                    <ul class="w3-center w3-text-gray nav-respansiv">
                        <?php
                        $sqlm = "select * from menu order by `order_s`";
                        $resm = mysqli_query($connection, $sqlm);
                        while ($fildm = mysqli_fetch_assoc($resm)) {
                            ?>
                            <li class="relative"><a href="<?php echo($fildm['link']); ?>"><i
                                            class="fas <?php echo($fildm['fico']); ?> w3-large icon-modal-nav"></i><?php echo($fildm['title']); ?>
                                </a></li>
                            <?php
                        }
                        ?>
                    </ul>
                </div>

            </div>
        </div>

    </div>
    <div class="left-float">
        <!--<form class="left-float padeng-top-4px">
            <input type="search">
        </form>-->

        <a href="#">
            <button class="w3-btn w3-border w3-teal w3-round-medium btn-home"><i
                        class="fas fa-user-plus icon-nav"></i>ثبت نام
            </button>
        </a>
        <a href="selection-login.html">
            <button class="w3-btn w3-border w3-green w3-round-medium left-float btn-home"><i
                        class="fas fa-sign-in-alt icon-nav"></i>ورود
            </button>
        </a>
    </div>

</div>
