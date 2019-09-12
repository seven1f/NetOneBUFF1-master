<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>Home</title>
  <link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>

  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <link href="css/index.css" rel="stylesheet" type="text/css" media="all">
  <link href="css/product.css" rel="stylesheet" type="text/css" media="all">
  <script src="js/jquery-1.11.0.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <script src="js/jquery-1.11.0.min.js"></script>
  <script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
  }, false);

  function hideURLbar() {
    window.scrollTo(0, 1);
  } </script>
  <!--Google Fonts-->
  <link href='https://fonts.googleapis.com/css?family=Hind:400,500,300,600,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
  <!-- start-smoth-scrolling -->
  <%--<script type="text/javascript" src="js/move-top.js"></script>--%>
  <%--<script type="text/javascript" src="js/easing.js"></script>--%>
  <script type="text/javascript">
    jQuery(document).ready(function ($) {
      $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
      });
    });
  </script>
  <!-- //end-smoth-scrolling -->
  <script src="js/simpleCart.min.js"></script>
  <script src="js/bootstrap.min.js"></script>


  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
  function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!-- //custom-theme -->
  <!-- Google fonts -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
  <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">

  <!-- css files -->
  <%--<link href="css/style2.css" type="text/css" rel="stylesheet" media="all">--%>
  <!-- //css files -->

  <link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->

  <link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all" /> <!-- popup box css -->

</head>
<body class="body-background">

<div class="header">
  <div class="container">
    <div class="header-main">
      <div class="top-nav">
        <div class="content white">
          <nav class="navbar" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse"
                      data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <div class="navbar-brand logo" style="padding-top: 17px">
                <a href="index.jsp"><img src="images/site/logo.png" alt=""></a>
              </div>
            </div>
            <!--/.navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">

                <li><a href="index.jsp">首页</a></li>
                <li><a href="showAll.do2">饰品市场</a></li>
                <li><a href="index.jsp">库存估价</a></li>
                <li><a href="showAll.do1">游戏资讯</a></li>

              </ul>
            </div>
            <!--/.navbar-collapse-->
          </nav>
          <!--/.navbar-->
        </div>
      </div>
      <div class="header-right collapse navbar-collapse">
        <div class="search nav navbar-nav">
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
            <ul class="nav navbar-nav">
              <%
                User user = (User) session.getAttribute("user");
                if (user!=null){
              %>
              <li><a href="page?page=1">我的库存</a></li>
              <li><a href="page?page=1">我的出售</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=user.getUserId()%> <b class="caret"></b></a>
                <ul class="dropdown-menu multi-column columns-3" style="background-color: #27324b;">
                  <div class="row">
                    <div class="col-sm-4">
                      <ul class="multi-column-dropdown" style="width: 100px">
                        <li>
                          <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog1">个人信息</a>
                        </li>
                        <li>
                          <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog4">修改信息</a>
                        </li>
                        <li>
                          <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog5">修改密码</a>
                        </li>
                        <li><a href="#">余额：<%=user.getUserBalance()%></a></li>
                        <li>
                          <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog3">充值</a>
                        </li>
                        <li>
                          <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog6">提现</a>
                        </li>
                        <li><a href="logout.do">注销</a></li>
                      </ul>
                    </div>
                  </div>
                </ul>
              </li>
              <%
                }else {
              %>


              <li>
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">登录</a>
              </li>
              <li>

                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog2">注册</a>

              </li>
              <%
                }
              %>
            </ul>
          </div>

          <!--<div class="cart box_1">
              <a href="checkout.html">
                  <h3>
                      <img src="images/cart.png" alt=""/>
                      <div class="total">
                          <span class="simpleCart_total"></span></div>
                  </h3>
              </a>
              <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
          </div>-->

          <div class="clearfix"></div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>

<!--登录-->
<div class="pop-up">
  <div id="small-dialog" class="mfp-hide book-form">

    <div class="login-form login-form-left">
      <div class="agile-row">
        <h3>登录</h3>
        <span class="fa fa-lock"></span>
        <div class="clear"></div>
        <div class="login-agileits-top">
          <form action="login.do" method="post">
            <input type="text" class="name" name="userId" Placeholder="用户名" required=""/>
            <input type="password" class="password" name="userPassword" Placeholder="密码" required=""/>
            <input type="submit" value="登录">
          </form>
        </div>
        <div class="login-agileits-bottom">
          <h6>
            <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog2">注册</a></h6>
        </div>
      </div>
    </div>

  </div>
</div>
<!--注册-->
<div class="pop-up">
  <div id="small-dialog2" class="mfp-hide book-form">

    <div class="login-form login-form-left">
      <div class="agile-row">
        <h3 style="padding-left: 170px">注册</h3>
        <div class="login-agileits-top">
          <form action="${pageContext.request.contextPath}/register.do" method="post">
            <input type="text" class="id" name="userId" Placeholder="用户名" required=""/>
            <input type="password" class="password" name="userPassword" Placeholder="密码" required=""/>
            <input type="text" class="name" name="userName" Placeholder="姓名" required=""/>
            <input type="email" class="email" name="userEmail" Placeholder="邮箱" required=""/>
            <input type="text" class="phone" name="userTelephone" Placeholder="电话" required=""/>
            <div class="login-check">
              <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i> 我同意 <a href="#">条款 &amp; 条件</a></label>
            </div>
            <input type="submit" value="注册">
          </form>
        </div>
      </div>
    </div>

  </div>
<!--个人信息-->
</div>
<div class="pop-up">
  <div id="small-dialog1" class="mfp-hide book-form">

    <div class="login-form login-form-left">
      <div class="agile-row">
        <h3 style="padding-left: 150px">个人信息</h3>
        <div class="login-agileits-top">

            <%
              User user1 = (User) session.getAttribute("user");
              if (user1!=null){
            %>
            <div class="my-info" style="padding-top: 10px;padding-bottom: 10px;">用户名：<%=user1.getUserId()%><br></div>
            <div class="my-info" style="padding-top: 10px;padding-bottom: 10px;">姓名：<%=user1.getUserName()%><br></div>
            <div class="my-info" style="padding-top: 10px;padding-bottom: 10px;">邮箱：<%=user1.getUserEmail()%><br></div>
            <div class="my-info" style="padding-top: 10px;padding-bottom: 10px;">电话：<%=user1.getUserTelephone()%><br></div>
          <%
            }
          %>
        </div>
      </div>
    </div>
  </div>
</div>
<%--修改信息--%>
<div class="pop-up">
  <div id="small-dialog4" class="mfp-hide book-form">

    <div class="login-form login-form-left">
      <div class="agile-row">
        <h3 style="padding-left: 170px">修改信息</h3>
        <div class="login-agileits-top">
          <form action="${pageContext.request.contextPath}/updateInfo.do" method="post">
            <input type="text" class="name" name="userName" Placeholder="姓名" required=""/>
            <input type="email" class="email" name="userEmail" Placeholder="邮箱" required=""/>
            <input type="text" class="phone" name="userTelephone" Placeholder="电话" required=""/>
            <input type="submit" value="确认修改">
          </form>
        </div>
      </div>
    </div>

  </div>
</div>
<%--修改密码--%>
<div class="pop-up">
  <div id="small-dialog5" class="mfp-hide book-form">
    <div class="login-form login-form-left">
      <div class="agile-row">
        <h3 style="padding-left: 170px">修改密码</h3>
        <div class="login-agileits-top">
          <form action="${pageContext.request.contextPath}/updatePassword.do" method="post">
            <input type="password" class="name" name="oldPassword" Placeholder="原密码" required=""/>
            <input type="password" class="name" name="newPassword" Placeholder="新密码" required=""/>
            <input type="password" class="name" name="newPassword2" Placeholder="确认新密码" required=""/>
            <input type="submit" value="确认修改">
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<%--充值--%>
<div class="pop-up">
  <div id="small-dialog3" class="mfp-hide book-form" style="
    padding-left: 50px;
    padding-right: 50px;
    padding-top: 50px;
    padding-bottom: 50px;
">

    <div class="login-form login-form-left">
      <div class="agile-row">
        <h3>充值</h3>
        <span class="fa fa-lock"></span>
        <div class="clear"></div>
        <div class="login-agileits-top">
          <form action="alipay.trade.page.pay.jsp" method="post">
            <input type="text" class="name" name="WIDtotal_amount" Placeholder="充值金额" required=""/>
            <input type="submit" value="前往充值">
          </form>
        </div>
      </div>
    </div>

  </div>
</div>
<%--提现--%>
<div class="pop-up">
  <div id="small-dialog6" class="mfp-hide book-form">

    <div class="login-form login-form-left">
      <div class="agile-row">
        <h3>提现</h3>
        <span class="fa fa-lock"></span>
        <div class="clear"></div>
        <div class="login-agileits-top">
          <form action="${pageContext.request.contextPath}/cash.do" method="post">
            <input type="text" class="name" name="cash" Placeholder="提现金额" required=""/>
            <input type="text" class="name" name="cardId" Placeholder="提现卡号" required=""/>
            <input type="submit" value="提现">
          </form>
        </div>
      </div>
    </div>

  </div>
</div>
<div class="slider">
  <div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <ul class="carousel-inner focus-slider">
      <li class="item active">
        <div class="focus-text">
          <h1>最热门的CSGO饰品</h1>
          <p>好货推荐 跟着买就对了</p>
        </div>
        <div class="focus-pic">
          <img src="images/market/file/5cbfc569a7f25262e5e1dbd0p2AlOda702.png"
               width="960" height="400">
        </div>
      </li>

      <li class="item">
        <div class="focus-text">
          <h1>现已支持微信支付</h1>
          <p>购买更方便</p>
        </div>
        <div class="focus-pic"><img
                src="images/market/file/5cd0e98b2786fd67c387ee2fuNkjsKC202.png" width="960"
                height="400"></div>
      </li>
      <li data-url="https://buff.163.com/app/" data-new-tab="1"  class="item">
        <div class="focus-text"><h1>BUFF移动端APP</h1>
          <p>随时随地 便捷交易快人一步</p></div>
        <div class="focus-pic"><img
                src="https://g.fp.ps.netease.com/market/file/5c99faa0143cfa6a5a438aaffkTFAupp02" width="960"
                height="400"></div>
      </li>
      <li data-url="https://buff.163.com/news/3367?from=web" data-new-tab="1" class="item">
        <div class="focus-text"><h1>交易防骗指南</h1>
          <p>务必阅读</p></div>
        <div class="focus-pic"><img
                src="https://g.fp.ps.netease.com/market/file/5bc5a9f7a7f252bce7d74e26yrA5Zmyd" width="960"
                height="400"></div>
      </li>
      <li data-url="http://uu.163.com/?from=buff" data-new-tab="1" class="item">
        <div class="focus-text"><h1>UU加速器iOS/安卓</h1>
          <p>免费加速Steam令牌 解决访问问题</p></div>
        <div class="focus-pic"><img
                src="https://g.fp.ps.netease.com/market/file/5a6c60456f049476290848d5NzLpNNBQ" width="960"
                height="400"></div>
      </li>


    </ul>

    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev"></a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next"></a>
  </div>
</div>

<div class="area1">
  <div class="l_Layout">
    <div class="hot_col1">
      <div class="sec-title" style="margin-left: 45px; width: 970px;">
                <span class="l_Right">
                    <a href="market.jsp" class="market-link" data-tab="selling">
                        进入市场
                        <i class="icon icon_arr_right_small"></i>
                    </a>
                </span>
        <h2>热门饰品</h2>
      </div>
      <div class="product">
        <div class="container">
          <div class="product-main">
            <div class="col-xs-12 product-block">
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.do3?single=4"><img src="images/csgoimg/dao1.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">匕首</a></h3>
                    <p>蝴蝶刀|(破碎不堪)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/buqiang1.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">步枪</a></h3>
                    <p>AWP|(纪念品)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/chongfeng1.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">冲锋枪</a></h3>
                    <p>PP 野牛|(崭新出厂)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/dao2.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">匕首</a></h3>
                    <p>爪子刀|(崭新出厂)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/shouqiang1.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">手枪</a></h3>
                    <p>Tec-9|(破旧不堪)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/chongfeng2.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">冲锋枪</a></h3>
                    <p>UMP-45|(崭新出厂)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/buqiang2.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">步枪</a></h3>
                    <p>AK-47|(崭新出厂)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/shouqiang2.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">手枪</a></h3>
                    <p>沙漠之鹰|(纪念版)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/buqiang3.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">步枪</a></h3>
                    <p>M4A4|(崭新出厂)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-4 col-sm-6 home-grid product-wid">
                <div class="home-product-main">
                  <div class="home-product-top">
                    <a href="Single.jsp"><img src="images/csgoimg/chongfeng3.png" alt="" class="img-responsive zoom-img"></a>
                  </div>
                  <div class="home-product-bottom">
                    <h3><a href="Single.jsp">冲锋枪</a></h3>
                    <p>MP9|(崭新出厂)</p>
                  </div>
                  <div class="srch">
                    <span>$200</span>
                  </div>
                </div>
              </div>

              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="footer">
  <div class="container">
    <div class="footer-main">
      <div class="ftr-grids-block">
        <div class="col-md-3 footer-grid">

          <ul>
            <li><a style="color: white">账号相关</a>
              <div class="guide-pre"></div>
            </li>
            <li><a href="product.html">Steam设置</a></li>
            <li><a href="product.html">实名认证</a></li>
            <li><a href="product.html">交易防骗指南</a></li>
          </ul>
        </div>
        <div class="col-md-3 footer-grid">
          <ul>
            <li><a style="color: white">钱包相关</a>
              <div class="guide-pre"></div>
            </li>
            <li><a href="product.html">收费标准</a></li>
            <li><a href="product.html">充值提现</a></li>
            <li><a href="product.html">钱包答疑</a></li>
          </ul>
        </div>
        <div class="col-md-3 footer-grid">
          <ul>
            <li><a style="color: white">交易问题</a>
              <div class="guide-pre"></div>
            </li>
            <li><a href="product.html">如何求购</a></li>
            <li><a href="product.html">交易报价失败问题</a></li>
            <li><a href="product.html">什么是交易暂挂</a></li>
            <li><a href="product.html">卖家管理规则及处罚条例</a></li>
          </ul>
        </div>
        <div class="col-md-3 footer-grid">

          <ul>
            <li><a style="color: white">便捷支付</a>
              <div class="guide-pre"></div>
            </li>


            <li>
              <span class="icon icon_footer_alipay"></span>
              &nbsp;&nbsp;支付宝支付
            </li>
            <li>
              <span class="icon icon_footer_bank"></span>
              &nbsp;&nbsp;银行卡支付
            </li>
            <li>
              <span class="icon icon_footer_wx"></span>
              &nbsp;&nbsp;微信支付
            </li>
          </ul>

        </div>
        <div class="clearfix"></div>
      </div>
      <div class="copy-rights">
        <p>网壹公司版权所有 ©2019 </p>
      </div>
    </div>
  </div>
</div>

<!--<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>-->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script>
  $(document).ready(function() {
    $('.popup-with-zoom-anim').magnificPopup({
      type: 'inline',
      fixedContentPos: false,
      fixedBgPos: true,
      overflowY: 'auto',
      closeBtnInside: true,
      preloader: false,
      midClick: true,
      removalDelay: 300,
      mainClass: 'my-mfp-zoom-in'
    });
  });
</script>
</body>
</html>