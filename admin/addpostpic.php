<?php
include("ses.php");
include("../config.php");
if (isset($_GET['user']) == false) {
    msg("کاربری انتخاب نشده است.", "showusers.php");
    die();
}
$user = sqlstr($_GET['user']);
$sql = "Select * from users where `user`='$user'";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    msg("نام کاربری یافت نشد.", "showusers.php");
    die();
}
if (isset($_GET['id']) == false) {
    die();
}
$id = sqlint($_GET['id']);
if (isset($_GET['ty']) == false) {
    die();
}
$ty = sqlint($_GET['ty']);
if ($ty != 0 && $ty != 1) {
    die();
}
$sql = "select * from `kala` where `id`=$id and `user`='$user'";
if ($ty = 1) {
    $sql = "select * from `khadamat` where `id`=$id and `user`='$user'";
}
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
    <title>افزودن تصویر</title>
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
                    <h1>افزودن تصویر</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <?php
        $sql = "select * from `post_pic` where `pid`=$id and `user`='$user' and `ty`=$ty";
        $res = mysqli_query($connection, $sql);
        if (mysqli_num_rows($res) > 0) {
            ?>
            <p>جهت حذف هر تصویر بر روی آن دابل کلیک نمایید...</p>
            <?php
        }
        while ($fild = mysqli_fetch_assoc($res)) {
            ?>
            <span>
                <img src="../<?php echo($fild['url']); ?>" width="200px"
                     ondblclick="location.replace('delpostpic.php?id=<?php echo($fild['id']); ?>&user=<?php echo($user); ?>');">
            </span>
            <?php
        }
        ?>
        <div class="row">

            <div class="col-md-6 formadmin">
                <script type="text/javascript">

                    function uploadstart() {
                        uploadFile(0);
                    }

                    function uploadFile(number) {
                        if (number < document.getElementById('pic').files.length) {
                            var fd = new FormData();
                            fd.append("pic", document.getElementById('pic').files[number]);
                            var xhr = new XMLHttpRequest();
                            xhr.upload.addEventListener("progress", uploadProgress, false);
                            xhr.addEventListener("load", uploadComplete, false);
                            xhr.addEventListener("error", uploadFailed, false);
                            xhr.addEventListener("abort", uploadCanceled, false);
                            xhr.open("POST", "addpostpic1.php?ty=<?php echo($ty); ?>&id=<?php echo($id); ?>&user=<?php echo($user); ?>");
                            xhr.send(fd);
                            uploadFile(number + 1);
                        }
                        else {
                            alert("عملیات با موفقیت انجام شد.");
                            location.reload();
                        }
                    }

                    function uploadProgress(evt) {
                        if (evt.lengthComputable) {
                            var percentComplete = Math.round(evt.loaded * 100 / evt.total);
                            document.getElementById('progressNumber').innerHTML = percentComplete.toString() + '%';
                        }
                        else {
                            document.getElementById('progressNumber').innerHTML = 'unable to compute';
                        }
                    }

                    function uploadComplete(evt) {
                        /* This event is raised when the server send back a response */
                        //alert(evt.target.responseText);
                        console.log("یک فایل ارسال شد.");
                    }

                    function uploadFailed(evt) {
                        alert("مشکلی در ارسال فایل به وجود آمده.");
                    }

                    function uploadCanceled(evt) {
                        alert("ارسال فایل متوقف شد");
                    }
                </script>
                <form action="addpostpic1.php?ty=<?php echo($ty); ?>&id=<?php echo($id); ?>&user=<?php echo($user); ?>"
                      method="post" enctype="multipart/form-data">
                    <div class="form-group">

                        <input type="file" name="pic" id="pic" class="inputfile inputfile-1"
                               data-multiple-caption="{count} فایل انتخاب شد." multiple/>
                        <label for="pic">
                            <svg width="20" height="17" viewBox="0 0 20 17">
                                <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
                            </svg>
                            <span>انتخاب تصویر</span>
                        </label>
                        <div id="progressNumber"></div>


                    </div>

                    <div class="form-group col-md-12 btn-form">

                        <button type="button" class="btn btn-primary" onclick="uploadstart()">ثبت تصاویر</button>

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
