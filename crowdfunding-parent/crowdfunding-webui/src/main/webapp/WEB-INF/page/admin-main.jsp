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
    <%@include file="include-nav.jsp"%>

    <div style="height: 100px;"></div>

    <div class="row">
        <div class="col-md-2"></div>

        <%@include file="include-sidebar.jsp" %>

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