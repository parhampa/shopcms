<?php
include("ses.php");
$user=$_SESSION['user'];
include("../config.php");
$back = "showoffers.php";
if(isset($_GET['id'])==false){
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است." , $back);
    die();
}
$id = sqlint($_GET['id']);
if($id == ""){
    msg("پیشنهاد ویژه ای برای ویرایش انتخاب نشده است." , $back);
    die();
}
$sql = "select * from offer_product WHERE id = $id and (pid in (select id from kala where `user`='$user') or pid in(select id from khadamat where `user`='$user'))";
$res = mysqli_query($connection,$sql);
if(mysqli_num_rows($res)==0){
    msg("پیشنهاد ویژه ای وجود ندارد." , $back);
    die();
}
$fild = mysqli_fetch_assoc($res);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ویرایش پیشنهاد ویژه </title>
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

<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu"
                    aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="#"><img src="../images/logo.png" alt="Logo"></a>
            <a class="navbar-brand hidden" href=".."><img src="../images/logo.png" alt="Logo"></a>
        </div>
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="admin.html"> <i class="menu-icon fa fa-dashboard"></i>داشبورد </a>
                </li>
                <h3 class="menu-title">مدیریت سایت</h3><!-- /.menu-title -->

                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="menu-icon fa fa-table"></i>مدیریت کاربران</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="menu-icon fa fa-inbox"></i><a href="adduser.html">افزودن کاربران</a></li>
                        <li><i class="menu-icon fa fa-inbox"></i><a href="showusers.html">نمایش کاربر</a></li>
                    </ul>
                </li>

                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="menu-icon fa fa-table"></i>مدیریت اصناف</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="menu-icon fa fa-inbox"></i><a href="addsenf.html">افزودن صنف</a></li>
                        <li><i class="menu-icon fa fa-inbox"></i><a href="showsenf.html">نمایش اصناف</a></li>
                    </ul>
                </li>

                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="menu-icon fa fa-table"></i>مدیریت سرویس ها</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="menu-icon fa fa-inbox"></i><a href="addserves.html">افزودن سرویس</a></li>
                        <li><i class="menu-icon fa fa-inbox"></i><a href="showserves.html">نمایش سرویس ها</a></li>
                    </ul>
                </li>

                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="menu-icon fa fa-table"></i>مدیریت بازاریاب ها</a>
                    <ul class="sub-menu children dropdown-menu">
                        <li><i class="menu-icon fa fa-inbox"></i><a href="addmarketer.html">افزودن بازار یاب</a></li>
                        <li><i class="menu-icon fa fa-inbox"></i><a href="showmarketer.html">نمایش بازاریاب ها</a></li>
                    </ul>
                </li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</aside><!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <header id="header" class="header">

        <div class="header-menu">

            <div class="col-sm-7">
                <a id="menuToggle" class="menutoggle pull-right"><i class="fa fa fa-tasks"></i></a>
                <div class="header-left">
                    <button class="search-trigger"><i class="fa fa-search"></i></button>
                    <div class="form-inline">
                        <form class="search-form">
                            <input class="form-control mr-sm-2" type="text" placeholder="کلمه مورد نظر را جستجو کنيد.."
                                   aria-label="Search">
                            <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                        </form>
                    </div>

                    <div class="dropdown for-notification">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="notification"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bell"></i>
                            <span class="count bg-danger">3</span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="notification">
                            <p style="text-align: right" class="red">اعلان ها</p>
                            <a class="dropdown-item media bg-flat-color-1" href="#">
                                <i class="fa fa-check"></i>
                                <p>اعلان 1</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-4" href="#">
                                <i class="fa fa-info"></i>
                                <p>اعلان 2</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-5" href="#">
                                <i class="fa fa-warning"></i>
                                <p>اعلان 3</p>
                            </a>
                        </div>
                    </div>

                    <div class="dropdown for-message">
                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                id="message"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-envelope-open"></i>
                            <span class="count bg-primary">5</span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="message">
                            <p style="text-align: right" class="red">پيغام ها</p>
                            <a class="dropdown-item media bg-flat-color-1" href="#">
                                <span class="photo media-left"><img alt="avatar" src="../images/avatar/1.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">محمد باي</span>
                                    <span class="time float-right">همين الان</span>
                                        <p>سلام.فاکتور فروش صادر شود</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-4" href="#">
                                <span class="photo media-left"><img alt="avatar" src="../images/avatar/2.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Jack Sanders</span>
                                    <span class="time float-right">5 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-5" href="#">
                                <span class="photo media-left"><img alt="avatar" src="../images/avatar/3.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Cheryl Wheeler</span>
                                    <span class="time float-right">10 minutes ago</span>
                                        <p>Hello, this is an example msg</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-3" href="#">
                                <span class="photo media-left"><img alt="avatar" src="../images/avatar/4.jpg"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Rachel Santos</span>
                                    <span class="time float-right">15 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-5">
                <div class="user-area dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">
                        <img class="user-avatar rounded-circle" src="../images/admin.jpg" alt="User Avatar">
                    </a>

                    <div class="user-menu dropdown-menu">
                        <a class="nav-link" href="#"><i class="fa fa- user"></i>پروفايل من</a>

                        <a class="nav-link" href="#"><i class="fa fa -cog"></i>تنظيمات</a>

                        <a class="nav-link" href="#"><i class="fa fa-power -off"></i>خروج</a>
                    </div>
                </div>
            </div>
        </div>

    </header><!-- /header -->
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="col-sm-12">
            <div class="page-header">
                <div class="page-title">
                    <h1>ویرایش پیشنهاد ویژه</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 formadmin">
                <form action="editoffer1.php?id=<?php echo ($fild['id']);?>" method="post" >
                    <div class="form-group">
                        <label for="start_date">تاریخ شروع</label>
                        <input type="text" class="form-control" id="start_date"
                               name="start_date" value="<?php echo ($fild['start_date']);?>">
                    </div>

                    <div class="form-group">
                        <label for="end_date">تاریخ پایان</label>
                        <input type="text" class="form-control" id="end_date"
                               name="end_date" value="<?php echo ($fild['end_date']);?>">
                    </div>

                    <div class="form-group">
                        <label for="percent">درصد</label>
                        <input type="text" class="form-control" id="percent"
                               name="percent" value="<?php echo ($fild['percent']);?>">
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

