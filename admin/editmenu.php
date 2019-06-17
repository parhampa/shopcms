<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    ?>
    <script>
        alert("منویی انتخاب نشده است...");
        location.replace("showmenus.php");
    </script>
    <?php
    die();
}
if ($_GET['id'] == "") {
    ?>
    <script>
        alert("منویی انتخاب نشده است...");
        location.replace("showmenus.php");
    </script>
    <?php
    die();

}
$id = sqlint($_GET['id']);
$sql = "select * from menu where id = $id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    ?>
    <script>
        alert("منویی وجود ندارد...");
        location.replace("showmenus.php");
    </script>
    <?php
    die();
}
$fild = mysqli_fetch_assoc($res);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ویرایش منو</title>
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
                    <h1>ویرایش منو</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="editmenu1.php?id=<?php echo($fild['id']); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="title">عنوان منو</label>
                        <input type="text" class="form-control" id="title" name="title"
                               value="<?php echo($fild['title']); ?>">
                    </div>
                    <div class="form-group">
                        <label for="father">منوی پدر</label>
                        <select class="form-control" id="father" name="father">
                            <option value="0">بدون منوی پدر</option>
                            <?php
                            $sqlf = "select * from `menu` where `father`=0";
                            $resf = mysqli_query($connection, $sqlf);
                            while ($fildf = mysqli_fetch_assoc($resf)) {
                                ?>
                                <option value="<?php echo($fildf['id']); ?>" <?php
                                if ($fild['father'] == $fildf['id']) {
                                    echo("selected");
                                }
                                ?>><?php echo($fildf['title']); ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="fico">fave icon</label>
                        <input type="text" class="form-control" id="fico" name="fico"
                               value="<?php echo($fild['fico']); ?>">
                    </div>
                    <div class="form-group">
                        <label for="order_s">ترتیب</label>
                        <input type="text" class="form-control" id="order_s" name="order_s"
                               value="<?php echo($fild['order_s']); ?>">
                    </div>
                    <div class="form-group">
                        <label for="link">لینک</label>
                        <input type="text" class="form-control" id="link" name="link"
                               value="<?php echo($fild['link']); ?>">
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
