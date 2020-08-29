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
            <div class="accordion text-center" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-center" type="button" data-toggle="collapse"
                                    data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                权限管理
                            </button>
                        </h2>
                    </div>
                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item list-group-item-action"><a
                                        href="${pageContext.request.contextPath}/dispatch/admin-page">管理员维护</a></li>
                                <li class="list-group-item disabled" aria-disabled="true"><a>角色维护</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-center collapsed" type="button"
                                    data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                                    aria-controls="collapseTwo">一级菜单
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
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
                            <ul class="list-group list-group-flush">
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
                <div class="col-md-8">
                    <form class="form-inline">
                        <div class="input-group w-100">
                            <div class="input-group-prepend">
                                <label for="input-text" class="input-group-text" id="basic-addon1">条件查询</label>
                            </div>
                            <input type="text" class="form-control" id="input-text" placeholder="请输入关键字"
                                   aria-describedby="basic-addon1">
                            <div class="input-group-append">
                                <input type="button" class="btn btn-outline-primary" id="input-btn" value="查询"
                                       onclick="table.bootstrapTable('refresh')"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-3">
                    <button class="btn btn-danger float-right" onclick="batchRemove()">批量删除</button>
                    <button class="btn btn-primary" data-toggle='modal' data-target='#addModal'>新增</button>
                </div>
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

<%-- 更新模态框 --%>
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateModalLabel">修改面板</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="updateForm">
                    <div class="form-group">
                        <label for="updateId" class="col-form-label">角色ID</label>
                        <input type="text" class="form-control" id="updateId" name="id" readonly>
                    </div>
                    <div class="form-group">
                        <label for="updateName" class="col-form-label">修改角色名</label>
                        <input type="text" class="form-control" id="updateName" name="name" autocomplete="off">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary"
                        onclick="addOrUpdate('/crowdfunding/role/update', $('#updateModal'))">提交
                </button>
            </div>
        </div>
    </div>
</div>

<%-- 添加模态框 --%>
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">添加面板</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="addForm">
                    <div class="form-group">
                        <label for="addName" class="col-form-label">角色名</label>
                        <input type="text" class="form-control" id="addName" name="name" autocomplete="off">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary"
                        onclick="addOrUpdate('/crowdfunding/role/add', $('#addModal'))">提交
                </button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/bootstrap-table/1.17.1/bootstrap-table.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/bootstrap-table/1.17.1/locale/bootstrap-table-zh-CN.min.js"></script>
<script>
    const table = $('#table')
    const input = $('#input-text')

    /* 对 bootstrap table 的设置 */
    table.bootstrapTable({
        url: '/crowdfunding/role/get/keyword',                   // 请求路径（一定要在前面加 /）
        method: 'post',                                        // 请求方式
        contentType: 'application/x-www-form-urlencoded',      // 请求方式为 post 时需要
        queryParams: function (params) {
            return {
                keyword: input.val(),
                pageSize: params.limit,
                pageNum: (params.offset / params.limit) + 1
            }
        },
        responseHandler: function (res) {                     // 将后端的 json 数据修改为能接收的格式
            return {
                total: res.data.total,
                rows: res.data.list
            }
        },
        /*
        * 分页方式，可选值：server、client，与后端发送的 json 格式有关
        *   client 表示由前端分页，json 是一个数组：[{},{},{},{}]
        *   server 表示由后端分页，json 需要封装 total 和 rows 属性：{'total':20, 'rows':[{},{},{},{}]}
        * */
        sidePagination: 'server',
        pagination: true,                                          // 是否开启分页功能
        pageList: [10, 20],                                        // 可选的单页行数（与单页行数（默认为 10）一致则不会看到样式）
        cache: false,                                              // 是否启用缓存
        columns: [{
            checkbox: true
        }, {
            title: '序号',
            align: 'center',
            formatter: function (value, row, index) {
                const options = table.bootstrapTable("getOptions");
                return (options.pageNumber - 1) * options.pageSize + index + 1
            }
        }, {                                 // 表头（field 需要与 json 对应，title 为显示样式）
            field: 'id',
            title: '角色id',
            class: 'id',
        }, {
            field: 'name',
            title: '角色名',
            class: 'name'
        }, {
            title: '操作',
            class: 'option',
            align: 'center',
            formatter: function () {
                let result = ""
                result += "<span data-toggle='modal' data-target='#updateModal' class='fas fa-edit' style='font-size: 16px; color: dodgerblue; margin: 0 5px; cursor: pointer'></span>";
                result += "<span class='fas fa-trash-alt' style='font-size: 16px; color: orangered; margin: 0 5px; cursor: pointer' onclick='remove($(this).parent().prevAll(\".id\").text())'></span>"; // onclick 方法参数的双引号一定要加
                return result
            }
        }]
    })

    // 打开更新模态框的钩子函数（将数据传入模态框中）
    $('#updateModal').on('show.bs.modal', function (e) {
        const parent = $(e.relatedTarget).parent();
        const texts = [parent.prevAll('.id').text(), parent.prevAll('.name').text()]
        let i = 0;
        $('#updateModal').find('input').each(function () {
            $(this).val(texts[i])
            i++
        })
    })

    // 打开添加模态框的钩子函数（将缓存数据清除）
    $('#addModal').on('show.bs.modal', function () {
        $('#addModal').find('input').each(function () {
            $(this).val("")
        })
    })


    // 添加或更新功能
    function addOrUpdate(url, modal) {
        const serialize = {};
        $.each(modal.find('form').serializeArray(), function (i, item) {
            serialize[item.name] = item.value;
        })
        ajaxCommon(url, JSON.stringify(serialize), function () {
            modal.modal('hide')
        })
    }

    // 删除功能
    function remove(id) {
        ajaxCommon('/crowdfunding/role/remove', JSON.stringify({id: id}), function () {
        })
    }

    // 批量删除功能
    function batchRemove() {
        table.bootstrapTable('getSelections').map(function (item) {
            remove(item.id)
        })
    }

    // 公共的 ajax 提交方法
    function ajaxCommon(url, json, otherOptionWithSuccess) {
        $.ajax({
            url: url,
            type: 'post',
            contentType: "application/json",
            data: json,
            success: function () {
                otherOptionWithSuccess()
                updateTable()
            },
            error: function (response) {
                console.log(response)
            }
        })
    }

    let oldValue;

    $("#input-btn").click(function () {
        oldValue = input.val()
    })

    // 解决了更新表格的一些 bug
    function updateTable() {
        const newValue = input.val();
        if ($.trim(oldValue) !== $.trim(newValue)) {
            input.val(oldValue)
            table.bootstrapTable('refresh')
            input.val(newValue)
        }else {
            table.bootstrapTable('refresh')
        }
    }
</script>
</body>
</html>

