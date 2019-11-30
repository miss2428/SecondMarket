<%@ page import="model.User" %>
<%@ page import="dto.ArticleForm" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>详情</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600|PT+Serif:400,400italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="static/css/styleindex.css" id="theme-styles">
    <script src="assets/js/jquery-1.10.2.js"></script>


</head>
<body>
    <header>
        <div class="widewrapper masthead">
            <div class="container">
                <a href="" id="logo">
                   <p class="h1 p-heading">二手大卖场</p>
                </a>
        
                <div id="mobile-nav-toggle" class="pull-right">
                    <a href="#" data-toggle="collapse" data-target=".clean-nav .navbar-collapse">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>

                <nav class="pull-right clean-nav">
                    <div class="collapse navbar-collapse">
                        <ul class="nav nav-pills navbar-nav">
                          
                            <li>
                            <c:choose>
                                <c:when test="${sessionScope.user == null}">
                                    <c:out value="<a href= 'init'>&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;</a>" escapeXml="false"></c:out>
                                </c:when>
                                <c:otherwise>
                                    <c:out value="<a href='quit.action'>&nbsp;退&nbsp;&nbsp;&nbsp;&nbsp;出&nbsp;</a>" escapeXml="false"></c:out>
                                </c:otherwise>
                            </c:choose>
                        	</li>
                            <li>
                                <a href="me.action">个人中心</a>
                            </li>                        
                        </ul>
                    </div>
                </nav>        

            </div>
        </div>
        
        <div class="widewrapper subheader">
            <div class="container">
                <div class="clean-breadcrumb">
                    <a href="getArticle.action">主页</a>
                    <span class="separator">&#x2F;</span>
                    <a href="#">二手物品</a>
                    <span class="separator">&#x2F;</span>
                    <a href="#">${af.itemType}</a>
                </div>

              
                <!--<div class="clean-searchbox">
                    <form action="#" method="get" accept-charset="utf-8">
                       
                        <input class="searchfield" id="searchbox" type="text" placeholder="Search">
                         <button class="searchbutton" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
                </div>-->
            </div>
        </div>
    </header>

    <div class="widewrapper main">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-4 blog-main">
                    <article class="blog-post">
                        <header>
                           
                            <div class="lead-image">
                                <img src="${af.image}"img-responsive">
                                
                            </div>
                        </header>
                        <div class="body">
                            <h1>${af.title}</h1>
                            <div class="meta">
                                <i class="fa fa-user"></i>${af.username} <i class="fa fa-calendar"></i>${af.createTime}
                            </div>
                            
                             <p class="h2">${af.description} </p>

                        </div>
                    </article>









                    <aside class="comments" id="comments">
                        <hr>

                        <h2 ><i class="fa fa-comments"></i> <span id="comspan"></span> 条评论</h2>


                    <div id="articlecontents">
                        <article class="comment">
                            <header class="clearfix">
                                <img src="assets/img/head.jpg" >
                                <div class="meta">
                                    <h3><a href="#"><span class="username">John Doe</span></a></h3>
                                    <span class="date">
                                        24 August 2015
                                    </span>
                                    <span class="separator">
                                        -
                                    </span>

                                    <a href="#create-comment" class="reply-link">回复</a>
                                </div>
                            </header>
                            <div class="body">
                                <span class="contents">Lorem ipsum dolor sit amet, consectetur adipisicing</span>
                            </div>
                        </article>
                    </div>



                        <aside class="create-comment" id="create-comment">
                            <hr>


                            <h2><i class="fa fa-pencil"></i> 添加评论</h2>




                                <textarea rows="10" name="message" id="comment-body" placeholder="Your Message" class="form-control input-lg"></textarea>

                                <div class="buttons clearfix">
                                    <button  class="btn btn-xlarge btn-clean-one" id="submit1">提交</button>
                                </div>

                        </aside>
                    </aside>















                </div>
                <div class="col-md-4 col-sm-4  blog-aside">
                    
                    <div class="aside-widget">
                        <header>
                            <h3><br><br></h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                                <li><span class="price">价格：<b>￥</b><em>${af.price}</em></span></li>
                                <li>联系方式：${af.contact}</li>
                                <li>所在地：${af.address}</li>
                                <li>是否支持网薪支付：<c:choose>
                                    <c:when test="${af.wangxinSupport == null || af.wangxinSupport.equals('') || af.wangxinSupport == 0}">否
                                    </c:when>
                                    <c:otherwise> 是
                                    </c:otherwise>
                                    </c:choose>
                                <li>网薪价格：${af.wangxinPrice}网薪</li>
                                <li>网薪价格：<c:if test="${af.wangxinPrice != 0 && af.wangxinPrice != null}">${af.wangxinPrice}</c:if>
                                    <c:if test="${af.wangxinPrice == 0 || af.wangxinPrice == null}">不支持网薪支付</c:if></li>
                            </ul>
                        </div>
                    </div>
                
                    <div class="aside-widget">
                        <header>
                            <h3>交易</h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                            	<div class="ul-label h2">
                            		<span class="label label-info ">我的网薪：${wx}</span>

                            	</div>
           <!--                     <a href="PayServlet?wx=${af.wangxinPrice}&aid=${af.aid}"><button type="button" class="btn btn-danger btn-lg " >立即支付 &nbsp;&nbsp;&nbsp;${af.wangxinPrice}网薪</button></a>
                                        expay?wx=${af.wangxinPrice}&aid=${af.aid}&uid=${af.uid}
                                <p>支付前请先于卖家联系</p>   -->
                                
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <footer>

        <div class="widewrapper copyright">
                Copyright 2018 . All Rights Reserved
        </div>
    </footer>
<script type="text/javascript">
    var aid = <%=((ArticleForm)request.getAttribute("af")).getAid()%>;
    var uid = <%=((User)session.getAttribute("user")).getUid() %>
    $(function () {
            $.ajax({
                type    : "GET",
                 url    :"getCommentByAid.action",
                data    :"aid="+aid,
              success   :function (result) {
                  $("#comspan").text(result.length);


                  if(result.length == 0)
                  {
                      $(".comment:first").hide();
                  }
                  for(var i = 0; i < result.length - 1; i++)
                  {
                      $(".comment:first").clone().appendTo($("#articlecontents"));
                  }
                  $.each(result,function (index, item) {
                      $("span.username:eq("+index+")").text(item.username);
                      $("span.date:eq("+index+")").text(item.createTime);
                      $("span.contents:eq("+index+")").text(item.contents);

                  });
                }
            });
    });




    $(function () {
        $("#submit1").click(
            function () {
                var text = $("#comment-body").val();
                var datapost = "contents=" + text + "&aid=" + aid + "&uid=" + uid;
                $.ajax({
                    type    :   "POST",
                    url     :   "addComment.action",
                    data    :   datapost,
                    success :   function (item) {
                        $(".comment:first").clone().appendTo($("#articlecontents"));
                        $("span.username:last").text(item.username);
                        $("span.date:last").text(item.createTime);
                        $("span.contents:last").text(item.contents);
                        $(".comment:last").show();
                    },
                    error   :   function () {
                        alert("添加失败");
                    },

                });
            }
        )
    });
</script>



</body>
</html>