<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"/>
    <title>尚筹网</title>
    <link rel="stylesheet" href="static/css/bootstrap.min.css" crossorigin="anonymous">
    <script src="static/js/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="static/js/popper.min.js" crossorigin="anonymous"></script>
    <script src="static/js/bootstrap.min.js" crossorigin="anonymous"></script>
    <script>
        $(function (){
            $("#btn-return").click(function (){
                window.history.back()
            })
        })
    </script>
</head>
<body>
<div class="container-fluid">

    <div class="row bg-light fixed-top">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <nav class="navbar navbar-expand-lg navbar-light">
                <!-- 主标题 -->
                <span class="navbar-brand">尚筹网</span>
                <!-- 自适应扩展按钮 -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
                        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- 次级按钮 -->
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" href="#">　主页</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">　关于</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div style="height: 200px"></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <h3 class="text-center">
                    尚筹网系统消息
                </h3>
                <div class="jumbotron">
                    <h2>系统错误</h2>
                    <p>
                        原因：${requestScope.exception.message}
                    </p>
                    <p>
                        <button class="btn btn-primary btn-large" id="btn-return">返回上一页面</button>
                    </p>
                </div>
            </div>
            <div class="col-md-2">
            </div>
        </div>
    </div>
</div>
</body>
</html>