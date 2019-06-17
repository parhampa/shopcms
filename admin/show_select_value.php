<?php
include("ses.php");
include("../config.php");
if (isset($_GET['sid']) == false) {
    die();
}
$sid = sqlint($_GET['sid']);
$sql = "select * from `item_select` where `id`=$sid";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
if (isset($_GET['cat_id']) == false) {
    die();
}
$cat_id = sqlint($_GET['cat_id']);
$sql = "select * from `content_cat` where `id`=$cat_id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    die();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>نمایش مقادیر آیتم های انتخابی</title>
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
                    <h1>نمایش مقادیر آیتم های انتخابی</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container table-margin">
        <div class="row">
            <div class="col-md-10 m-auto">
                <div class="panel panel-default panel-table">
                    <div class="panel-body">
                        <div>
                            <a href="add_select_value.php?cat_id=<?php echo($cat_id); ?>&sid=<?php echo($sid); ?>">
                                <button class="btn btn-info color-block">+ افزودن مقدار
                                </button>
                            </a>
                            <a href="show_select_item.php?cat=<?php echo($cat_id); ?>&sid=<?php echo($sid); ?>">
                                <button class="btn btn-danger" data-toggle="modal">بازگشت
                                </button>
                            </a>

                            <br>
                            <br>
                        </div>

                        <div class="form-group pull-right">
                            <input type="text" id="txtcat" class="search form-control" placeholder="جستجو دسته بندی">
                        </div>
                        <div class="form-group pull-right">
                            <button class="search btn btn-secondary" onclick=""> اعمال</button>
                        </div>
                        <table class="table table-striped table-bordered table-list">
                            <thead>
                            <tr>
                                <th class="hidden-xs">#</th>
                                <th>عنوان مقدار</th>
                                <th>ترتیب مقدار</th>
                                <th>ابزار ها</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php

                            $sql = "select * from `item_select_val` where `sid` = $sid";
                            $res = mysqli_query($connection, $sql);
                            if (mysqli_num_rows($res) == 0) {
                                ?>
                                <tr class="warning no-result">
                                    <td colspan="4"><i class="fa fa-warning"></i> مورد یافت نشد</td>
                                </tr>
                            <?php }
                            while ($fild = mysqli_fetch_assoc($res)) {
                                ?>
                                <tr>
                                    <td class="hidden-xs"><?php echo($fild['id']); ?></td>

                                    <td><?php echo($fild['title']); ?></td>
                                    <td><?php echo($fild['order_val']); ?></td>
                                    <td>
                                        <a href="edit_select_value.php?sid=<?php echo($sid); ?>&cat_id=<?php echo($cat_id); ?>&id=<?php echo($fild['id']); ?>">
                                            <button class="btn btn-light"><i class="fa fa-edit"></i> ویرایش</button>
                                        </a>
                                        <button class="btn btn-danger" data-toggle="modal"
                                                data-target="#delete<?php echo($fild['id']); ?>">
                                            <i class="fa fa-remove"></i> حذف
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
$sql3 = "select * from `item_select_val`";
$res3 = mysqli_query($connection, $sql);
while ($fild3 = mysqli_fetch_assoc($res3)) {
    ?>
    <div class="modal fade modal-ltr" id="delete<?php echo($fild3['id']); ?>" tabindex="-1" role="dialog"
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
                    <h4>
                        آیا از حذف مطمئن هستید؟
                    </h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger modal-btn" data-dismiss="modal">خیر<i
                                class="fa fa-remove"></i></button>
                    <a href="delete_select_value.php?id=<?php echo($fild3['id']); ?>">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>
<script src="../assets/js/jquery-3.3.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>
