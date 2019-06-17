<?php
include("ses.php");
include("../config.php");
?>
<!DOCTYPE html>
<html lang="fa">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>نمایش اقساط</title>
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
<?php include("leftside.php"); ?>
<!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <?php include("topinfo.php"); ?>
    <!-- /header -->
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>نمایش اقساط</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container table-margin">
        <div class="row">
            <div class="col-md-10 m-auto">
                <div class="panel panel-default panel-table">
                    <div class="panel-body">
                        <table class="table table-striped table-bordered table-list">
                            <thead>
                            <tr>
                                <th class="hidden-xs">#</th>
                                <th>عنوان کالا</th>
                                <th>عنوان فروشگاه</th>
                                <th>از قیمت (ریال)</th>
                                <th>تا قیمت (ریال)</th>
                                <th>از ماه</th>
                                <th>تا ماه</th>
                                <th>ابزار ها</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql = "select * from aghsat";
                            $res = mysqli_query($connection, $sql);
                            if (mysqli_num_rows($res) == 0) {
                                ?>
                                <tr class="warning no-result">
                                    <td colspan="4"><i class="fa fa-warning"></i> مورد یافت نشد</td>
                                </tr>
                                <?php
                            }
                            $count = 0;
                            while ($fild = mysqli_fetch_assoc($res)) {
                                $count++;
                                ?>
                                <tr>
                                    <td class="hidden-xs"><?php echo($count); ?></td>
                                    <td><?php
                                        $ty = $fild['ty'];
                                        $id = $fild['Pid'];
                                        $sql2 = "select * from khadamat where id =$id";
                                        if ($ty == 0) {
                                            $sql2 = "select * from kala where id =$id";
                                        }
                                        $res2 = mysqli_query($connection, $sql2);
                                        $fild2 = mysqli_fetch_assoc($res2);
                                        echo($fild2['title']);
                                        ?></td>
                                    <td><?php
                                        $us = $fild2['user'];
                                        $sql3 = "select * from users where `user`='$us'";
                                        $res3 = mysqli_query($connection, $sql3);
                                        $fild3 = mysqli_fetch_assoc($res3);
                                        echo($fild3['title']);
                                        ?></td>
                                    <td><?php echo($fild['price1']); ?></td>
                                    <td><?php echo($fild['price2']); ?></td>
                                    <td><?php echo($fild['month1']); ?></td>
                                    <td><?php echo($fild['month2']); ?></td>
                                    <td>
                                        <button class="btn btn-info color-block"><i class="fa fa-pencil"></i> مشاهده
                                        </button>
                                        <a href="editaghsat.php?id=<?php echo($fild['id']); ?>">
                                            <button class="btn btn-light"><i class="fa fa-edit"></i> ویرایش</button>
                                        </a>
                                        <button class="btn btn-danger" data-toggle="modal"
                                                data-target="#delete<?php echo($fild['id']); ?>"><i
                                                    class="fa fa-remove"></i> حذف
                                        </button>

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
    </div>

</div>
<?php
$sql = "select * from aghsat";
$res = mysqli_query($connection, $sql);
$count = 0;
while ($fild = mysqli_fetch_assoc($res)) {
    ?>

    <div class="modal fade modal-ltr" id="delete<?php echo($fild['id']); ?>" tabindex="-1" role="dialog"
         aria-labelledby="exampleModalCenterTitle"
         aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h4>آیا از حذف مطمئن هستید؟</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger modal-btn" data-dismiss="modal">خیر<i
                                class="fa fa-remove"></i></button>
                    <a href="deleteaghsat.php?id=<?php echo($fild['id']); ?>">
                        <button type="button" class="btn btn-success">بلی<i
                                    class="fa fa-check"></i>
                        </button>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <?php
}
?>

<script src="../assets/js/custom-file-input.js"></script>

<script src="../assets/js/bootstrap.min.js"></script>

<script src="../assets/js/jquery-3.3.1.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>

</body>
</html>

