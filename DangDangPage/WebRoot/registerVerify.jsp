<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户注册 - 当当网</title>
		<link href="./css/login.css" rel="stylesheet" type="text/css" />
		<link href="./css/page_bottom.css" rel="stylesheet" type="text/css" />
			<script type="text/javascript" src="./js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="./js/verify.js"></script>
		<script type="text/javascript" src="./js/activeFormValidate.js"></script>
	</head>
	<body>
		<div class="login_top">
			<a href="#" ><img class="logo" src="./images/logo.gif" /> </a>
		</div>

		<div class="login_step">
			注册步骤: 1.填写信息 &gt;
			<span class="red_bold">2.验证邮箱</span> &gt; 3.注册成功
		</div>
		<form action="registOk.jsp" method="post" id="verifyForm">
			<div class="validate_email">
				<h2>
					感谢您注册OBP！现在请按以下步骤完成您的注册!
				</h2>
				<div class="look_email">
					<h4>
						第一步：查看您的电子邮箱
					</h4>
					<div class="mess reduce_h">
						我们给您发送了验证邮件，邮件地址为：
						<span class="red"><span id="lblEmail">
						xxx@xxx.com</span>
						</span>
						<span class="t1"> 
						请登录您的邮箱收信。
						</span>
					</div>
					<h4>
						第二步：输入验证码[ZDM2YWY1M2QtMzIyYy00OTQzLTgyMWItMTQwZmZmM2ZlMjMzLTI=]
					</h4>
					<div class="mess">
						<span class="write_in">输入您收到邮件中的验证码：</span>
						<input type='text' name="emailVerifyCode" id="validatecode" class="yzm_text"/>
						<input type='submit' class="finsh" value="完 成" id="Button1"/>
						<span id="register1_validatenull" class="no_right">
						
						</span>

					</div>
				</div>
			</div>
		</form>
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

