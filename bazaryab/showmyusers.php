<?php
include("ses.php");
include("../config.php");?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title> نمایش کاربران من</title>
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
                    <h1> نمایش کاربران من</h1>
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
                                <th>نام و نام خانوادگی</th>
                                <th>عنوان شغل</th>
                                <th>تلفن همراه</th>
                                <th>تلفن ثابت</th>

                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $code_bazaryab = $_SESSION['user'];/*session must be set here */
                            $sql = "select * from users where `u_bazaryab` = '$code_bazaryab'";
                            $res = mysqli_query($connection, $sql);
                            if(mysqli_num_rows($res) == 0){
                                ?>
                                <tr class="warning no-result">
                                    <td colspan="5"><i class="fa fa-warning"></i> مورد یافت نشد</td>
                                </tr>
                                <?php
                            }
                            $count = 0;
                            while ($fild = mysqli_fetch_assoc($res)) {
                                $count++;
                                ?>
                                <tr>
                                    <td class="hidden-xs"><?php echo($count); ?></td>
                                    <td><?php echo($fild['name'] . " " . $fild['famili']); ?></td>
                                    <td><?php echo($fild['title']); ?></td>
                                    <td><?php echo($fild['mob']); ?></td>
                                    <td><?php echo($fild['tel']); ?></td>

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



<script src="../assets/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>

</body>
</html>
