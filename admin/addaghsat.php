<?php
include("ses.php");
include("../config.php");
if (isset($_GET['ty']) == false) {
    die();
}
$ty = sqlint($_GET['ty']);
if ($ty != 0 && $ty != 1) {
    die();
}
if (isset($_GET['pid']) == false) {
    die();
}
$pid = sqlint($_GET['pid']);
$sql = "select * from khadamat where id=$pid";
if ($ty == 0) {
    $sql = "select * from kala where id=$pid";
}
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
$fild = mysqli_fetch_assoc($res);
?>
<!DOCTYPE html>
<html lang="fa">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ایجاد اقساط</title>
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
                    <h1>ایجاد اقساط</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="addaghsat1.php?ty=<?php echo($ty); ?>&pid=<?php echo($pid); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="price1">از قیمت(ریال)</label>
                        <input type="text" class="form-control" id="price1" name="price1">

                    </div>
                    <div class="form-group">
                        <label for="price2">تا قیمت(ریال)</label>
                        <input type="text" class="form-control" id="price2" name="price2">

                    </div>
                    <div class="form-group">
                        <label for="month1">از ماه</label>
                        <input type="text" class="form-control" id="month1" name="month1">
                    </div>
                    <div class="form-group">
                        <label for="month2">تا ماه</label>
                        <input type="text" class="form-control" id="month2" name="month2">
                    </div>
                    <div class="form-group col-md-12 btn-form">

                        <button type="submit" class="btn btn-primary">ثبت اطلاعات</button>

                    </div>

                </form>
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

