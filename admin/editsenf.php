<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    ?>
    <script>
        alert("صنفی انتخاب نشده است...");
        location.replace("showsenf.php");
    </script>
    <?php
    die();
}
if ($_GET['id'] == "") {
    ?>
    <script>
        alert("صنفی انتخاب نشده است...");
        location.replace("showsenf.php");
    </script>
    <?php
    die();

}
$id = sqlint($_GET['id']);
$sql = "select * from asnaf where `id` = $id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    ?>
    <script>
        alert("صنفی وجود ندارد...");
        location.replace("showsenf.php");
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
    <title>ویرایش صنف</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!--       bootstrap           -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.0.0/css/bootstrap.min.css" integrity="sha384-P4uhUIGk/q1gaD/NdgkBIl3a6QywJjlsFJFk7SPRdruoGddvRVSwv5qFnvZ73cpz" crossorigin="anonymous">-->
    <link rel="stylesheet" href="assets/css/bootstraprtl.min.css">

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
    </script>

</head>
<body>

<!-- Left Panel -->

<?php
include("leftside.php");
?>
<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <?php include("topinfo.php"); ?>
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>ویرایش صنف</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="editsenf1.php?id=<?php echo($fild['id']); ?>" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name">عنوان صنف</label>
                        <input type="text" class="form-control" id="name" name="Senfname"
                               value="<?php echo($fild['title']); ?>">
                    </div>

                    <div class="form-group">
                        <label for="father">دسته پدر</label>
                        <select class="form-control" id="father" name="father">
                            <option value="0">بدون دسته</option>
                            <?php
                            $sql1 = "select * from asnaf where father = 0";
                            $result = mysqli_query($connection, $sql1);
                            while ($fild1 = mysqli_fetch_assoc($result)) {
                                ?>
                                <option value="<?php echo($fild1['id']); ?>" <?php if ($fild1['id'] == $fild['father']) {
                                    echo("selected");
                                } ?>><?php echo($fild1['title']); ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="type">نوع خدمات</label>
                        <select class="form-control" id="type" name="type">
                            <option value="0" <?php if ($fild['type'] == 0) {
                                echo("selected");
                            } ?>>تشریفات
                            </option>
                            <option value="1" <?php if ($fild['type'] == 1) {
                                echo("selected");
                            } ?>>جهیزیه
                            </option>
                        </select>
                    </div>

                    <div class="form-group">

                        <input type="file" name="file1" id="file-1" class="inputfile inputfile-1"
                               data-multiple-caption="{count} فایل انتخاب شد." multiple/>
                        <label for="file-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17">
                                <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
                            </svg>
                            <span>انتخاب تصویر</span>
                        </label>
                        <label id="MsgBox"></label>
                        <?php
                        if ($fild['pic'] != "") {
                            ?>
                            <div style="position: relative;">
                                <a style="position: absolute; top: 0; right: 0;"
                                   href="deletelogosenf.php?id=<?php echo($fild['id']); ?>">
                                    <i class="fa fa-close"></i>
                                </a>
                                <img src="<?php
                                if (is_numeric(strpos($fild['pic'], "../"))==false) {
                                    echo("../");
                                }
                                echo($fild['pic']);
                                ?>" width="128px" height="128px">
                            </div>
                            <?php
                        }
                        ?>


                    </div>


                    <div class="form-group col-md-12 btn-form">

                        <button type="submit" class="btn btn-primary" name="submit">ثبت اطلاعات</button>

                    </div>

                </form>
            </div>
        </div>
    </div>

</div>

<script src="../assets/js/jquery-3.3.1.min.js"></script>
<script src="../assets/js/custom-file-input.js"></script>

<script src="https://cdn.rtlcss.com/bootstrap/v4.0.0/js/bootstrap.min.js"
        integrity="sha384-54+cucJ4QbVb99v8dcttx/0JRx4FHMmhOWi4W+xrXpKcsKQodCBwAvu3xxkZAwsH"
        crossorigin="anonymous"></script>
<script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>
<script src="assets/js/lib/chart-js/Chart.bundle.js"></script>
<script src="assets/js/dashboard.js"></script>
<script src="assets/js/widgets.js"></script>

</body>
</html>
