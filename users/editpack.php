<?php
include("ses.php");
include("../config.php");
$user = $_SESSION['user'];
if (isset($_GET['id']) == false) {
    msgb("پکیجی انتخاب نشده است.");
    die();
}
if ($_GET['id'] == "") {
    msgb("پکیجی انتخاب نشده است.");
    die();
}
$id = sqlint($_GET['id']);
$sql = "select * from pack where id = $id and `user`='$user'";
$res = mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0){
    die();
}
$fild = mysqli_fetch_assoc($res);
$finalprice = $fild['price'];
$picture = $fild['pic'];

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ویرایش پکیج</title>
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
                    <h1>ویرایش پکیج</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 formadmin">
                <div class="row">
                    <div class="col-md-9">
                        <?php
                        $sum = "";
                        $sqlqr = "select * from kala where id in (select Pid from packrow where PAid = $id and `type`=0  and `user`='$user') and `user`='$user'";
                        $result = mysqli_query($connection,$sqlqr);
                        $numrow = mysqli_num_rows($result);
                        $sum1 = 0;
                        $i = 0;
                        while($fild1=mysqli_fetch_assoc($result)){
                            $sum1 += $fild1['price'];
                            $i++;
                        }
                        $sqlqr1 = "select * from khadamat where id in (select Pid from packrow where PAid = $id and `type`=1  and `user`='$user') and `user`='$user'";
                        $result1 = mysqli_query($connection,$sqlqr1);
                        $numrow1 = mysqli_num_rows($result1);
                        $sum2 = 0;
                        $j = 0;
                        while($fild2=mysqli_fetch_assoc($result1)){
                            $sum2 += $fild2['price'];
                            $j++;
                        }

                        ?>
                        <form action="editpack1.php?id=<?php echo($id); ?>&sum=<?php echo ($sum1+$sum2);?>" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="title">عنوان</label>
                                <input type="text" class="form-control" id="title" name="title" value="<?php echo($fild['title']); ?>">
                            </div>
                            <div class="form-group">
                                <label for="price">قیمت</label>
                                <input type="text" class="form-control"  id="price" name="price" value="<?php echo($fild['price']); ?>">
                            </div>
                            <span style="margin-bottom: 30px; padding: 10px; border: solid 1px gray; border-radius: 10px;">
                                <label>مجموع قیمت:</label>
                                <?php
                                echo ($sum1+$sum2);
                                ?>
                            </span>


                            <div class="form-group">

                                <input type="file" name="pic" id="pic" class="inputfile inputfile-1"
                                       data-multiple-caption="{count} فایل انتخاب شد." multiple/>
                                <label for="pic">
                                    <svg width="20" height="17" viewBox="0 0 20 17">
                                        <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
                                    </svg>
                                    <span>انتخاب تصویر</span>
                                </label>
                                <?php

                                if($picture != ""){
                                    ?>
                                    <div style="position: relative;">
                                        <a style="position: absolute; top: 0; right: 0;" href="deletepackimage.php?id=<?php echo ($id);?>">
                                            <i class="fa fa-close"></i>
                                        </a>
                                        <img src="<?php echo ($picture);?>" width="200px" height="200px" />

                                    </div>
                                    <?php
                                }
                                ?>
                            </div>

                            <div class="form-group col-md-12 btn-form">

                                <button type="submit" class="btn btn-primary">ثبت اطلاعات</button>

                            </div>

                        </form>
                    </div>
                    <div class="col-md-3" style="height: 400px;background: silver;margin-top: 6%">
                        <ul><h5 style="font-weight: bold;">کالا</h5>
                        <?php
                            $qr = "select * from packrow where type=0 and `user`='$user' and PAid=$id";
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
                                 <span><a href="deletepackrow.php?id=<?php echo($feild['id']); ?>&PAid=<?php echo($id); ?>&pg=1" style="color:red;">x</a></span>
                                </li>

                                <?php

                                }
                            ?>
                        </ul>
                        <ul><h5 style="font-weight: bold;">خدمات</h5>
                            <?php
                            $qr = "select * from packrow where type=1 and `user`='$user' and PAid=$id";
                            $resu = mysqli_query($connection,$qr);
                            while($feild = mysqli_fetch_assoc($resu)){

                                ?>
                                <li>
                                    <?php
                                    $proid = $feild['Pid'];
                                    $qr = "select * from khadamat where id = $proid  and `user`='$user'";
                                    $resu1 = mysqli_query($connection,$qr);
                                    $feild1 = mysqli_fetch_assoc($resu1);
                                    echo($feild1['title']);
                                    ?>
                                    <span><a href="deletepackrow.php?id=<?php echo($feild['id']); ?>&PAid=<?php echo($id); ?>&pg=1" style="color:red;">x</a></span>
                                </li>

                                <?php

                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="col-md-10 formadmin">
                <script>
                    function showkala() {
                        datatxt = document.getElementById('txtkala').value;
                        url = "editpack.php?fi=" + datatxt + "&id=" + "<?php echo ($id);?>" ;
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
                                $sql2 = "select * from packrow where `Pid` = $pid and `type` = 0  and `user`='$user' and PAid = $id";
                                $res2 = mysqli_query($connection,$sql2);
                                if(mysqli_num_rows($res2)>0){
                                    $fild2 = mysqli_fetch_assoc($res2);
                                    ?>
                                    <a href="deletepackrow.php?id=<?php echo($fild2['id']); ?>&PAid=<?php echo($id); ?>&pg=1">
                                        <button class="btn btn-danger"><i class="fa fa-remove"></i>حذف از پکیج
                                        </button>
                                    </a>
                                    <?php
                                }else {
                                    ?>

                                    <a href="addpackrow1.php?ty=0&Pid=<?php echo($fild['id']); ?>&PAid=<?php echo($id); ?>&pg=1">
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
                        url = "editpack.php?fi1=" + datatxt +"&id=" + "<?php echo ($id);?>" ;
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
                                $sql2 = "select * from packrow where Pid = $pid and `type` = 1 and `user`='$user' and PAid = $id";
                                $res2 = mysqli_query($connection,$sql2);
                                if(mysqli_num_rows($res2)>0){
                                    $fild2 = mysqli_fetch_assoc($res2);
                                    ?>
                                    <a href="deletepackrow.php?id=<?php echo($fild2['id']); ?>&PAid=<?php echo($id); ?>&pg=1">
                                        <button class="btn btn-danger"><i class="fa fa-remove"></i>حذف از پکیج
                                        </button>
                                    </a>
                                    <?php
                                }else {
                                    ?>

                                    <a href="addpackrow1.php?ty=1&Pid=<?php echo($fild['id']); ?>&PAid=<?php echo($id); ?>&pg=1">
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
