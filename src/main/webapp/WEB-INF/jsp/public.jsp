<%@ page import="java.util.List" %>
<%@ page import="dto.SmallArticle" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8" />
		<title></title>

		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
		<!-- Bootstrap Styles-->
		<link href="assets/css/bootstrap.css" rel="stylesheet" />
		<!-- FontAwesome Styles-->
		<link href="assets/css/font-awesome.css" rel="stylesheet" />
		<!-- Morris Chart Styles-->
		<link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
		<!-- Custom Styles-->
		<link href="assets/css/custom-styles.css" rel="stylesheet" />
		<link href="assets/css/styleindex.css" rel="stylesheet" />
		<!-- Google Fonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
	</head>

	<body>
		<div id="wrapper">
			<nav class="navbar navbar-default top-navbar" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
					<a class="navbar-brand waves-effect waves-dark" href="/"><i class="large material-icons">insert_chart</i> <strong>二手大卖场</strong></a>

					<div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
				</div>

				<ul class="nav navbar-top-links navbar-right">
					<li>
						<a class="dropdown-button waves-effect waves-dark" href="/" data-activates="dropdown4">主页 </a>
					</li>
					<li>
						<a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"></a>
					</li>
					<li>
						<a class="dropdown-button waves-effect waves-dark" href="quit.action" data-activates="dropdown3">退出</a>
					</li>
					<li>
						<a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"></a>
					</li>
				</ul>
			</nav>
			<!-- Dropdown Structure -->

			<!--/. NAV TOP  -->
			<!--/. NAV TOP  -->
			<nav class="navbar-default navbar-side" role="navigation">
				<div class="sidebar-collapse">
					<ul class="nav" id="main-menu">

						<li>
							<a href="me.action" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 我的信息</a>
						</li>

						<li>
							<a href="public.action" class="active-menu waves-effect waves-dark"><i class="fa fa-qrcode"></i> 我发布的</a>
						</li>

						<li>
							<a href="edit.action" class="waves-effect waves-dark"><i class="fa fa-edit"></i>修改信息 </a>
						</li>

					</ul>

				</div>

			</nav>
			<!-- /. NAV SIDE  -->
			<div id="page-wrapper">
				<div class="header">
					<h1 class="page-header">
                           我发布的
                        </h1>

				</div>

				<div id="page-inner">

					<div class="row">
						
						<c:forEach items="${article}"  var="sarticle" >
                        <div class="col-md-4 col-sm-4 col-xs-4" id="${sarticle.aid}">
                            <article class=" blog-teaser">
                                <header>
                                    <img src="${sarticle.image}" >
                                    <h3><a href="single.action?aid=${sarticle.aid}">&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${sarticle.title}" /></a><span class="price"">&nbsp;&nbsp;<b>￥</b><em><c:out value="${sarticle.price}" /></em></span></h3>
                                    <span class="meta"><c:out value="${sarticle.createTimeS}" /></span>
                                    <button class="btn btn-danger delete"  role="button" id="${sarticle.aid}">删除</button>

                                    
                                    <hr>
                                </header>

                            </article>
                        </div>
                    </c:forEach>
                    </div>


					<footer>
						<p>Copyright &copy; 2018 All rights reserved
						</p>
					</footer>
				</div>
				<!-- /. PAGE INNER  -->
			</div>
			<!-- /. PAGE WRAPPER  -->
		</div>
        <script src="assets/js/jquery-1.10.2.js"></script>
        <script>
            $(function () {
                $('.delete').click(function (){
                    var aid = $(this).attr("id");
                    $.ajax({
                        type    : "GET",
                        url    :"delete.action",
                        data    :"aid="+aid,
                        success   :function () {
                            $('div#'+aid).remove();
                            alert("删除成功");
                        }
                    });
                });
            });
        </script>




	</body>

</html>