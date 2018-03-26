<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <script src="<%=request.getContextPath()%>/assets/js/jquery-2.1.3.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.actual.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.scrollTo.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/script.js"></script>

</head>

<body>
<c:forEach items="${state}" var="c" >
<c:if test= "${c=='fail'}">

    <div class="alert alert-danger" role="alert">账号或密码错误</div>
</c:if>
</c:forEach>
<div class="container" >

    <form  action="<%=request.getContextPath()%>/admin" method="post" >
        <div class="col-lg-12">
            <div class="col-lg-12">
                    <div >
        <h2 class="form-signin-heading">请登录</h2>


        <label for="inputEmail" class="sr-only">请输入用户名</label>
        <input type="text" id="inputEmail" name="username"  class="form-control" placeholder="用户名" required autofocus>

        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword"  name="password" class="form-control" placeholder="密码" required>

        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> 记住我
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>

                     </div>
                </div>
            </div>

    </form>
</div>


</body>
</html>