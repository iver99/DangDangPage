<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户注册 - 当当网</title>
		<link href="./css/login.css" rel="stylesheet" type="text/css" />
		<link href="./css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="./js/jquery-1.4.min.js"></script>
		<script type="text/javascript">
		var second=50;
		$(function() {
			$("#secondSpan").text(second+"");
			var fuc = function(){
				second-=1;
				$("#secondSpan").text(second+"");
				if(second==0) {
					location="${url }";
				}else{
					setTimeout(fuc,1000);
				}
			};
			
			fuc();//开始倒计时
			
		});
		</script>
	</head>
	<body>
		<div class="login_top">
			<a href="#"><img class="logo" src="./images/logo.gif" /> </a>
		</div>
		<div class="login_success">
			<div class="login_bj">
				<h5>
					<img src="./images/label3.gif" width="20" height="20" align="middle" />
						&nbsp;恭喜  xxx 已经成功登录 <br />
						
					<img src="./images/label3.gif" width="20" height="20" align="middle" />
						&nbsp;恭喜  xxx 已经成功登录，但注册账户未激活，请<a href="loginVerify.jsp">激活账户</a>
						<%-- 
							1、如果注册成功但未激活 --- 登录时，提示成功登录，但账户未激活，请激活账户（从邮箱中取，我们模拟下更改状态）
								，状态更改后，提示成功登陆，几秒后转向主页面
							2、如果注册成功也激活了账号 --- 提示成功登录，几秒后转向主页面
						--%>

					<h6>
						&nbsp;&nbsp;
					</h6>
					<h6>
						页面在&nbsp;
						<b><font color="red"><span id="secondSpan"></span>
						</font>
						</b>&nbsp;秒后将转向
						<a href="./main.html">主页</a>。 如果转入失败，请单击
						<a href="./main.html">这里</a>。
					</h6>


				</h5>
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
						<a href="#http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001051000098"
							target="_blank"> <img src="./images/validate.gif" border="0" /> </a>
						<p>
							<a href="#">京ICP证041189号</a>
						</p>
					</div>
				</div>
			</center>
		</div>
	</body>
</html>

