<?php
include("config.php");
if (isset($_GET['mor']) == false) {
    die();
}
$mor = sqlint($_GET['mor']);
if ($mor <= 2) {
    $mor = 2;
}
$mor = (($mor - 1) * 12);
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
$sql = "select * from aghsat $filter order by id desc limit $mor,12";
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