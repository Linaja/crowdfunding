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
                    <a class="btn btn-outline-primary my-2 my-sm-0" id="btn_login_register_name" href="#">注册</a>
                </div>
            </nav>
        </div>
        <div class="col-md-2"></div>
    </div>
    <div style="height: 200px"></div>
    <div class="row">
        <div class="col-md-4"></div>
        <form class="col-md-4" method="post" action="admin/login">
            <h3 class="text-center text-primary">
                登录
            </h3>
            <form role="form">
                <div class="form-group">
                    <label for="textInputEmail1">账号</label>
                    <input type="text" class="form-control" id="textInputEmail1" name="account" autocomplete="off" value="123456789"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">密码</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" autocomplete="off" value="001257"/>
                </div>
                <div class="form-group" style="margin-top: 30px;">
                    <input type="submit" class="form-control btn btn-primary" value="登录"/>
                </div>
            </form>
        </form>
        <div class="col-md-4"></div>
    </div>
</div>
</body>
</html>