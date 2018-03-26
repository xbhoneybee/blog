<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="noIE" lang="zh">
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


    <script src="<%=request.getContextPath()%>/assets/js/jquery-2.1.3.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.actual.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.scrollTo.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/script.js"></script>

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
            <section class="bottom">
                <a id="scrollToContent" href="#">
                    <img src="<%=request.getContextPath()%>/assets/images/arrow_down.png">
                </a>
            </section>
        </div>
    </div><!-- header -->


    <div class="content-block parallax" id="services">

        <!-- editormd start -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/editormd/css/editormd.min.css" type="text/css"/>
        <script src="<%=request.getContextPath()%>/editormd/editormd.min.js"></script>
        <script type="text/javascript">
            var testEditor;

            testEditor=$(function() {
                editormd("test-editormd", {
                    width   : "80%",
                    height  : 640,
                    //markdown : md,
                    codeFold : true,
                    syncScrolling : "single",
                    //你的lib目录的路径
                    path    : "<%=request.getContextPath()%>/editormd/lib/",
                    imageUpload: false,//关闭图片上传功能
                    /*  theme: "dark",//工具栏主题
                     previewTheme: "dark",//预览主题
                     editorTheme: "pastel-on-dark",//编辑主题 */
                    emoji: false,
                    taskList: true,
                    tocm: true,         // Using [TOCM]
                    tex: true,                   // 开启科学公式TeX语言支持，默认关闭
                    flowChart: true,             // 开启流程图支持，默认关闭
                    sequenceDiagram: true,       // 开启时序/序列图支持，默认关闭,
                    //这个配置在simple.html中并没有，但是为了能够提交表单，使用这个配置可以让构造出来的HTML代码直接在第二个隐藏的textarea域中，方便post提交表单。
                    saveHTMLToTextarea : true
                });

            });

        </script>
        <!-- editormd end -->
        <form method="post" action="<%=request.getContextPath()%>/save" >
            <div class="container">
            <div class="input-group">
                <span class="input-group-addon">&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <input type="text" class="form-control" name="T" placeholder="标题">
                <span class="input-group-addon">&nbsp;&nbsp;&nbsp;&nbsp;</span>
            </div>
            </div>
        <!-- editormd start -->
        <div class="editormd" id="test-editormd">
            <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc" id="editormd"></textarea>
            <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
            <!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
            <textarea class="editormd-html-textarea" name="test-editormd-html-code" id="editorhtml"></textarea>
        </div>
    <!-- editormd end -->
    <!--提交按钮-->
    <div class="row">
        <div class="col-md-6 col-md-offset-6">
            <p>
                <input type="submit" class="btn btn-primary btn-lg" role="button" value="发表">
            </p>
        </div>
    </div>
    </form>



    <div class="content-block" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">&copy; Copyright XBhoneYbee 2018</div>
                <div class="col-xs-6 text-right">Templates From <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></div>
            </div>
        </div>
    </div><!-- #footer -->


</div><!--/#wrapper-->


</body>
</html>