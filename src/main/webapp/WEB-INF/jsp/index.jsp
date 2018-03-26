<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="noIE" lang="en-US">
<!--<![endif]-->
<head>
    <title>XBhoneYbee</title>

    <!-- meta -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>

    <!-- google fonts -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans'>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alegreya+Sans:regular,italic,bold,bolditalic"/>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Nixie+One:regular,italic,bold,bolditalic"/>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alegreya+SC:regular,italic,bold,bolditalic"/>

    <!-- css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css" media="screen"/>

</head>

<body>
<div id="drawer-right">
    <div class="cross text-right">
        <a class="toggleDrawer" href="#"><i class="fa fa-times-circle fa-2x" ></i></a>
    </div>
    <h2>Navigate</h2>
    <nav>
        <ul class="nav nav-pills nav-stacked" >
            <li>
                <p><a class="btn btn-primary btn-lg" href="<%=request.getContextPath()%>/index" role="button"><i class="fa fa-home"></i> Home&nbsp;&nbsp;&nbsp;&nbsp;</a></p>
            </li>
            <li>
                <p><a class="btn btn-primary btn-lg" href="<%=request.getContextPath()%>/noteList" role="button"><i class="fa fa-tasks"></i> Blog &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></p>
            </li>
            <li>
                <p><a class="btn btn-primary btn-lg" href="<%=request.getContextPath()%>/aboutme" role="button"><i class="fa fa-phone-square"></i> About me</a></p>
            </li>
            <li>
                <p><a class="btn btn-primary btn-lg" href="<%=request.getContextPath()%>/login" role="button"><i class="fa fa-info-circle"></i> Admin&nbsp;&nbsp;</a></p>
            </li>
        </ul>
    </nav>
    <div class="social">
        <h2>Stay Connected</h2>
        <ul>
            <li><a href="https://github.com/xbhoneybee"><i class="fa fa-github-square fa-3x"></i></a></li>&nbsp;&nbsp;&nbsp;
            <li><a href="mailto:15281194@bjtu.edu.cn"><i class="fa fa-envelope  fa-3x"></i></a></li>&nbsp;
        </ul>
    </div>
</div><!-- #drawer-right -->
<div id="wrapper">

    <div id="header" class="content-block header-wrapper">
        <div class="header-wrapper-inner">
            <section class="top clearfix">
                <div class="pull-right">
                    <a class="toggleDrawer" href="#"><i class="fa fa-bars fa-2x"></i></a>
                </div>
            </section>

            <section class="center">
                <div class="slogan">
                    记录生活,分享体会
                </div>
                <div class="secondary-slogan">
                    xbhoneybee's home
                </div>
            </section>

        </div>
    </div><!-- header -->

<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
    <div class="content-block" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">&copy; Copyright XBhoneYbee 2018</div>
                <div class="col-xs-6 text-right">Templates From <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></div>
            </div>
        </div>
    </div><!-- #footer -->


</div><!--/#wrapper-->
<script src="<%=request.getContextPath()%>/assets/js/jquery-2.1.3.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.actual.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollTo.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/script.js"></script>

</body>
</html>