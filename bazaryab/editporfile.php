<?php
include("ses.php");
include ("../config.php");
$user = $_SESSION['user'];
$sql = "select * from bazaryab where `user` = '$user'";
$res = mysqli_query($connection, $sql);
if(mysqli_num_rows($res) == 0){
    die();
}
$fild = mysqli_fetch_assoc($res);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ویرایش پروفایل</title>
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
<?php include("aside.php"); ?>
<!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <?php
    include("header.php");
    ?><!-- /header -->
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>ویرایش پروفایل</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="editprofile1.php" method="post">
                    <div class="form-group">
                        <label for="user">نام کاربری</label>
                        <input type="text" class="form-control" id="user" name="user"
                               value="<?php echo ($fild['user']);?>">
                    </div>

                    <div class="form-group">
                        <label for="pass">گذرواژه</label>
                        <input type="password" class="form-control" id="pass" name="pass"
                               value="<?php echo ($fild['pass']);?>">
                    </div>

                    <div class="form-group">
                        <label for="name">نام</label>
                        <input type="text" class="form-control" id="name" name="name"
                               value="<?php echo ($fild['name']);?>">
                    </div>


                    <div class="form-group">
                        <label for="family">نام خانوادگی</label>
                        <input type="text" class="form-control" id="family" name="family"
                               value="<?php echo ($fild['family']);?>">
                    </div>


                    <div class="form-group">
                        <label for="mob">موبایل</label>
                        <input type="text" class="form-control" id="mob" name="mob"
                               value="<?php echo ($fild['mob']);?>">
                    </div>

                    <div class="form-group">
                        <label for="tel">تلفن ثابت</label>
                        <input type="text" class="form-control" id="tel" name="tel"
                               value="<?php echo ($fild['tel']);?>">
                    </div>


                    <div class="form-group">
                        <label for="addres">آدرس</label>
                        <input type="text" class="form-control" id="addres" name="addres"
                               value="<?php echo ($fild['addres']);?>">
                    </div>

                    <div class="form-group col-md-12 btn-form">

                        <button type="submit" class="btn btn-primary" name="submit">ثبت اطلاعات</button>

                    </div>

                </form>
            </div>
        </div>
    </div>

</div>


<script src="../assets/js/bootstrap.min.js" crossorigin="anonymous"></script>

<script src="../assets/js/jquery-3.3.1.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>

</body>
</html>
