<%@page contentType="text/html;charset=utf-8"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="constvalue.SessionConst" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>发布商品</title>
    <meta name="description" content="">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/font-awesome/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600|PT+Serif:400,400italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="static/css/styleindex.css" id="theme-styles">

    <meta name="viewport" content="width=device-width">
    
</head>
<body>
    <header>
        <div class="widewrapper masthead">
            <div class="container">
                <a href="getArticle.action" id="logo">
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
                                <a href="me.action">个人中心</a>
                            </li>                        
                        </ul>
                    </div>
                </nav>        

            </div>
        </div>
        
        <div class="widewrapper subheader">
            <div class="container">
                <div class="clean-breadcrumb">
                    <a href="">主页</a>
                    <span class="separator">&#x2F;</span>
                    <a href="#">二手物品</a>
                    <span class="separator">&#x2F;</span>
                    <a href="#">发布物品</a>
                </div>

            </div>
        </div>
    </header>

	 <div class="widewrapper main">
        <div class="container">
            <div class="row">
                <div class="col-md-7 blog-main">
                    <article class="blog-post">
                       
                    </article>

                 

                    

                    <aside class="create-comment" id="create-comment">
                        <hr> 
                       

                        <h2><i class="fa fa-pencil"></i>添加物品</h2>

                        <form action="addArticle.action" method="post" enctype="multipart/form-data" onsubmit="return validate();">
                         
                         
							<div class="form-group has-success">
							  <label class="control-label label-input" for="inputSuccess1" >物品名称</label>
							  <input type="text" class="form-control" id="inputSuccess1" aria-describedby="helpBlock2" name="title" required="required" >
							</div>
							<div class="form-group has-success">
							  <label class="control-label" for="inputWarning1">二手价格(元)</label>
							  <input type="text" class="form-control" id="inputWarning1" name="price" required="required">
							</div>
							<div class="form-group has-success">
							  <label class="control-label" for="inputError1">物品地址</label>
							  <input type="text" class="form-control" id="inputError1" name="address">
							</div>
							<div class="form-group has-success">
							  <label class="control-label" for="inputError1">联系方式</label>
							  <input type="text" class="form-control" id="inputError1" name="contact" required="required">
							</div>
							<div class="form-group has-success">
							 <label class="control-label" for="inputError1">物品类别</label>
								<select class="form-control" name="itemType">
								  <option>闲置数码</option>
								  <option>闲置书籍</option>
								  <option>闲置衣服</option>
								  <option>鞋服配饰</option>
								</select>
							</div>
							
							<div class="form-group has-success">
							  <label class="control-label" for="inputError1">是否支持网薪支付(网站权限不足，暂不支持)</label>
							 <div class="form-input">
						        <label class="radio-inline">
						            <input type="radio" name="wangxinSupport" value="option1">是
						        </label>
						
						        <label class="radio-inline">
						            <input type="radio"  name="wangxinSupport" value="option2">否
						        </label>
						        
						    </div>
							</div>
							<div class="form-group has-success">
							  <label class="control-label" for="inputError1">网薪价格</label>
							  <input type="text" class="form-control" id="inputError1" name="wangxinPrice">
							</div>
							<div class="form-group has-success">  
								<label class="control-label" >物品图片</label>
							   	<input type="file" name="file" class="form-control"  required="required">
							      
							    <input type=hidden class="span5" id="specialRecommendPic"  
							    name="riIndexPic">  
							</div>

							<div class="form-group has-success">
							  <label class="control-label" for="inputError1">详细描述</label>
                              <textarea rows="10" name="description" id="comment-body" placeholder="Your Message" class="form-control input-lg"></textarea>
							</div>

                            <div class="buttons clearfix">
                                <button type="submit" class="btn btn-xlarge btn-primary" >提交</button>
                            </div>
							
                        </form>
                     
                    </aside>
                    
                </div>
                <aside class="col-md-5 blog-aside">
                    
                    <div class="aside-widget">
                        <header>
                            <h3><br><br><br><br><br><br></h3>
                        </header>
                        <div class="body">
                            <ul class="clean-list">
                               <br>
                               <br>
                                <br>
                               <br>
                                <br>
                               <br>
                                <br>
                               <br>
                                <br>
                               <br> <br>
                               <br> <br>
                               <br> <br>
                               <br> <br>
                               <br>
                               
                            </ul>
                        </div>
                    </div>
                
  

                    
                </aside>
            </div>
        </div>
    </div>

    <footer>
     
        <div class="widewrapper copyright">
                Copyright 2018 . All Rights Reserved
        </div>
    </footer>

    <script src="static/js/jquery.min.js"></script>
    <script type="text/javascript">
        function validate(){
            var flag = 1;
            var message;
            //物品名称
            var v1 = $('#inputSuccess1').val();
            //二手价格
            var v2 = $('#inputWarning1').val();
            //物品地址


            var reg = /^[+]{0,1}(\d+)$|^[+]{0,1}(\d+\.\d+)$/;
            var r = v2.match(reg);
            if(r == null){
                flag = 0;
                alert("二手价格必须为数字类型的");

            }
            if(flag == 0)
                return false;
            else
                return true;
        }

    </script>

</body>
</html>