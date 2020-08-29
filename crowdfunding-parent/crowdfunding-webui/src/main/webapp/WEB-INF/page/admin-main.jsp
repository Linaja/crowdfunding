<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>尚筹网</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card-body {
            padding: 0;
        }
    </style>
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
                    <div class="dropdown">
                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            ${sessionScope.admin.name}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="#">个人中心</a>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/logout">退出登录</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="col-md-2"></div>
    </div>

    <div style="height: 100px;"></div>

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <div class="accordion" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-center" type="button" data-toggle="collapse"
                                    data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                权限管理
                            </button>
                        </h2>
                    </div>
                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne"
                         data-parent="#accordionExample">
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="${pageContext.request.contextPath}/dispatch/admin-page">管理员维护</a></li>
                                <li class="list-group-item"><a href="${pageContext.request.contextPath}/dispatch/role-page">角色维护</a></li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-center collapsed" type="button"
                                    data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                                    aria-controls="collapseTwo">
                                一级菜单
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-center collapsed" type="button"
                                    data-toggle="collapse" data-target="#collapseThree" aria-expanded="false"
                                    aria-controls="collapseThree">
                                一级菜单
                            </button>
                        </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                         data-parent="#accordionExample">
                        <div class="card-body">
                            <ul class="list-group">
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                                <li class="list-group-item">二级菜单</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" alt="Bootstrap Thumbnail First"
                             src="https://www.layoutit.com/img/people-q-c-600-200-1.jpg"/>
                        <div class="card-block">
                            <h5 class="card-title">Card title</h5>
                            <p>
                                <a class="btn btn-primary" href="#">Action</a>
                                <a class="btn" href="#">Action</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" alt="Bootstrap Thumbnail Second"
                             src="https://www.layoutit.com/img/city-q-c-600-200-1.jpg"/>
                        <div class="card-block">
                            <h5 class="card-title">Card title</h5>
                            <p>
                                <a class="btn btn-primary" href="#">Action</a>
                                <a class="btn" href="#">Action</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" alt="Bootstrap Thumbnail Third"
                             src="https://www.layoutit.com/img/sports-q-c-600-200-1.jpg"/>
                        <div class="card-block">
                            <h5 class="card-title">Card title</h5>
                            <p>
                                <a class="btn btn-primary" href="#">Action</a>
                                <a class="btn" href="#">Action</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>