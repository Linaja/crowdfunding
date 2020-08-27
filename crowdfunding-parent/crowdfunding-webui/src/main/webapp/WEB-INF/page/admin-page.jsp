<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>尚筹网</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.14.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.bootcdn.net/ajax/libs/bootstrap-table/1.17.1/bootstrap-table.min.css" rel="stylesheet">
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
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
                        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" href="#">　主页</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">　关于</a></li>
                    </ul>
                    <div class="dropdown">
                        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                <li class="list-group-item"><a
                                        href="${pageContext.request.contextPath}/dispatch/admin-page">管理员维护</a></li>
                                <li class="list-group-item">二级菜单</li>
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
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <form class="form-inline">
                        <div class="input-group w-100">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">条件查询</span>
                            </div>
                            <input type="text" class="form-control" id="input-text" placeholder="请输入关键字"
                                   aria-describedby="basic-addon1">
                            <div class="input-group-append">
                                <input type="button" class="btn btn-outline-primary" value="查询" onclick="$('#table').bootstrapTable('refresh')"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-2"></div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <table id="table"></table>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/bootstrap-table/1.17.1/bootstrap-table.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/bootstrap-table/1.17.1/locale/bootstrap-table-zh-CN.min.js"></script>
<script>
    $('#table').bootstrapTable({
        url: '/crowdfunding/admin/pageInfo',                   // 请求路径（一定要在前面加 /）
        method: 'post',                                        // 请求方式
        contentType: "application/x-www-form-urlencoded",      // 请求方式为 post 时需要
        queryParams: function (params) {                       // 请求参数（params 为框架提供）
            return {
                keyword: $('#input-text').val(),               // 关键字
                pageSize: params.limit,                        // 页面大小
                pageNum: (params.offset / params.limit) + 1    // 页码
            }
        },
        pageSize: 10,                                          // 单页行数
        /*
        * 分页方式
        *   可选值：server、client
        *   client 表示由前端分页，后端传的 json 是一个数组：[{},{},{},{}]
        *   server 表示由后端分页，后端传的 json 需要封装 total 和 rows 属性：{'total':20, 'rows':[{},{},{},{}]}
        * */
        sidePagination: "server",
        pagination: true,                                      // 是否开启分页（即：显示分页样式）
        pageList: [10],                                        // 可选的单页行数（与单页行数一致则不会看到样式）
        cache: false,                                          // 是否启用缓存
        columns: [{                                 // 表头（field 需要与 json 对应，title 为显示样式）
            field: 'account',
            title: '账号'
        }, {
            field: 'name',
            title: '昵称'
        }, {
            field: 'eMail',
            title: '邮箱'
        }, {
            field: 'creationTime',
            title: '创建时间'
        }]
    })
</script>
</body>
</html>
