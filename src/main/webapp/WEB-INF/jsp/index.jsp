<%@page contentType="text/html;charset=utf-8"  language="java" %>
<%@page pageEncoding="UTF-8"%>
<%@page import="constvalue.SessionConst" %>
<%@ page import="model.Page" %>
<%@ page import="dto.SmallArticle" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="CN-ZH">
<head>
    <meta charset="utf-8">
    <title>二手大卖场</title>
    <meta name="description" content="">
 <%--   <meta name="viewport" content="width=device-width">--%>
     <meta http-equiv="pragma" content="no-cache">
     <meta http-equiv="cache-control" content="no-cache">
     <meta http-equiv="expires" content="0">
    <meta name="viewport" content="width=device-width" />

    <link rel="stylesheet" href="static/css/bootstrap.min.css">

    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600|PT+Serif:400,400italic' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="static/css/styleindex.css" id="theme-styles">

    <![endif]-->

</head>
<body>

<%!
    public String getCssClass(int item, HttpSession session)
    {
        int sessionItem = (int)session.getAttribute(SessionConst.item);

        if(sessionItem == item)
        {
            return "active li-nav";
        }
        else
        {
            return "li-nav";
        }

    }
%>

<%!
    public String getLiCssClass(int currentPage, HttpSession session)
    {
        int sessionCurrentPage = (int)session.getAttribute(SessionConst.currentPage);

        if(currentPage == sessionCurrentPage)
        {
            return "active";
        }
        else
        {
            return null;
        }
    }

%>

<%
    Object itemValue = session.getAttribute(SessionConst.item);
    Object currentPage = session.getAttribute(SessionConst.currentPage);
    if(itemValue != null && !(Integer.toString((int)itemValue)).trim().equals(""))
    {
    }
    else {
        session.setAttribute(SessionConst.item, SessionConst.allitem);
    }
    if(currentPage != null && !(Integer.toString((int)currentPage)).trim().equals("") && ((int)currentPage) != 0)
    {
    }
    else
    {
        session.setAttribute(SessionConst.currentPage, 1);
    }

    Page<SmallArticle> page1 = (Page<SmallArticle>) request.getAttribute(SessionConst.page);
    if(page1 == null)
    {
        request.getRequestDispatcher("/getArticle.action").forward(request, response);
        //response.sendRedirect("getArticle");
    }
%>

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
                            <a href="addArticle.action">我要发布</a>
                        </li>
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
            <div class="clean-breadcrumb" >
                <ul class="nav nav-tabs" >
                    <li class=<%=getCssClass(SessionConst.allitem, session)%> ><a href="getArticle.action?item=<%=SessionConst.allitem %>">全部物品</a></li>
                    <li class=<%=getCssClass(SessionConst.item1, session)%>><a href="getArticle.action?item=<%=SessionConst.item1 %>">闲置数码</a></li>
                    <li class=<%=getCssClass(SessionConst.item2, session)%>><a href="getArticle.action?item=<%=SessionConst.item2 %>">闲置书籍</a></li>
                    <li class=<%=getCssClass(SessionConst.item3, session)%>><a href="getArticle.action?item=<%=SessionConst.item3 %>">闲置衣服</a></li>
                    <li class=<%=getCssClass(SessionConst.item4, session)%>><a href="getArticle.action?item=<%=SessionConst.item4 %>">鞋服配饰</a></li>

                </ul>
            </div>

            <div class="clean-searchbox">
                    <form action="getArticle.action" method="get" >
                        <input class="searchfield" id="searchbox" type="text" placeholder="Search" name="searchValue">
                        <button class="searchbutton" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
            </div>
        </div>
    </div>



</header>

<div class="widewrapper main">
    <div class="container">
        <div class="row">
            <div class="col-md-12 blog-main">
                <div class="row"  >
                    <c:forEach items="${page.list}"  var="article" begin="0" end="2">
                        <div class="col-md-4 col-sm-4 col-xs-4">
                            <article class=" blog-teaser">
                                <header>
                                    <img src="${article.image}"  class="img-responsive img-rounded" >
                                    <h3><a href="single.action?aid=${article.aid}">&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${article.title}" /></a><span class="price"">&nbsp;&nbsp;<b>￥</b><em><c:out value="${article.price}" /></em></span></h3>
                                    <span class="meta"><c:out value="${article.createTimeS}" /></span>
                                    <hr>
                                </header>

                            </article>
                        </div>
                    </c:forEach>
                </div>
				<div class="row">
                    <c:forEach items="${page.list}"  var="article" begin="3" end="6">
                        <div class="col-md-4 col-sm-4 col-xs-4">
                            <article class=" blog-teaser">
                                <header>
                                    <img src="${article.image}" >
                                    <h3><a href="single.action?aid=${article.aid}">&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${article.title}" /></a><span class="price"">&nbsp;&nbsp;<b>￥</b><em><c:out value="${article.price}" /></em></span></h3>
                                    <span class="meta"><c:out value="${article.createTimeS}" /></span>
                                    <hr>
                                </header>

                            </article>
                        </div>
                    </c:forEach>
                </div>



                <nav aria-label="Page navigation" style="text-align: center">
                    <ul class="pagination pagination-lg">
                        <li class="<c:if test='${sessionScope.currentPage<=1}'><c:out value='disabled'/></c:if>">
                            <a href="getArticle.action?currentPage=${sessionScope.currentPage-1}" aria-label="Previous" >
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <c:forEach var="cp" begin="1" end="${page.totalPages}" step="1">

                            <li class="<% out.print(getLiCssClass((int)pageContext.getAttribute("cp"),session));
                           
                             
                             %>"><a href="getArticle.action?currentPage=${cp}">${cp}</a></li>
                        </c:forEach>

                       <%--  <li class=<%=getLiCssClass(2,session) %>><a href="SearchServlet?currentPage=2">2</a></li>
                        <li class=<%=getLiCssClass(3,session) %>><a href="SearchServlet?currentPage=3">3</a></li>
                        <li class=<%=getLiCssClass(4,session) %>><a href="SearchServlet?currentPage=4">4</a></li>
                        <li class=<%=getLiCssClass(5,session) %>><a href="SearchServlet?currentPage=5">5</a></li> --%>
                        <li class="<c:if test='${currentPage >= page.totalPages}'><c:out value='disabled'/></c:if>">
                            <a href="getArticle.action?currentPage=${sessionScope.currentPage+1}" aria-label="Next" >
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>

        </div>
    </div>
</div>

<footer>

    <div class="widewrapper copyright">
        Copyright 2018 . All Rights Reserved
    </div>
</footer>


<%--<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.js"></script>--%>

</body>
</html>