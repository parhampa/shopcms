<?php
include("ses.php");
include("../config.php");
if (isset($_GET['id']) == false) {
    ?>
    <script>
        alert("خدمتی انتخاب نشده است...");
        location.replace("showkhadamat.php");
    </script>
    <?php
    die();
}
if ($_GET['id'] == "") {
    ?>
    <script>
        alert("خدمتی انتخاب نشده است...");
        location.replace("showkhadamat.php");
    </script>
    <?php
    die();

}
$id = sqlint($_GET['id']);
$sql = "select * from khadamat where `id` = $id";
$res = mysqli_query($connection, $sql);
if (mysqli_num_rows($res) == 0) {
    ?>
    <script>
        alert("خدمتی وجود ندارد...");
        location.replace("showkhadamat.php");
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
    <title>ویرایش خدمات</title>
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
                    <h1>ویرایش خدمات</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 formadmin">

                <form action="editkhadamat1.php?id=<?php echo($id); ?>" method="post" enctype="multipart/form-data">
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
                                <?php
                                $raid = $fildraste['id'];
                                $sqlpostch = "select * from `post_raste` where `pid`=$id and `ty`=1 and `rid`=$raid";
                                $respostch = mysqli_query($connection, $sqlpostch);
                                $fildpostch = mysqli_fetch_assoc($respostch);
                                ?>
                                <input class="rastecheck" type="checkbox"
                                       name="<?php echo("raste" . $fildraste['id']); ?>"
                                       id="<?php echo("raste" . $fildraste['id']); ?>" <?php
                                if (mysqli_num_rows($respostch) > 0) {
                                    echo("checked");
                                }
                                ?>> <label
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
                            $cat_id = $fild['cat_id'];
                            while ($fildcat = mysqli_fetch_assoc($rescat)) {
                                ?>
                                <option value="<?php echo($fildcat['id']); ?>" <?php
                                if ($fildcat['id'] == $cat_id) {
                                    echo("selected");
                                }
                                ?>><?php echo($fildcat['name']); ?></option>
                                <?php
                                $fid = $fildcat['id'];
                                $sqlcat2 = "select * from `content_cat` where `Fid`=$fid";
                                $rescat2 = mysqli_query($connection, $sqlcat2);
                                while ($fildcat2 = mysqli_fetch_assoc($rescat2)) {
                                    ?>
                                    <option value="<?php echo($fildcat2['id']); ?>" <?php
                                    if ($fildcat2['id'] == $cat_id) {
                                        echo("selected");
                                    }
                                    ?>>
                                        |_<?php echo($fildcat2['name']); ?></option>
                                    <?php
                                }
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="title">عنوان خدمت</label>
                        <input type="text" class="form-control" id="title" name="title"
                               value="<?php echo($fild['title']); ?>">
                    </div>
                    <div id="restxt">
                        <?php
                        $sqlstring = "select * from `item_string` where `cat_id`=$cat_id and `big_text`=0 ORDER by `order_string` DESC ";
                        $resstring = mysqli_query($connection, $sqlstring);
                        while ($fildstring = mysqli_fetch_assoc($resstring)) {
                            $string_id = $fildstring['id'];
                            $sqlstringval = "select * from `post_string` where `pid`=$id and `string_id`=$string_id and `ty`=1";
                            $resstringval = mysqli_query($connection, $sqlstringval);
                            $fildstringval = mysqli_fetch_assoc($resstringval);
                            ?>
                            <div class="form-group">
                                <label for="txt<?php echo($fildstring['id']); ?>"><?php echo($fildstring['title']); ?></label>
                                <input type="text" class="form-control" id="txt<?php echo($fildstring['id']); ?>"
                                       name="txt<?php echo($fildstring['id']); ?>"
                                       value="<?php echo($fildstringval['val']); ?>">
                            </div>
                            <?php
                        }
                        ?>
                    </div>

                    <div id="resselect">
                        <?php
                        $sqlselect = "select * from `item_select` where `cat_id`=$cat_id order by `order_select` DESC";
                        $resselect = mysqli_query($connection, $sqlselect);
                        while ($fildselect = mysqli_fetch_assoc($resselect)) {
                            ?>
                            <div class="form-group">
                                <label for="select<?php echo($fildselect['id']); ?>"><?php echo($fildselect['title']); ?></label>
                                <select class="form-control" id="select<?php echo($fildselect['id']); ?>"
                                        name="select<?php echo($fildselect['id']); ?>">
                                    <?php
                                    $sid = $fildselect['id'];
                                    $sqlselect_val = "select * from `post_select` where `select_id`=$sid and `pid`=$id and `ty`=1";
                                    $resselect_val = mysqli_query($connection, $sqlselect_val);
                                    $fildselect_val = mysqli_fetch_assoc($resselect_val);
                                    $selectval = $fildselect_val['val'];
                                    $sql2select = "select * from `item_select_val` where `sid`=$sid";
                                    $res2select = mysqli_query($connection, $sql2select);
                                    while ($fild2select = mysqli_fetch_assoc($res2select)) {
                                        ?>
                                        <option value="<?php echo($fild2select['id']); ?>" <?php
                                        if ($fild2select['id'] == $selectval) {
                                            echo("selected");
                                        }
                                        ?>><?php echo($fild2select['title']); ?></option>
                                        <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <?php
                        }
                        ?>
                    </div>

                    <div id="resnumeric">
                        <?php
                        $sqlnumeric = "select * from `item_numeric` where `cat_id`=$cat_id ORDER by `order_show` DESC ";
                        $resnumeric = mysqli_query($connection, $sqlnumeric);
                        while ($fildnumeric = mysqli_fetch_assoc($resnumeric)) {
                            $numeric_id = $fildnumeric['id'];
                            $sqlnumval = "select * from `post_numeric` where `ty`=1 and `pid`=$id and `numeric_id`=$numeric_id";
                            $resnumval = mysqli_query($connection, $sqlnumval);
                            $fildnumval = mysqli_fetch_assoc($resnumval);
                            ?>
                            <div class="form-group">
                                <label for="num<?php echo($fildnumeric['id']); ?>"><?php echo($fildnumeric['title']); ?></label>
                                <input type="number" class="form-control" id="num<?php echo($fildnumeric['id']); ?>"
                                       name="num<?php echo($fildnumeric['id']); ?>"
                                       value="<?php echo($fildnumval['val']); ?>">
                            </div>
                            <?php
                        }
                        ?>
                    </div>

                    <div class="form-group">
                        <label for="price">مبلغ</label>
                        <input type="text" class="form-control"
                               id="price" name="price" value="<?php echo($fild['price']); ?>">
                    </div>

                    <div id="resbigtxt">
                        <?php
                        $sqlbig = "select * from `item_string` where `cat_id`=$cat_id and `big_text`=1 ORDER by `order_string` DESC ";
                        $resbig = mysqli_query($connection, $sqlbig);
                        while ($fildbig = mysqli_fetch_assoc($resbig)) {
                            ?>
                            <div class="form-group">
                                <label for="bigtxt<?php echo($fildbig['id']); ?>"><?php echo($fildbig['title']); ?></label>
                                <textarea class="form-control" id="bigtxt<?php echo($fildbig['id']); ?>"
                                          name="bigtxt<?php echo($fildbig['id']); ?>"><?php
                                    $string_id = $fildbig['id'];
                                    $sqlbigval = "select * from `post_string` where `pid`=$id and `ty`=1 and `string_id`=$string_id";
                                    $resbigval = mysqli_query($connection, $sqlbigval);
                                    $fildbigval = mysqli_fetch_assoc($resbigval);
                                    echo($fildbigval['val']);
                                    ?></textarea>
                            </div>
                            <?php
                        }
                        ?>
                    </div>


                    <div class="form-group">
                        <label for="discrib">شرح</label>
                        <textarea type="text" class="form-control" id="discrib"
                                  name="discrib"><?php echo($fild['discrib']); ?></textarea>


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
                        <?php
                        if ($fild['pic'] != "") {
                            ?>
                            <div style="position: relative;">
                                <a style="position: absolute; top: 0; right: 0;"
                                   href="deletekhadamatimage.php?id=<?php echo($fild['id']); ?>">
                                    <i class="fa fa-close"></i>
                                </a>
                                <img src="<?php echo($fild['pic']); ?>" width="200px" height="200px"/>

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
