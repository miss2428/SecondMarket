<%@page contentType="text/html;charset=utf-8"  language="java" %>
<html>
<head>
<title>登陆</title>
<link href="static/css/login_style.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache"> 

<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Cabin:400,500,600,700,400italic,500italic,600italic,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>

<!--/start-login-one-->
	<div class="login-01">
		<div class="one-login  hvr-float-shadow">
			<div class="one-login-head">
					<img src="static/images/top-lock.png" alt=""/>
					<h1>登陆</h1>
					<span></span>
			</div>
			<form method="post" action="login.action">
				<li>
					<input type="text" name="username" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '用户名';}" ><a href="#" class=" icon user"></a>
				</li>
				<li>
					<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}"><a href="#" class=" icon lock"></a>
				</li>
				<div class="p-container">
						<label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>记住我</label>
						<h6><a href="#">忘记密码 ?</a> </h6>
							<div class="clear"> </div>
				</div>
				<div class="submit">
						<input type="submit" onclick="myFunction()" value="登陆" >
				</div>
				<div class="social-icons">
					<p>第三方登陆</p>
						<ul class="soc_icons2">
							<a href="init"><img src="static/images/yiban.jpg" style="width: 30%;height: 10%;"/></a>
								<div class="clear"> </div>
						</ul>
				</div>

				</form>
		</div>
	</div>

	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				<p>Copyright &copy; 2018  All rights  Reserved  &nbsp;</p>
		</div>
	</div>
    <script>
        var errorMessage = "${errorMenssage}";
        if(errorMessage =="" || errorMessage ==null)
        {}else{
            alert(errorMessage);
        }
    </script>
</body>
</html>