<?php
include("ses.php");
include("../config.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>نمایش گالری</title>
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
include("aside.php");
?>
<!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <?php include("header.php"); ?>
    <!-- /header -->
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>نمایش گالری</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container table-margin">
        <div class="row">
            <div class="col-md-10 m-auto">
                <div class="panel panel-default panel-table">
                    <div class="panel-body">

                        <table class="table table-striped table-bordered table-list table-responsive-xl results">
                            <thead>
                            <tr>
                                <th class="hidden-xs">#</th>
                                <th>عنوان عکس</th>
                                <th colspan="3">ابزار ها</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php
                            $user=$_SESSION['user'];
                            $sql = "select * from gallery where `user`='$user'";
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
                                    <td class="hidden-xs"><?php echo($count); ?></td>
                                    <td><?php echo($fild["title"]); ?></td>
                                    <td>
                                        <a href="<?php echo ($fild['pic']);?>" target="_blank">
                                            <button class="btn btn-info color-block"><i class="fa fa-pencil"></i> مشاهده
                                            </button>
                                        </a>
                                        <a href="editgallery.php?id=<?php echo($fild['id']); ?>">
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
$sql = "select * from gallery where `user`='$user'";
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
                    <a href="deletegallery.php?id=<?php echo($fild['id']); ?>">
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

<script src="../assets/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>

</body>
</html>
