<?php
include("ses.php");
$user = $_SESSION['user'];
include("../config.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>افزودن خدمات</title>
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

<?php include("aside.php"); ?><!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <?php include("header.php"); ?><!-- /header -->
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>افزودن خدمات</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="addkhadamat1.php" method="post" enctype="multipart/form-data">
                    <script>
                        function markall() {
                            for (i = 0; i < document.getElementsByClassName('rastecheck').length; i++) {
                                document.getElementsByClassName('rastecheck')[i].checked = true;
                            }
                        }

                        function remallmar() {
                            for (i = 0; i < document.getElementsByClassName('rastecheck').length; i++) {
                                document.getElementsByClassName('rastecheck')[i].checked = false;
                            }
                        }
                    </script>
                    <div>
                        <label>رسته های مربوطه</label> <span style="color: green;"
                                                             onclick="markall()">علامت زدن همه</span> / <span
                                style="color: red;" onclick="remallmar()">حذف علامت همه</span><br>
                        <?php
                        $sqlraste = "select * from `raste` order by `ra_order` DESC ";
                        $resraste = mysqli_query($connection, $sqlraste);
                        while ($fildraste = mysqli_fetch_assoc($resraste)) {
                            ?>
                            <span style="margin: 5px;">
                            <input class="rastecheck" type="checkbox" name="<?php echo("raste" . $fildraste['id']); ?>"
                                   id="<?php echo("raste" . $fildraste['id']); ?>"> <label
                                        for="<?php echo("raste" . $fildraste['id']); ?>"><?php echo($fildraste['title']); ?> </label>
                            </span>
                            <?php
                        }
                        ?>
                    </div>
                    <script>
                        function loadcatforms(catid) {
                            var url = "loadselectitems.php?catid=" + catid;
                            ajaxco(url, "resselect");
                            var url1 = "loadtextitems.php?catid=" + catid;
                            ajaxco(url1, "restxt");
                            var url2 = "loadnumericitem.php?catid=" + catid;
                            ajaxco(url2, "resnumeric");
                            var url3 = "loadbigtextitem.php?catid=" + catid;
                            ajaxco(url3, "resbigtxt");

                        }
                    </script>
                    <div class="form-group">
                        <label for="cat">دسته بندی کالا</label>
                        <select name="cat" id="cat" title="cat" class="form-control"
                                onchange="loadcatforms(this.value)">
                            <?php
                            $sqlcat = "select * from `content_cat` where `ty`=1 and `Fid`=0";
                            $rescat = mysqli_query($connection, $sqlcat);
                            while ($fildcat = mysqli_fetch_assoc($rescat)) {
                                ?>
                                <option value="<?php echo($fildcat['id']); ?>"><?php echo($fildcat['name']); ?></option>
                                <?php
                                $fid = $fildcat['id'];
                                $sqlcat2 = "select * from `content_cat` where `Fid`=$fid";
                                $rescat2 = mysqli_query($connection, $sqlcat2);
                                while ($fildcat2 = mysqli_fetch_assoc($rescat2)) {
                                    ?>
                                    <option value="<?php echo($fildcat2['id']); ?>">
                                        |_<?php echo($fildcat2['name']); ?></option>
                                    <?php
                                }
                            }
                            ?>
                        </select>
                        <script>
                            loadcatforms(document.getElementById('cat').value);
                        </script>
                    </div>
                    <div class="form-group">
                        <label for="title">عنوان خدمت</label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>
                    <div id="restxt">

                    </div>
                    <div id="resselect">

                    </div>
                    <div id="resnumeric">

                    </div>
                    <div class="form-group">
                        <label for="price">مبلغ</label>
                        <input type="text" class="form-control"
                               id="price" name="price">
                    </div>
                    <div id="resbigtxt">

                    </div>
                    <div class="form-group">
                        <label for="discrib">شرح</label>
                        <textarea type="text" class="form-control" id="discrib" name="discrib"></textarea>
                    </div>

                    <div class="form-group">

                        <input type="file" name="pic" id="pic" class="inputfile inputfile-1"
                               data-multiple-caption="{count} فایل انتخاب شد." multiple/>
                        <label for="pic">
                            <svg width="20" height="17" viewBox="0 0 20 17">
                                <path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
                            </svg>
                            <span>انتخاب تصویر</span>
                        </label>


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
