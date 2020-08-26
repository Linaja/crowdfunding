<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <base href="http://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/" />
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
                    <a class="btn btn-outline-primary my-2 my-sm-0" href="dispatch/admin-login">登录</a>
                </div>
            </nav>
        </div>
        <div class="col-md-2"></div>
    </div>

    <div class="=row" style="height: 50px"></div>

    <!-- 中部 -->
    <div class="row">
        <div class="col-md-2"></div>
        <!-- 轮播图 -->
        <div class="col-md-8">
            <div class="carousel slide" id="carousel-22472">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-22472"></li>
                    <li data-slide-to="1" data-target="#carousel-22472" class="active"></li>
                    <li data-slide-to="2" data-target="#carousel-22472"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item">
                        <img class="d-block w-100" alt="Carousel Bootstrap First" src="https://www.layoutit.com/img/sports-q-c-1600-500-1.jpg"/>
                    </div>
                    <div class="carousel-item active">
                        <img class="d-block w-100" alt="Carousel Bootstrap Second" src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg"/>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" alt="Carousel Bootstrap Third" src="https://www.layoutit.com/img/sports-q-c-1600-500-3.jpg"/>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carousel-22472" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel-22472" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>

    <div class="=row" style="height: 80px"></div>

    <!-- 中部 -->
    <div class="row">
        <div class="col-md-2"></div>
        <!-- 图片展示 -->
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" alt="Bootstrap Thumbnail First" src="https://www.layoutit.com/img/people-q-c-600-200-1.jpg"/>
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

    <div class="=row" style="height: 50px"></div>
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-4">
            <dl>
                <dt>
                    Description lists
                </dt>
                <dd>
                    A description list is perfect for defining terms.
                </dd>
                <dt>
                    Euismod
                </dt>
                <dd>
                    Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
                </dd>
                <dd>
                    Donec id elit non mi porta gravida at eget metus.
                </dd>
                <dt>
                    Malesuada porta
                </dt>
                <dd>
                    Etiam porta sem malesuada magna mollis euismod.
                </dd>
                <dt>
                    Felis euismod semper eget lacinia
                </dt>
                <dd>
                    Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
                    sit amet risus.
                </dd>
            </dl>
        </div>
        <div class="col-md-4">
            <dl>
                <dt>
                    Description lists
                </dt>
                <dd>
                    A description list is perfect for defining terms.
                </dd>
                <dt>
                    Euismod
                </dt>
                <dd>
                    Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.
                </dd>
                <dd>
                    Donec id elit non mi porta gravida at eget metus.
                </dd>
                <dt>
                    Malesuada porta
                </dt>
                <dd>
                    Etiam porta sem malesuada magna mollis euismod.
                </dd>
                <dt>
                    Felis euismod semper eget lacinia
                </dt>
                <dd>
                    Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
                    sit amet risus.
                </dd>
            </dl>
        </div>
        <div class="col-md-2">
        </div>
    </div>
    <div class="=row" style="height: 50px"></div>
</div>
</body>
</html>
