<?php
include("ses.php");
include("../config.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> پنل ادمین</title>
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
                    <h1>نمایش نظرات کاربران</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container table-margin">
        <div class="row">
            <div class="col-md-12 m-auto">
                <div class="panel panel-default panel-table">
                    <div class="panel-body">
                        <table class="table table-striped table-bordered table-list table-responsive results">
                            <thead>
                            <tr>
                                <th class="hidden-xs">#</th>
                                <th>نام و نام خانوادگی</th>
                                <th>متن پیام</th>
                                <th>ایمیل</th>
                                <th colspan="4">ابزار ها</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $sql = "select * from comment_user order by id desc";
                            $res = mysqli_query($connection, $sql);
                            $countid = 0;
                            while ($fild = mysqli_fetch_assoc($res)) {
                                $countid++;
                                ?>
                                <tr>
                                    <td class="hidden-xs"><?php echo($countid); ?></td>
                                    <td><?php echo($fild['name']); ?></td>
                                    <td>
                                        <div>
                                        <span class="comment-content">
                                        <?php echo($fild['txt']); ?>
                                        </span>
                                            <span>...</span>
                                        </div>
                                        <div class="text-center">
                                            <a data-toggle="modal" data-target="#show<?php echo($fild['id']); ?>"
                                               class="color-blue">ادامه متن</a>
                                        </div>

                                    </td>
                                    <td><?php echo($fild['email']); ?></td>
                                    <?php
                                    if ($fild['visit'] == 0) {
                                        ?>
                                        <td>
                                            <a href="visit_user_comment.php?id=<?php echo($fild['id']); ?>">
                                                <button class="btn btn-success"> تایید نظر</button>
                                            </a>
                                        </td>
                                        <?php
                                    } else {
                                        ?>
                                        <td>
                                            <a href="visit_user_comment.php?id=<?php echo($fild['id']); ?>">
                                                <button class="btn btn-danger"> عدم تایید نظر</button>
                                            </a>
                                        </td>
                                        <?php
                                    }
                                    ?>
                                    <td>

                                        <button class="btn btn-outline-info color-block">
                                            مشاهده
                                        </button>

                                    </td>
                                    <td>
                                        <button class="btn btn-outline-danger" data-toggle="modal"
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
$sql = "select * from comment_user order by id desc";
$res = mysqli_query($connection, $sql);
while ($fild = mysqli_fetch_assoc($res)) {
    ?>
    <div class="modal fade modal-ltr" id="show<?php echo($fild['id']); ?>" tabindex="-1" role="dialog"
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
                    <pre>
                        <?php
                        echo($fild['txt']);
                        ?>
                    </pre>
                </div>

            </div>
        </div>
    </div>

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
                    <h4>
                        آیا از حذف مطمئن هستید؟
                    </h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger modal-btn" data-dismiss="modal">خیر<i
                                class="fa fa-remove"></i></button>
                    <a href="delete_user_comment.php?id=<?php echo($fild['id']); ?>">
                        <button type="button" class="btn btn-success">
                            بلی<i class="fa fa-check"></i>
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
