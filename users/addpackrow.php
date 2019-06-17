<?php
include("ses.php");
include("../config.php");
$user = $_SESSION['user'];
if(isset($_GET['lastid'])==false){

    die();
}
$lastid = sqlint($_GET['lastid']);
if($lastid == ""){
    die();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>افزودن محتویات پکیج</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!--       bootstrap           -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.0.0/css/bootstrap.min.css" integrity="sha384-P4uhUIGk/q1gaD/NdgkBIl3a6QywJjlsFJFk7SPRdruoGddvRVSwv5qFnvZ73cpz" crossorigin="anonymous">-->

    <!--   icons       -->
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">


    <link href="../assets/css/font.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="../assets/scss/style.css">
    <link rel="stylesheet" href="../assets/css/rtl.css">
    <link rel="stylesheet" href="../assets/css/dashbord.css">


    <link rel="stylesheet" type="text/css" href="../assets/css/file/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/file/demo.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/file/component.css"/>


    <script>
        (function (e, t, n) {
            var r = e.querySelectorAll("html")[0];
            r.className = r.className.replace(/(^|\s)no-js(\s|$)/, "$1js$2")
        })
        (document, window, 0);


        function Comma(Num) {
            Num += '';
            Num = Num.replace(',', '');
            Num = Num.replace(',', '');
            Num = Num.replace(',', '');
            Num = Num.replace(',', '');
            Num = Num.replace(',', '');
            Num = Num.replace(',', '');
            x = Num.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1))
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            return x1 + x2;
        }

    </script>

</head>
<body>

<!-- Left Panel -->

<?php
include("aside.php");
?><!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <?php include("header.php"); ?>
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>افزودن محتویات پکیج</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 formadmin">


                <div class="row">
                    <div class="col-md-9">

                        <script>
                            function showkala() {
                                datatxt = document.getElementById('txtkala').value;
                                url = "addpackrow.php?fi=" + datatxt + "&lastid=" + "<?php echo ($lastid);?>" ;
                                location.replace(url);
                            }
                        </script>
                        <div class="form-group pull-right">
                            <input type="text" id="txtkala" class="search form-control" placeholder="جستجو کالا ">
                        </div>

                        <div class="form-group pull-right">
                            <button class="search btn btn-secondary" onclick="showkala();"> اعمال</button>
                        </div>


                        <table class="table table-striped table-bordered table-list table-responsive-xl results" style="height: 350px;overflow-y: scroll;">
                            <thead>
                            <tr>
                                <th>عنوان</th>
                                <th> فروشگاه</th>
                                <th>قیمت</th>
                                <th colspan="3">ابزار ها</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $fi = "";
                            if (isset($_GET['fi']) == true) {
                                $tmpfi = sqlstr($_GET['fi']);
                                $fi = "and `title` like '%$tmpfi%' ";
                            }
                            $sql = "select * from kala where `user`='$user' $fi order by id desc";
                            $res = mysqli_query($connection, $sql);
                            if (mysqli_num_rows($res) == 0) {
                                ?>
                                <tr class="warning no-result">
                                    <td colspan="4"><i class="fa fa-warning"></i> مورد یافت نشد</td>
                                </tr>
                            <?php }
                            $count = 0;
                            while ($fild = mysqli_fetch_assoc($res)) {
                                $count++;
                                ?>
                                <tr>

                                    <td><?php echo($fild["title"]); ?></td>
                                    <td>
                                        <?php
                                        $user1 = $fild['user'];
                                        $sql1 = "select `title` from users where `user` = '$user1'";
                                        $res1 = mysqli_query($connection, $sql1);
                                        $fild1 = mysqli_fetch_assoc($res1);
                                        echo($fild1['title']);
                                        ?></td>
                                    <td><?php echo($fild['price']); ?></td>
                                    <td>
                                        <?php
                                        $pid = $fild['id'];
                                        $sql2 = "select * from packrow where `Pid` = $pid and `type` = 0  and `user`='$user' and `PAid`=$lastid";
                                        $res2 = mysqli_query($connection,$sql2);
                                        if(mysqli_num_rows($res2)>0){
                                            $fild2 = mysqli_fetch_assoc($res2);
                                            ?>
                                            <a href="deletepackrow.php?id=<?php echo($fild2['id']); ?>&PAid=<?php echo($lastid); ?>&pg=0">
                                                <button class="btn btn-danger"><i class="fa fa-remove"></i>حذف از پکیج
                                                </button>
                                            </a>
                                            <?php
                                        }else {
                                            ?>

                                            <a href="addpackrow1.php?ty=0&Pid=<?php echo($fild['id']); ?>&PAid=<?php echo($lastid); ?>&pg=0">
                                                <button class="btn btn-success"><i class="fa fa-plus"></i>افزودن به پکیج
                                                </button>
                                            </a>
                                            <?php
                                        }
                                        ?>

                                    </td>

                                </tr>
                                <?php
                            }
                            ?>
                            </tbody>
                        </table>

                        <script>
                            function showkhadamat() {
                                datatxt = document.getElementById('txtkhadamat').value;
                                url = "addpackrow.php?fi1=" + datatxt +"&lastid=" + "<?php echo ($lastid);?>" ;
                                location.replace(url);
                            }
                        </script>
                        <div class="form-group pull-right">
                            <input type="text" id="txtkhadamat" class="search form-control" placeholder="جستجو خدمات ">
                        </div>

                        <div class="form-group pull-right">
                            <button class="search btn btn-secondary" onclick="showkhadamat();"> اعمال</button>
                        </div>
                        <table class="table table-striped table-bordered table-list table-responsive-xl results" style="height: 350px;overflow-y: scroll;">
                            <thead>
                            <tr>

                                <th>عنوان </th>
                                <th> فروشگاه</th>
                                <th>قیمت</th>
                                <th colspan="3">ابزار ها</th>

                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $fi1="";
                            if(isset($_GET['fi1'])==true)
                            {
                                $tmpfi=sqlstr($_GET['fi1']);
                                $fi1="and `title` like '%$tmpfi%' ";
                            }
                            $sql = "select * from khadamat where `user`='$user' $fi1 order by id desc";
                            $res = mysqli_query($connection, $sql);
                            if(mysqli_num_rows($res) == 0){
                                ?>
                                <tr class="warning no-result">
                                    <td colspan="4"><i class="fa fa-warning"></i> مورد یافت نشد</td>
                                </tr>
                            <?php }
                            $count = 0;
                            while ($fild = mysqli_fetch_assoc($res)) {
                                $count++;
                                ?>
                                <tr>
                                    <td><?php echo($fild["title"]); ?></td>
                                    <td>
                                        <?php
                                        $user1 = $fild['user'];
                                        $sql1 = "select `title` from users where `user` = '$user1'";
                                        $res1 = mysqli_query($connection, $sql1);
                                        $fild1 = mysqli_fetch_assoc($res1);
                                        echo($fild1['title']);
                                        ?>
                                    </td>
                                    <td><?php echo($fild["price"]); ?></td>
                                    <td>
                                        <?php
                                        $pid = $fild['id'];
                                        $sql2 = "select * from packrow where Pid = $pid and `type` = 1 and `user`='$user' and `PAid`=$lastid";
                                        $res2 = mysqli_query($connection,$sql2);
                                        if(mysqli_num_rows($res2)>0){
                                            $fild2 = mysqli_fetch_assoc($res2);
                                            ?>
                                            <a href="deletepackrow.php?id=<?php echo($fild2['id']); ?>&PAid=<?php echo($lastid); ?>&pg=0">
                                                <button class="btn btn-danger"><i class="fa fa-remove"></i>حذف از پکیج
                                                </button>
                                            </a>
                                            <?php
                                        }else {
                                            ?>

                                            <a href="addpackrow1.php?ty=1&Pid=<?php echo($fild['id']); ?>&PAid=<?php echo($lastid); ?>&pg=0">
                                                <button class="btn btn-success"><i class="fa fa-plus"></i>افزودن به پکیج
                                                </button>
                                            </a>
                                            <?php
                                        }
                                        ?>

                                    </td>

                                </tr>
                                <?php
                            }
                            ?>
                            </tbody>
                        </table>




                        <label>مجموع قیمت:</label>
                        <?php
                        $sum = "";
                        $sqlqr = "select * from kala where id in (select Pid from packrow where PAid = $lastid and `type`=0) and `user`='$user'";
                        $result = mysqli_query($connection,$sqlqr);
                        $numrow = mysqli_num_rows($result);
                        $sum1 = 0;
                        $i = 0;
                        while($fild=mysqli_fetch_assoc($result)){
                            $sum1 += $fild['price'];
                            $i++;
                        }
                        $sqlqr1 = "select * from khadamat where id in (select Pid from packrow where PAid = $lastid and `type`=1) and `user`='$user'";
                        $result1 = mysqli_query($connection,$sqlqr1);
                        $numrow1 = mysqli_num_rows($result1);
                        $sum2 = 0;
                        $j = 0;
                        while($fild1=mysqli_fetch_assoc($result1)){
                            $sum2 += $fild1['price'];
                            $j++;
                        }
                        echo ($sum1+$sum2);
                        ?>
                        <br>
                        <form method="post" action="updatepricepack.php?id=<?php echo($lastid); ?>&sum=<?php echo($sum1+$sum2); ?>">
                            <label for="finalprice">قیمت نهایی</label>
                            <input type="text" name="finalprice" id="finalprice">
                            <button>درج</button>
                        </form>
                    </div>


                    <div class="col-md-3" style="min-height: 100px; background: silver ">
                        <ul><h5 style="font-weight: bold;">کالا</h5>
                            <?php
                            $qr = "select * from packrow where type=0 and `user`='$user' and PAid=$lastid";
                            $resu = mysqli_query($connection,$qr);
                            while($feild = mysqli_fetch_assoc($resu)){

                                ?>
                                <li>
                                    <?php
                                    $proid = $feild['Pid'];
                                    $qr = "select * from kala where id = $proid and `user`='$user'";
                                    $resu1 = mysqli_query($connection,$qr);
                                    $feild1 = mysqli_fetch_assoc($resu1);
                                    echo($feild1['title']);
                                    ?>
                                    <span><a href="deletepackrow.php?id=<?php echo($feild['id']); ?>&PAid=<?php echo($lastid); ?>&pg=0" style="color:red;">x</a></span>
                                </li>
                                <?php

                            }
                            ?>
                        </ul>
                        <ul><h5 style="font-weight: bold;">خدمات</h5>
                            <?php
                            $qr = "select * from packrow where type=1 and `user`='$user' and PAid=$lastid";
                            $resu = mysqli_query($connection,$qr);
                            while($feild = mysqli_fetch_assoc($resu)){

                                ?>
                                <li>
                                    <?php
                                    $proid = $feild['Pid'];
                                    $qr = "select * from khadamat where id = $proid and `user`='$user'";
                                    $resu1 = mysqli_query($connection,$qr);
                                    $feild1 = mysqli_fetch_assoc($resu1);
                                    echo($feild1['title']);
                                    ?>
                                    <span><a href="deletepackrow.php?id=<?php echo($feild['id']); ?>&PAid=<?php echo($lastid); ?>&pg=0" style="color:red;">x</a></span>
                                </li>
                                <?php

                            }
                            ?>
                        </ul>
                    </div>
                </div>


            </div>
        </div>
    </div>

</div>

<script src="../assets/js/custom-file-input.js"></script>

<script src="../assets/js/bootstrap.min.js"></script>

<script src="../assets/js/jquery-3.3.1.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>

</body>
</html>