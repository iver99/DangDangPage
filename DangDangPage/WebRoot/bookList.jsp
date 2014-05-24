<%@page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.dd.vo.Category"%>
<%@page import="com.dd.index.Indexdo"%>
<%@page import="com.dd.vo.Book"%>
<%@page import="com.dd.index.Bookdo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>当当图书 – 全球最大的中文网上书店</title>

<link href="./css/book.css" rel="stylesheet" type="text/css" />
<link href="./css/second.css" rel="stylesheet" type="text/css" />
<link href="./css/secBook_Show.css" rel="stylesheet" type="text/css" />
<link href="./css/list.css" rel="stylesheet" type="text/css" />

<link href="./css/book_head090107.css" rel="stylesheet" type="text/css" />
<link href="./css/public_footer.css" rel="stylesheet" type="text/css" />


<script type="text/javascript" src="./js/jquery-1.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		var x = 10;
		var y = 20;
		$("img.dang_img")
				.mouseover(
						function(e) {
							this.myTitle = this.title;
							this.title = "";
							var imgTitle = this.myTitle ? "<br/>"
									+ this.myTitle : "";
							var tooltip = "<div id='tooltip'><img height='200px' width='150px' src='"+ this.src +"' alt='产品预览图'/>"
									+ imgTitle + "<\/div>"; //创建 div 元素
							$("body").append(tooltip); //把它追加到文档中						 
							$("#tooltip").css({
								"top" : (e.pageY + y) + "px",
								"left" : (e.pageX + x) + "px"
							}).show("fast"); //设置x坐标和y坐标，并且显示
						}).mouseout(function() {
					this.title = this.myTitle;
					$("#tooltip").remove(); //移除 
				}).mousemove(function(e) {
					$("#tooltip").css({
						"top" : (e.pageY + y) + "px",
						"left" : (e.pageX + x) + "px"
					});
				});
	})

	function addProduct(img, productId) {
		$(img).css("display", "none");
		$("#cartInfo_" + productId)
				.html(
						'<img align="bottom" src="./images/load.gif" width="14" height="14" style="display:inline" align="bottom"/>&nbsp;购买中..');
		$
				.getJSON(
						"./cart/addItem.action",
						{
							id : productId,
							time : (new Date()).getTime()
						},
						function(json) {
							if (json.count == 0) {
								//没有添加成功
								$(img).css("display", "block");
								$("#cartInfo_" + productId)
										.html(
												'<img align="bottom" src="./images/wrong.gif" width="14" height="14" style="display:inline" align="bottom"/>&nbsp;<span style="color:red">购买失败</span>');
							} else {
								//添加成功
								$("#cartInfo_" + productId)
										.html(
												'<img align="bottom" src="./images/right.gif" width="14" height="14" style="display:inline" align="bottom"/>&nbsp;购买成功');
								var timeId = setTimeout(function() {
									clearTimeout(timeId);
									$(img).css("display", "block");
									$("#cartInfo_" + productId).html("");
								}, 2000);
							}
						});
	}
</script>

</head>
<body>

	<!-- 头部开始 -->
	<div class="head_container">
		<div class="head_welcome">
			<div class="head_welcome_right">
				<span class="head_welcome_text"> </span> <span
					class="head_welcome_text"> <span class="little_n"> |
						<a href="#" name="mydangdang" class="head_black12a">我的OBP</a> | <a
						href="#" name="helpcenter" class="head_black12a" target="_blank">帮助</a>
						| </span> </span>
				<div class="cart gray4012">
					<a href="./cart/toCart.action">购物车</a>
				</div>
			</div>
			<span class="head_toutext" id="logininfo"> [&nbsp;<a href=""
				class="b">登录</a>|<a href="../authorize/toRegist.action" class="b">注册</a>&nbsp;]
				<b>您好 <font color="orange">xxx</font>，欢迎光临OBP</b> [&nbsp;<a href=""
				class="b">登出</a>&nbsp;] </span>
		</div>
		<div class="head_head_list">
			<div class="head_head_list_left">
				<span class="head_logo"><a href="#" name="backtobook"><img
						src="./images/booksaleimg/book_logo.gif" /> </a> </span>
			</div>
			<div class="head_head_list_right">

				<div class="head_head_list_right_b"></div>
			</div>
		</div>
		<div class="head_search_div"></div>
		<div class="head_search_bg"></div>
	</div>



	<!-- 头部结束 -->

	<div style="width: 962px; margin: auto;">
		<a href="#"><img src="./images/default/book_banner_081203.jpg"
			border="0" /> </a>
	</div>
	<div class='your_position'>
		您现在的位置:&nbsp; <a href='./main/toMain.action'>当当图书</a> &gt;&gt; <font
			style='color: #cc3300'> <strong><a href="">小说</a> </strong>
			&gt;&gt; 当代小说 </font>
	</div>

	<div class="book">

		<!--左栏开始-->
		<div id="left" class="book_left">
			<div id="__fenleiliulan">
				<div class=second_l_border2>
					<h2>分类浏览</h2>
					<ul>
						<%
					int id = Integer.parseInt(request.getParameter("id"))-2;
						
							List<Category> list_bcte = Indexdo.getBookCateList();

							List<Category> list_bcteson = Indexdo.getBookCateListSon();
							//从这个list中得到第几个,然后得到他的id
							int p_id = list_bcte.get(id).getId();
							String sName = null;
							String pName = list_bcte.get(id).getName();
							
					
					 %>

						<li>
							<div><!--
								得到父类名字
								--><div class=second_fenlei3><%=pName %></div>
							</div></li>
						<div class="clear"></div>

						<!--三级分类开始-->

						<%
							
							
							
							for (int j = 0; j < list_bcteson.size(); j++) {
							//根据前面的id得到子分类显示
								if (list_bcteson.get(j).getParentId() == p_id) {
									//System.out.print("  " + list_bcteson.get(j).getName());
									sName = list_bcteson.get(j).getName();
								
						%>


						<li>
							<div>
								<div class="second_fenlei">&middot;</div>
								<div class="second_fenlei">
									<a href="#"><%=sName%></a>

								</div>
							</div>
						</li>
						<div class="clear"></div>

						<%
								}
							}
						%>

						<!--三级分类结束-->

						<li>
							<div></div>
						</li>

					</ul>
				</div>
			</div>
		</div>

		<!--左栏结束-->
	
		<!--中栏开始-->
		<div class="book_center">

			<!--图书列表开始-->
			<div id="divRight" class="list_right">

				<div id="book_list" class="list_r_title">
					<div class="list_r_title_text">排序方式</div>
					<select onchange='' name='select_order' size='1'
						class='list_r_title_ml'>
						<option value="">按上架时间 降序</option>
					</select>
					<div id="divTopPageNavi" class="list_r_title_text3">

						<!--分页导航开始-->
						<div class='list_r_title_text3a'>
							<img src='./images/page_up_gray.gif' />
						</div>
						<div class='list_r_title_text3b'>第1页/共5页</div>
						<div class='list_r_title_text3a'>
							<img src='./images/page_down_gray.gif' />
						</div>
						<!--分页导航结束-->

					</div>
				</div>
	<%
			List<Book> list = Bookdo.getListByCa_id(id + 2);
		 %>
				<!--商品条目开始-->
			
				<div class="list_r_line"></div>

			<%
				for (Book book : list) {
			 %>
				<div class="clear"></div>
				<div class="list_r_list">
					<span class="list_r_list_book"><a target='_blank'
						name="link_prd_img" href='bookInfo.jsp'> <img title="书名"
							class="dang_img" src='./productImages/1.jpg' /> </a> </span>
					<h2>
						<a target='_blank' name="link_prd_name" href='bookInfo.jsp?id=<%=book.getId() %>'><%=book.getBookName() %></a>
					</h2>
					<h3>顾客评分：100</h3>
					<h4 class="list_r_list_h4">
						作 者: <a href='#' name='作者'><%=book.getAuthor() %></a>
					</h4>
					<h4>
						出版社： <a href='#' name='出版社'><%=book.getPublishing() %></a>
					</h4>
					<h4>出版日期：<%=book.getPublish_time() %></h4>
					<h5>描述信息</h5>
					<div class="clear"></div>
					<h6>
						<span class="del">000</span> <span class="red">000</span> 节省：￥000
					</h6>
					<span class="list_r_list_button"> <img align="top"
						src='./images/buttom_goumai.gif' onclick="addProduct(this,1)" />
					</span> <span id="cartInfo_1"></span>
				</div>
				<div class="clear"></div>

				<%} %>
				






				<!--商品条目结束-->


				<div class="clear"></div>
				<div id="divBottomPageNavi" class="fanye_bottom"></div>

			</div>
			<!--图书列表结束-->

		</div>
		<!--中栏结束-->
		<div class="clear"></div>
	</div>

	<!--页尾开始 -->
	<div class="public_footer">
		<div class="public_footer_bottom">
			<div class="public_footer_icp" style="line-height: 48px;">
				Copyright (C) Oacle 2011-2012, All Rights Reserved <a href="#"
					target="_blank"><img src="./images/bottom/validate.gif"
					border="0" align="middle" /> </a> <a href="#" target="_blank"
					style="color: #666;">京ICP证041189号</a>
			</div>
		</div>
	</div>

	<!--页尾结束 -->
</body>
</html>
