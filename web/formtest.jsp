<%--
  Created by IntelliJ IDEA.
  User: W
  Date: 2019/7/27
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Carbon - Admin Template</title>
    <link rel="stylesheet" href="css/styles1.css">
<style>
    #ifid{
        display: inline;
    }
</style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        function insertnews() {
            var id=$("#id").val();
            var des=$("#describe").val();
            var news_url=$("#news_url").val();
            var time=$("#time").val();
            var from=$("#from").val();
            var author=$("#author").val();
            var pic=$("#pic").val();
            id=$.trim(id);
            des=$.trim(des);
            news_url=$.trim(news_url);
            time=$.trim(time);
            from=$.trim(from);
            author=$.trim(author);
            pic=$.trim(pic);
            var url="${pageContext.request.contextPath}/check.do1";
            var args= {
                "id": id, "des": des, "news_url": news_url, "time": time, "from": from, "author": author, "pic": pic
            };
            $.post(url,args,function (data) {
                if (data==0) {
                    $("#ifid").html("<font color='green' size='3'>id可用</font>");
                }else {
                    $("#ifid").html("<font color='red' size='3'>该资讯id已存在</font>");
                }
            })
        }
        function delnews() {
            var id=$("#news_id").val();
            var author=$("#news_author").val();
            id=$.trim(id);
            author=$.trim(author);
            var url="${pageContext.request.contextPath}/Delete.do1";
            var args= {
                "id": id, "author": author
            };
            $.post(url,args,function (data) {
                if (data==1){
                    alert("删除成功");
                } else {
                    alert("ID或者作者名错误");
                }

            })
        }
    </script>
</head>
<body class="sidebar-fixed header-fixed">
<div class="main-container">
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-light">
                        Basic Forms
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="id" class="form-control-label">news_id Input</label><div id="ifid"></div>
                                    <input id="id" type="text" class="form-control" name="id" placeholder="Input id">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="describe" class="form-control-label">news_describe</label>
                                    <input id="describe" class="form-control" name="describe" placeholder="Input describe">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="news_url" class="form-control-label">news_url Input</label>
                                    <input id="news_url" class="form-control" name="news_url" placeholder="Input url" >
                                </div>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="time" class="form-control-label">news_time</label>
                                    <input id="time" class="form-control" name="time" placeholder="time text">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="from" class="require">news_from</label>
                                    <input id="from" class="form-control" name="from" placeholder="Input from">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="author" class="require">news_author</label>
                                    <input id="author" class="form-control" name="author" placeholder="Input author">
                                </div>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="pic" class="form-control-label">news_pic</label>
                                    <input id="pic" class="form-control" name="pic" placeholder="Enter pic_url">
                                    <small class="form-text">We'll never share your email with anyone else.</small>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="message" class="form-control-label">提交</label>
                                    <input id="message"  class="form-control" onclick="insertnews()" type="button" value="提交" style="width: 60px">
                                    <a href="showAll.do1?currentPage=1">跳转资讯页面</a>
                                </div>
                            </div>
                        </div>
                        <label>根据id和作者名删除</label>
                        <div class="row mt-4">
                            <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="news_id" class="require">ID</label>
                                        <input id="news_id" class="form-control" name="from" placeholder="Input ID">
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="news_author" class="require">作者名</label>
                                    <input id="news_author" class="form-control" name="from" placeholder="Input author">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <input id="del"  class="form-control" onclick="delnews()" type="button" value="提交" style="width: 60px">
                            </div>
                        </div>

                                <div class="row mt-4">
                            <div class="col-md-4">
                                <label>Sizes</label>

                                <div class="form-group">
                                    <input type="text" class="form-control form-control-sm" placeholder="Small">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Normal">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg" placeholder="Large">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="single-select">Example select</label>
                                    <select id="single-select" class="form-control">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="multi-select">Example multiple select</label>
                                    <select id="multi-select" class="form-control" multiple="">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="textarea">Example textarea</label>
                                    <textarea id="textarea" class="form-control" rows="6"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-light">
                        Input Groups
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <label>Text addon</label>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Username">
                                </div>

                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Recipient's username">
                                    <div class="input-group-append">
                                        <span class="input-group-text">@</span>
                                    </div>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">$</span>
                                    </div>
                                    <input type="text" class="form-control">
                                    <div class="input-group-append">
                                        <span class="input-group-text">.00</span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Icon addon</label>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Username">
                                </div>

                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Email address" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                    </div>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Card Number">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-hashtag"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Sizes</label>

                                <div class="input-group input-group-lg mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2">
                                </div>

                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon3">
                                </div>
                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-md-4">
                                <label for="input-group-1">Input Group with Button</label>
                                <div class="input-group">
                                            <span class="input-group-btn">
                                                <button type="button" class="btn btn-primary"><i class="fa fa-search"></i> Search</button>
                                            </span>
                                    <input type="text" id="input-group-1" name="input1-group2" class="form-control" placeholder="Username">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label for="input-group-2">Input Group with Button</label>
                                <div class="input-group">
                                    <input type="text" id="input-group-2" name="input1-group2" class="form-control" placeholder="Username">
                                    <span class="input-group-btn">
                                                <button type="button" class="btn btn-primary"><i class="fa fa-search"></i> Search</button>
                                            </span>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label for="input-group-3">Input Group with Dropdown</label>
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action
                                            <span class="caret"></span>
                                        </button>

                                        <div class="dropdown-menu" x-placement="bottom-start">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div role="separator" class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </div>

                                    <input type="text" id="input-group-3" name="input1-group3" class="form-control" placeholder="Username">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-light">
                        Switches
                    </div>

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="toggle-switch">
                                    <label for="ts1" class="ts-label">Toggle Swith Default</label>
                                    <input id="ts1" type="checkbox" hidden="hidden">
                                    <label for="ts1" class="ts-helper"></label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="toggle-switch" data-ts-color="primary">
                                    <label for="ts2" class="ts-label">Primary Toggle Switch</label>
                                    <input id="ts2" type="checkbox" hidden="hidden">
                                    <label for="ts2" class="ts-helper"></label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="toggle-switch" data-ts-color="secondary">
                                    <label for="ts3" class="ts-label">Secondary Toggle Switch</label>
                                    <input id="ts3" type="checkbox" hidden="hidden">
                                    <label for="ts3" class="ts-helper"></label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="toggle-switch" data-ts-color="success">
                                    <label for="ts4" class="ts-label">Success Toggle Switch</label>
                                    <input id="ts4" type="checkbox" hidden="hidden">
                                    <label for="ts4" class="ts-helper"></label>
                                </div>
                            </div>
                        </div>

                        <hr>

                        <div class="row mt-4">
                            <div class="col-md-3">
                                <div class="toggle-switch" data-ts-color="info">
                                    <label for="ts5" class="ts-label">Info Swith Default</label>
                                    <input id="ts5" type="checkbox" hidden="hidden">
                                    <label for="ts5" class="ts-helper"></label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="toggle-switch" data-ts-color="warning">
                                    <label for="ts6" class="ts-label">Warning Toggle Switch</label>
                                    <input id="ts6" type="checkbox" hidden="hidden">
                                    <label for="ts6" class="ts-helper"></label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="toggle-switch" data-ts-color="danger">
                                    <label for="ts7" class="ts-label">Danger Toggle Switch</label>
                                    <input id="ts7" type="checkbox" hidden="hidden">
                                    <label for="ts7" class="ts-helper"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
