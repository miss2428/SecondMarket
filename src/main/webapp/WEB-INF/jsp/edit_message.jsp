<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta charset="utf-8" />
		<title>修改信息</title>
        <link rel="stylesheet" href="static/css/layui.css"/>

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
						<a class="dropdown-button waves-effect waves-dark" href="/quit.action" data-activates="dropdown3">退出</a>
					</li>
					<li>
						<a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"></a>
					</li>
				</ul>
			</nav>
			<!--/. NAV TOP  -->
			<!--/. NAV TOP  -->
			<nav class="navbar-default navbar-side" role="navigation">
				<div class="sidebar-collapse">
					<ul class="nav" id="main-menu">

						<li>
							<a href="me.action" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 我的信息</a>
						</li>

						<li>
							<a href="public.action" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i> 我发布的</a>
						</li>

						<li>
							<a href="edit.action" class="active-menu waves-effect waves-dark"><i class="fa fa-edit"></i> 修改信息 </a>
						</li>

					</ul>

				</div>

			</nav>
			<!-- /. NAV SIDE  -->
			<div id="page-wrapper">
				<div class="header">
					<h1 class="page-header">
                    修改信息
                        </h1>

				</div>

				<div id="page-inner">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-action">
									新的信息
								</div>
								<div class="card-content" style="font-size: 14pt">
                                    <form:form commandName="user" action="edit.action" classs="layui-form layui-form-pane">


                                                <div class="layui-form-item">
                                                    <h4>用户名</h4>
                                                    <form:input id="username" path="username" class="layui-input validate" />
                                                </div>




                                                <div class="layui-form-item">
                                                    <h4>邮箱</h4>
                                                    <form:input id="email" path="email" class="layui-input validate" />
                                                </div>

                                                <div class="layui-form-item">
                                                    <h4>地址</h4>
                                                    <form:input  id="address" path="address" class="layui-input validate" />
                                                </div>



                                                <div class="layui-form-item">
                                                    <h4>联系方式</h4>
                                                    <form:input id="tel" path="tel" class="layui-input validate" />
                                                </div>


                                        <br>
                                        <div class="row">
                                            <div class="input-field col s12">
                                                <input id="email" type="submit" class="validate btn btn-info" value="提交" />
                                            </div>
                                        </div>
                                        <form:hidden path="uid" />

                                </form:form>
									<div class="clearBoth"></div>
								</div>
							</div>
						</div>
					</div>

					<footer>
						<p>Copyright &copy;  All rights reserved.
						</p>
					</footer>
				</div>

			</div>

		</div>

		<script src="assets/js/jquery-1.10.2.js"></script>

		<!-- Bootstrap Js -->
		<script src="assets/js/bootstrap.min.js"></script>

		<script src="assets/materialize/js/materialize.min.js"></script>

		<!-- Metis Menu Js -->
		<script src="assets/js/jquery.metisMenu.js"></script>
		<!-- Morris Chart Js -->
		<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
		<script src="assets/js/morris/morris.js"></script>

		<script src="assets/js/easypiechart.js"></script>
		<script src="assets/js/easypiechart-data.js"></script>

		<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

		<!-- Custom Js -->
		<script src="assets/js/custom-scripts.js"></script>

	</body>

</html>