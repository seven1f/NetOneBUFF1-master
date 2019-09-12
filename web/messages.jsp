<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/7/25
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" media="all" />
    <!--<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/index.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/product.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/jquery-1.11.0.min.js"></script>
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
<body class=" csgo  ">
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
                            <li><a href="formtest.jsp">上传</a></li>
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
                                                <li><a href="product-m.html">余额：<%=user.getUserBalance()%></a></li>
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


<div class="l_Layout" id="notice-wrapper" data-noticeid="57">
    <div class="notice"> <span class="l_Right"><a href="javascript:;" onclick="notification.closeNotice(57, 730)" class="close">×</a></span>
        <p> <a href="https://buff.163.com/news/3367?from=top" target="_blank">萌新卖家注意:在令牌确认时一定要核对买家Steam加入日期，否则可能被骗</a> </p>
    </div>
</div>
<div class="blank20"></div>
<div class="cru black l_Layout"> <span><a href="https://buff.163.com/news/">游戏资讯</a></span> <i class="icon icon_arr_right cru-game"></i>
    <span class="cru-game"><a href="https://buff.163.com/news/">全部</a></span> <i class="icon icon_arr_right cru-detail"
                                                                                 style="display:none;"></i> <span class="cru-detail" style="display:none;">资讯详情</span> </div>
<div class="news">
    <div class="l_Layout">
        <div class="block-header black">
            <ul class="tab"> <a href="https://buff.163.com/news/">
                <li class="on">全部</li>
            </a> <a href="https://buff.163.com/news/?game=csgo">
                <li><img src="images/ku/logo_csgo_black.png">CS:GO</li>
            </a> <a href="https://buff.163.com/news/?game=dota2">
                <li><img src="images/ku/logo_dota_black.png">DOTA2</li>
            </a> <a href="https://buff.163.com/news/?game=pubg">
                <li><img src="images/ku/logo_pubg_black.png">绝地求生</li>
            </a> </ul>
            <div class="clear"></div>
        </div>
        <div class="news-cont news-cont_list">
            <ul class="news-list">
                <c:forEach var="n" items="${News}">
                <li> <a href="https://buff.163.com/news/10540">
                    <img class="lazy" src="${n.getNews_pic()}" width="184" height="138">
                </a>
                    <div class="news-list-text">
                        <span data-target-type="1" data-target-id="10540" class="l_Right user-fav add-bookmark"><span>收藏</span><i
                                class="icon icon_fav"></i></span> <span data-target-type="1" data-target-id="10540" class="l_Right user-fav on delete-bookmark"
                                                                        style="display:none"><span>已收藏</span><i class="icon icon_fav"></i></span>
                        <h4><a href="https://buff.163.com/news/10540" class="a_Black">${n.getNews_describe()}</a></h4>
                        <p> <span class="tag tag_csgo">CS:GO</span> </p>
                        <div class="news-attr"><span>作者：${n.getNews_author()}</span><span>来源：${n.getNews_from()}</span><span><i class="icon icon_time"></i>${n.getNews_time()}</span></div>
                    </div>
                </li>
                </c:forEach>
            </ul>
            <div class="pager card-pager light-theme simple-pagination">
                <ul>
                    <li class="disabled"><a href="showAll.do1?currentPage=<c:if test="${currentPage<=1}">1</c:if>${currentPage-1}" class="current prev">上一页</a></li>
                    <li><a href="showAll.do1?currentPage=1" class="page-link">1</a></li>
                    <li><a href="showAll.do1?currentPage=2" class="page-link">2</a></li>
                    <li><a href="showAll.do1?currentPage=3" class="page-link">3</a></li>
                    <li><a href="#page_num=4" class="page-link">4</a></li>
                    <li><a href="#page_num=5" class="page-link">5</a></li>
                    <li class="disabled"><span class="ellipse">…</span></li>
                    <li><a href="#page_num=530" class="page-link">530</a></li>
                    <li><a href="#page_num=531" class="page-link">531</a></li>
                    <li><a href="showAll.do1?currentPage=<c:if test="${currentPage}>=${pages}">${pages}</c:if>${currentPage+1}" class="current prev">下一页</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
`<!--tems end here-->
<!--footer strat here-->
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
<!--footer end here-->
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
