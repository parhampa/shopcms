<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    msg("دسته بندی انتخاب نشده است...", "showcategories.php");
    die();
}
if ($_GET['id'] == "") {
    msg("دسته بندی انتخاب نشده است...", "showcategories.php");
    die();

}
$id = sqlint($_GET['id']);
$sql1 = "select * from content_cat where id = $id";
$res1 = mysqli_query($connection, $sql1);
if (mysqli_num_rows($res1) == 0) {
    msg("دسته بندی وارد شده صحیح نمی باشد...", "showcategories.php");
    die();
}
$fild1 = mysqli_fetch_assoc($res1);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ویرایش دسته بندی</title>
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
    </script>

</head>
<body>

<!-- Left Panel -->
<?php
include("leftside.php");
?><!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <?php include("topinfo.php"); ?><!-- /header -->
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>ویرایش دسته بندی</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="editcategory1.php?id=<?php echo($fild1['id']); ?>" method="POST"
                      enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name">عنوان دسته بندی</label>
                        <input type="text" class="form-control" id="name" name="name"
                               value="<?php echo($fild1['name']); ?>">
                    </div>


                    <div class="form-group">
                        <label for="ty">نوع دسته بندی</label>
                        <select class="form-control" id="ty" name="ty">
                            <option value="0" <?php if ($fild1['ty'] == 0) {
                                echo("selected");
                            } ?>>کالا
                            </option>
                            <option value="1" <?php if ($fild1['ty'] == 1) {
                                echo("selected");
                            } ?>>خدمات
                            </option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="Fid">دسته بندی پدر</label>
                        <select class="form-control" id="Fid" name="Fid">
                            <option value="0">بدون دسته بندی</option>
                            <?php
                            $sql = "select * from content_cat where Fid = 0";
                            $result = mysqli_query($connection, $sql);
                            while ($fild = mysqli_fetch_assoc($result)) {
                                ?>
                                <option value="<?php echo($fild['id']); ?>"<?php if ($fild['id'] == $fild1['Fid']) {
                                    echo("selected");
                                } ?>><?php echo($fild['name']); ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group col-md-12 btn-form">

                        <button type="submit" class="btn btn-primary" name="submit">ویرایش اطلاعات</button>

                    </div>

                </form>
            </div>
        </div>
    </div>

</div>

<script src="../assets/js/custom-file-input.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>
<script src="../assets/js/jquery-3.3.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>
