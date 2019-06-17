<?php
include("config.php");
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

//echo($filter);
if (isset($_GET['mor']) == false) {
    die();
}
$mor = sqlint($_GET['mor']);
if ($mor <= 2) {
    $mor = 2;
}
$mor = ($mor - 1) * 12;
$sql = "select * from kala $filter order by id desc limit $mor,12";
if (isset($_GET['khadamat']) == true) {
    $sql = "select * from khadamat $filter order by id desc limit $mor,12";
}
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    ?>
    <div class="w3-col l3 m4 s12">
        <div class="w3-card hover-card-m m-auto w-95 box-radius">
            <?php
            if (isset($_GET['khadamat']) == false)
            {
            ?>
            <a href="singel-kala.php?id=<?php echo($fild['id']); ?>" target="_blank">
                <?php
                }
                else {
                    ?>
                <a href="single-khedmat.php?id=<?php echo($fild['id']); ?>" target="_blank">
                    <?php
                }
                ?>
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
                        <?php
                        if (isset($_GET['khadamat']) == true) {
                            ?>
                            <a href="single-khedmat.php?id=<?php echo($fild['id']); ?>"
                               target="_blank">
                                <button class="button">مشاهده</button>
                            </a>
                            <?php
                        } else {
                            ?>
                            <a href="singel-kala.php?id=<?php echo($fild['id']); ?>"
                               target="_blank">
                                <button class="button">مشاهده</button>
                            </a>
                            <?php
                        }
                        ?>
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