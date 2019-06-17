<?php
include("ses.php");
include("../config.php");
$back = "showoffers.php";
if(isset($_GET['id'])==false){
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است." , $back);
    die();
}
$id = sqlint($_GET['id']);
if($id == ""){
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است." , $back);
    die();
}
$sql = "select * from offer_product WHERE id = $id";
$res = mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0){
    msg("پیشنهاد ویژه ای وجود ندارد." , $back);
    die();
}
$fild = mysqli_fetch_assoc($res);
?>
<!DOCTYPE html>
<html lang="fa">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ویرایش پیشنهاد ویژه </title>
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
                    <h1>ویرایش پیشنهاد ویژه</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="editoffer1.php?id=<?php echo ($fild['id']);?>" method="post" >
                    <div class="form-group">
                        <label for="start_date">تاریخ شروع</label>
                        <input type="text" class="form-control" id="start_date"
                               name="start_date" value="<?php echo ($fild['start_date']);?>">
                    </div>

                    <div class="form-group">
                        <label for="end_date">تاریخ پایان</label>
                        <input type="text" class="form-control" id="end_date"
                               name="end_date" value="<?php echo ($fild['end_date']);?>">
                    </div>

                    <div class="form-group">
                        <label for="percent">درصد</label>
                        <input type="text" class="form-control" id="percent"
                               name="percent" value="<?php echo ($fild['percent']);?>">
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

