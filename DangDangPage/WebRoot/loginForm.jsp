<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>登录 - 当当网</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="./css/login.css" rel="stylesheet" type="text/css" />
		<link href="./css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="./js/jquery-1.4.min.js"></script>
	<!-- 	<script type="text/javascript" src="./js/verify.js"></script> -->
		<script type="text/javascript" src="./js/loginFormValidate.js"></script>
	</head>
	<body>


		<div class="login_top">
			<a href="#"><img class="logo" src="./images/logo.gif" /> </a>
		</div>

		<div class="enter_part">

			<div class="introduce">
				<ul>
					<li>
						更多选择
					</li>
					<li class="bj_none">
						60万种图书音像，共计百万种商品。
					</li>
					<li>
						更低价格
					</li>
					<li class="bj_none">
						电视购物的3-5折，传统书店的5-7折，其他网站的7-9折。
					</li>
					<li>
						更方便、更安全
					</li>
					<li class="bj_none">
						全国超过300个城市送货上门、货到付款。零风险购物，便捷到家。
					</li>
				</ul>
			</div>

			<div class="enter_in">
				<div class="bj_top"></div>
				<div class="center">
					<div style="height: 30px; padding: 5px; color: red"
						id="divErrorMssage">
						<br />
					</div>
					<div class="main">
						<h3>
							登录OBP
						</h3><!--
						在jsp中post和get中request.getParameter得到值
						--><!--  <form method="post" action="loginWhy.jsp" id="ctl00"> -->
						<form method="post" action="login" id="ctl00">
							<ul>
								<li>
									<span>&nbsp&nbsp&nbsp请输入登录名：</span>
									<input type='text' name="loginName" id="txtUsername" class="textbox" />
								</li>
								<li>
									<span class="blank">密码：</span>
									<input type='password' name="password" id="txtPassowrd" class="textbox" />
								</li>
								<li>
									<input type='submit' id="btnSignCheck" class="button_enter" value="登 录" />
								</li>
							</ul>
						</form>
					</div>
					<div class="user_new">
						<p>
							您还不是OBP用户？
						</p>
						<p class="set_up">
							<a href="loginForm.jsp">创建一个新用户&gt;&gt;</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div>
			<center>
				<hr style="height: 1px; width: 972px; color: #cfcfcf" />
				<div class="b_left"></div>
				<div class="publish_bottom_message2">
					<div class="copyright">
						Copyright (C) Oracle 2011-2012, All Rights Reserved
					</div>
					<div class="validate">
						<a
							href="#http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001051000098"
							target="_blank"> <img src="./images/validate.gif"
								border="0" /> </a>
						<p>
							<a href="" >京ICP证041189号</a>
						</p>
					</div>
				</div>
			</center>
		</div>

	</body>
</html>

