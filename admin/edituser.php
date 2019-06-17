<?php
//include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    ?>
    <script>
        alert("نام کاربری مشخص نشده است...");
        location.replace("showusers.php");
    </script>
    <?php
    die();
}
if ($_GET['user'] == "") {
    ?>
    <script>
        alert("نام کاربری مشخص نشده است...");
        location.replace("showusers.php");
    </script>
    <?php
    die();
}
$user = sqlstr($_GET['user']);
$sql = "select * from users where `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    ?>
    <script>
        alert("نام کاربری مورد نظر وجود ندارد...");
        location.replace("showusers.php");
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
    <title>ویرایش کاربر</title>
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
    <script src="../functions/ajaxco.js"></script>

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
                    <h1>ویرایش کاربر</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9 formadmin">
                <form action="edituser1.php?user=<?php echo($fild['user']); ?>" method="post"
                      enctype="multipart/form-data">

                    <div class="form-group row">
                        <label for="name" class="col-sm-2 col-form-label">نام کاربری</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="user" name="user"
                                   value="<?php echo($fild['user']); ?>">
                        </div>
                        <label for="password" class="col-sm-2 col-form-label">کلمه عبور</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="pass" name="pass"
                                   value="<?php echo($fild['pass']); ?>">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="firstname" class="col-sm-2 col-form-label">نام</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="name" name="name"
                                   value="<?php echo($fild['name']); ?>">
                        </div>
                        <label for="lastname" class="col-sm-2 col-form-label">نام خانوادگی</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="famili" name="famili"
                                   value="<?php echo($fild['famili']); ?>">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="mobaile" class="col-sm-2 col-form-label">تلفن همراه</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="mob" name="mob"
                                   value="<?php echo($fild['mob']); ?>">
                        </div>
                        <label for="tel" class="col-sm-2 col-form-label">تلفن ثابت</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="tel" name="tel"
                                   value="<?php echo($fild['tel']); ?>">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="mobaile" class="col-sm-2 col-form-label">تلفن همراه 2</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="mob2" name="mob2"
                                   value="<?php echo($fild['mob2']); ?>">
                        </div>
                        <label for="tel" class="col-sm-2 col-form-label">تلفن ثابت 2</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="tel2" name="tel2"
                                   value="<?php echo($fild['tel2']); ?>">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="asnaf" class="col-sm-2 col-form-label">رسته شغلی</label>
                        <div class="col-sm-10">
                            <select id="senfid" name="senfid" class="form-control"
                                    onchange="ajaxco('subsenf.php?id='+this.value,'ressub')">
                                <?php
                                $selsenf = "";
                                $sql2 = "select * from asnaf where `father`=0";
                                $res2 = mysqli_query($connection, $sql2);
                                while ($fild2 = mysqli_fetch_assoc($res2)) {
                                    ?>
                                    <option value="<?php echo($fild2['id']); ?>" <?php if ($fild['senfid'] == $fild2['id']) {
                                        echo("selected");
                                        $selsenf = $fild['senfid'];
                                    } ?>><?php echo($fild2['title']); ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                            <small>صنف خود را از منوي فوق انتخاب نماييد</small>
                        </div>
                    </div>

                    <div class="form-group row" id="ressub">

                    </div>

                    <script>
                        ajaxco('subsenf.php?id=<?php echo($selsenf); ?>&user=<?php echo($fild['user']); ?>', 'ressub');
                    </script>

                    <div class="form-group row">
                        <label for="shop" class="col-sm-2 col-form-label">عنوان فروشگاه</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="title" name="title"
                                   value="<?php echo($fild['title']); ?>">
                        </div>
                        <label for="code" class="col-sm-2 col-form-label">معرف ( نام کاربری بازاریاب ) : </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="u_bazaryab"
                                   name="u_bazaryab" value="<?php echo($fild['u_bazaryab']); ?>">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="addres" class="col-sm-2 col-form-label">آدرس</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="addres"
                                   name="addres" value="<?php echo($fild['addres']); ?>">
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="content" class="col-sm-2 col-form-label">توضیحات کوتاه</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="introduction"
                                      name="introduction" value="<?php echo($fild['introduction']); ?>">
                        </div>
                    </div>
					<div class="form-group row">
                        <label for="content" class="col-sm-2 col-form-label">معرفی فروشگاه</label>
                        <div class="col-sm-10">
                            <textarea type="text" class="form-control" id="describ" name="describ"><?php echo($fild['describ']); ?></textarea>
                        </div>
                    </div>
					<div class="form-group row">
                        <label for="content" class="col-sm-2 col-form-label">لینک تلگرام</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="telegram"
                                      name="telegram" value="<?php echo($fild['telegram']); ?>">
                        </div>
                    </div>
					<div class="form-group row">
                        <label for="content" class="col-sm-2 col-form-label">لینک اینستاگرام</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="instagram"
                                      name="instagram" value="<?php echo($fild['instagram']); ?>">
                        </div>
                    </div>
					<div class="form-group row">
                        <label for="content" class="col-sm-2 col-form-label">لینک لینکدین</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="LinkedIn"
                                      name="LinkedIn" value="<?php echo($fild['LinkedIn']); ?>">
                        </div>
                    </div>
					


                    <div class="form-group row">

                        <div class="col-xs-6">
                            <label class="col-sm-12 col-form-label"> لوگوی خود را انتخاب کنید:</label>
                            <input type="file" name="logo" id="logo" class="inputfile inputfile-1"
                                   data-multiple-caption="{count} فایل انتخاب شد." multiple/>
                            <label class="col-sm-3" for="logo">
                                <svg width="20" height="17" viewBox="0 0 20 17">
                                    <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
                                </svg>
                                <span style="font-size: 0.7em">انتخاب لوگو</span>
                            </label>
                        </div>
                        <?php
                        if ($fild['logo'] != "") {
                            ?>
                            <div id="logophoto" class="col-xs-6" style="position: relative;">
                                <a style="position: absolute; top: 0; right: 0;"
                                   href="deletelogouser.php?user=<?php echo($fild['user']); ?>">
                                    <i class="fa fa-close"></i>
                                </a>
                                <img src="<?php echo($fild['logo']); ?>" width="128px" height="128px">
                            </div>
                        <?php } ?>
                    </div>


                    <div class="form-group row">

                        <div class="col-xs-6">
                            <label class="col-sm-12 col-form-label">سرصفحه سایت را انتخاب کنید:</label>
                            <input type="file" name="header1" id="header1" class="inputfile inputfile-1"
                                   data-multiple-caption="{count} فایل انتخاب شد." multiple/>
                            <label class="col-sm-3" for="header1">
                                <svg width="20" height="17" viewBox="0 0 20 17">
                                    <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
                                </svg>
                                <span style="font-size: 0.7em">انتخاب سر صفحه</span>
                            </label>
                        </div>
                        <?php
                        if($fild['header'] != "") {
                            ?>
                            <div id="headerphoto" class="col-xs-6" style="position: relative;">
                                <a style="position: absolute; top: 0; right: 0;"
                                   href="deleteheaderuser.php?user=<?php echo($fild['user']); ?>">
                                    <i class="fa fa-close"></i>
                                </a>
                                <img src="<?php echo($fild['header']); ?>" width="300" height="200">
                            </div>
                            <?php
                        }
                        ?>

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
