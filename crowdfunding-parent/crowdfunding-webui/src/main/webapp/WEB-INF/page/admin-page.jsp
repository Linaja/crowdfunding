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

    <%@include file="include-nav.jsp"%>

    <div style="height: 100px;"></div>

    <div class="row">
        <div class="col-md-2"></div>

        <%@include file="include-sidebar.jsp"%>

        <div class="col-md-6">
            <div class="row">
                <div class="col-md-8">
                    <form class="form-inline">
                        <div class="input-group w-100">
                            <div class="input-group-prepend">
                                <label for="input-text" class="input-group-text" id="basic-addon1">条件查询</label>
                            </div>
                            <input type="text" class="form-control" id="input-text" placeholder="请输入关键字" aria-describedby="basic-addon1">
                            <div class="input-group-append">
                                <input type="button" class="btn btn-outline-primary" value="查询" onclick="$('#table').bootstrapTable('refresh')"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-3">
                    <button class="btn btn-danger float-right" onclick="batchDelete()">批量删除</button>
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
                        <label for="updateAccount" class="col-form-label">账号</label>
                        <input type="text" class="form-control" id="updateAccount" name="account" readonly>
                    </div>
                    <div class="form-group">
                        <label for="updatePassword" class="col-form-label">修改密码</label>
                        <input type="password" class="form-control" id="updatePassword" name="password"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="updateName" class="col-form-label">修改昵称</label>
                        <input type="text" class="form-control" id="updateName" name="name" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="updateEMail" class="col-form-label">修改邮箱</label>
                        <input type="email" class="form-control" id="updateEMail" name="eMail"
                               autocomplete="new-password">
                    </div>
                    <div class="form-group">
                        <label for="updateCreationTime" class="col-form-label">创建时间</label>
                        <input type="text" class="form-control" id="updateCreationTime" name="creationTime" readonly>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="update()">提交</button>
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
                        <label for="addAccount" class="col-form-label">账号</label>
                        <input type="text" class="form-control" id="addAccount" name="account" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="addPassword" class="col-form-label">密码</label>
                        <input type="password" class="form-control" id="addPassword" name="password" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="addName" class="col-form-label">昵称</label>
                        <input type="text" class="form-control" id="addName" name="name" autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label for="addEMail" class="col-form-label">邮箱</label>
                        <input type="email" class="form-control" id="addEMail" name="eMail" autocomplete="new-password">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="add()">提交</button>
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

    /* 对 bootstrap table 的设置 */
    $('#table').bootstrapTable({
        url: '/crowdfunding/admin/pageInfo',                   // 请求路径（一定要在前面加 /）
        method: 'post',                                        // 请求方式
        contentType: 'application/x-www-form-urlencoded',      // 请求方式为 post 时需要
        queryParams: function (params) {                       // 请求参数
            return {
                keyword: $('#input-text').val(),               // 关键字（绑定输入框，实现搜索功能）
                pageSize: params.limit,                        // 页面大小
                pageNum: (params.offset / params.limit) + 1    // 页码
            }
        },
        /*
        * 分页方式，可选值：server、client，与后端发送的 json 格式有关
        *   client 表示由前端分页，json 是一个数组：[{},{},{},{}]
        *   server 表示由后端分页，json 需要封装 total 和 rows 属性：{'total':20, 'rows':[{},{},{},{}]}
        * */
        sidePagination: 'server',
        pagination: true,                                        // 是否开启分页功能
        pageList: [10, 20],                                          // 可选的单页行数（与单页行数（默认为 10）一致则不会看到样式）
        cache: false,                                            // 是否启用缓存
        /*onDblClickCell: function (field, value, row, $element) { // 单元格双击事件（实现修改功能）
            if ($element.attr('class') != 'option'){
                $element.attr('contenteditable', 'true')
            }
        },*/
        columns: [{
            checkbox: true
        }, {
            title: '序号',
            align: 'center',
            formatter: function (value, row, index) {
                const options = $("#table").bootstrapTable("getOptions");
                return (options.pageNumber - 1) * options.pageSize + index + 1
            }
        }, {                                 // 表头（field 需要与 json 对应，title 为显示样式）
            field: 'account',
            title: '账号',
            class: 'account'
        }, {
            field: 'name',
            title: '昵称',
            class: 'name'
        }, {
            field: 'eMail',
            title: '邮箱',
            class: 'eMail'
        }, {
            field: 'creationTime',
            title: '创建时间',
            class: 'creationTime'
        }, {
            title: '操作',
            class: 'option',
            align: 'center',
            formatter: function () {
                let result = ""
                result += "<span data-toggle='modal' data-target='#updateModal' class='fas fa-edit' style='font-size: 16px; color: dodgerblue; margin: 0 5px; cursor: pointer'></span>";
                result += "<span class='fas fa-trash-alt' style='font-size: 16px; color: orangered; margin: 0 5px; cursor: pointer' onclick='remove(this)'></span>";
                return result
            }
        }]
    })

    // 删除功能
    function remove(option) {
        const admin = {
            account: $(option).parent().prevAll('.account').text()
        }
        const requestBody = JSON.stringify(admin)
        $.ajax({
            url: '/crowdfunding/admin/remove',
            type: 'post',
            contentType: "application/json",
            data: requestBody,
            success: function () {
                $('#table').bootstrapTable('refresh')
            },
            error: function () {
                alert("操作失败")
            }
        })
    }

    // 打开模态框的钩子函数（将数据传入模态框中）
    $('#updateModal').on('show.bs.modal', function (e) {
        const parent = $(e.relatedTarget).parent();
        const texts = [parent.prevAll('.account').text(), '', parent.prevAll('.name').text(), parent.prevAll('.eMail').text(), parent.prevAll('.creationTime').text()]
        let i = 0;
        $('#updateModal').find('input').each(function () {
            $(this).val(texts[i])
            i++
        })
    })

    // 打开模态框的钩子函数（将缓存数据清除）
    $('#addModal').on('show.bs.modal', function () {
        $('#addModal').find('input').each(function () {
            $(this).val("")
        })
    })

    // 更新功能
    function update() {
        const formObject = {};
        $.each($("#updateForm").serializeArray(), function (i, item) {
            formObject[item.name] = item.value;
        })
        $.ajax({
            url: '/crowdfunding/admin/updateAdmin',
            type: 'post',
            contentType: "application/json",
            data: JSON.stringify(formObject),
            success: function () {
                $('#updateModal').modal('hide');
                $('#table').bootstrapTable('refresh')
            },
            error: function () {
                alert("操作失败")
            }
        })
    }

    // 添加功能
    function add() {
        const formObject = {};
        $.each($("#addForm").serializeArray(), function (i, item) {
            formObject[item.name] = item.value;
        })
        $.ajax({
            url: '/crowdfunding/admin/addAdmin',
            type: 'post',
            contentType: "application/json",
            data: JSON.stringify(formObject),
            success: function () {
                $('#addModal').modal('hide');
                $('#table').bootstrapTable('refresh')
            },
            error: function () {
                alert("操作失败")
            }
        })
    }

    function batchDelete() {
        const rows = $("#table").bootstrapTable('getSelections');
        rows.map(function (item) {
            const admin = {
                account: item.account
            }
            const requestBody = JSON.stringify(admin)
            $.ajax({
                url: '/crowdfunding/admin/remove',
                type: 'post',
                contentType: "application/json",
                data: requestBody,
                success: function () {
                    $('#table').bootstrapTable('refresh')
                },
                error: function () {
                    alert("操作失败")
                }
            })
        })
    }
</script>
</body>
</html>
