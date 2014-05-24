<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@page import="com.iver99.vo.Category"%>
<%@page import="com.iver99.vo.Book"%>


<%@page import="com.iver99.dao.*" %>
<%@page import="com.iver99.dao.impl.*" %>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<title>当当图书 – 全球最大的中文网上书店</title>
<link href="./css/book.css" rel="stylesheet" type="text/css" />
<link href="./css/second.css" rel="stylesheet" type="text/css" />
<link href="./css/secBook_Show.css" rel="stylesheet" type="text/css" />
<link href="./css/book_head090107.css" rel="stylesheet" type="text/css"></link>
<script type="text/javascript" src="./js/jquery-1.4.min.js"></script>
<script type="text/javascript">
		 // 鼠标over显示书图片
		  $(function(){
			var x = 10;
			var y = 20;
			$("img.dang_img").mouseover(function(e){
				this.myTitle = this.title;
				this.title = "";	
				var imgTitle = this.myTitle? "<br/>" + this.myTitle : "";
				var tooltip = "<div id='tooltip'><img height='200px' width='150px' src='"+ this.src +"' alt='产品预览图'/>"+imgTitle+"<\/div>"; //创建 div 元素
				$("body").append(tooltip);	//把它追加到文档中		
					 
				$("#tooltip").css({
						"top": (e.pageY+y) + "px",
						"left":  (e.pageX+x)  + "px"
					}).show("fast");	  //设置x坐标和y坐标，并且显示
		    	}).mouseout(function(){
					this.title = this.myTitle;	
					$("#tooltip").remove();	 //移除 
		    	}).mousemove(function(e){
					$("#tooltip")
						.css({
							"top": (e.pageY+y) + "px",
							"left":  (e.pageX+x)  + "px"
						});
				});
			})
			</script>

</head>

<body>
	i<!-- 头部开始 -->
	<div class="head_container">
		<div class="head_welcome">
			<div class="head_welcome_right">
				<span class="head_welcome_text"> </span> <span
					class="head_welcome_text"> <span class="little_n"> |
						<a href="personInfo.jsp" name="mydangdang" class="head_black12a">我的OBP</a> | <a
						href="#" name="helpcenter" class="head_black12a">帮助</a>
						| </span> </span>
				<div class="cart gray4012">
					<a href="#">购物车</a>
				</div>
			</div>
			<span class="head_toutext" id="logininfo"><!--  
			判断是否有用户登录，如果已登录，显示邮箱，如果没有登录显示登录和注册
				--><%
					if(session.getAttribute("name") != null){
						out.print("欢迎   " + session.getAttribute("name") + "  光临本站！");
					}
					else{
						out.print("[&nbsp;<a href='loginForm.jsp' class='b'>登录</a>|<a href='./registForm.jsp'class='b'>注册</a>&nbsp;]");
					}
				 %>
				</span>
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

	<div class="book">
		<div class="book_l_border1" id="__FenLeiLiuLan">


			<!--左栏开始-->
			<div id="left" class="book_left">

				<div class="book_l_border1" id="__FenLeiLiuLan">
					<div class="book_sort_tushu">
						<h2>分类浏览</h2>
						<%
									IndexDao indexDao=new IndexDaoImpl();
									//得到大分类
									//List<Category> list_bcte =indexDao.getBookCateList();
									List list_bcte=indexDao.getBookCateList();
									//得到子分类
									List<Category> list_bcteson = indexDao.getBookCateListSon();
									
									//遍历大分类得到名字和大分类的id
									for(int i=0;i<list_bcte.size();i++){
									//得到大分类的名字
									//String c_name = ((Category)list_bcte.get(i)).getName();
									String c_name = ((Category)list_bcte.get(i)).getCatName();
									//得到大分类的id
									//int p_id = list_bcte.get(i).getId();
									int p_id = ((Category)list_bcte.get(i)).getCatId();
								%>
						<div class="bg_old" onmouseover="this.className = 'bg_white';"
							onmouseout="this.className = 'bg_old';">
							<h3><!--
								输出大分类的名字
								[--><a href='#'><%=c_name %></a>]

							</h3>
							<ul class="ul_left_list">
								<!--3级分类开始-->
								<!--3级分类结束-->
								<%
										//遍历小分类
										for(int j=0;j<list_bcteson.size();j++){
											String c_name_son = "";
											//当大分类id等于小分类的ParentId时输出小分类
											if(((Category)list_bcteson.get(j)).getParentId() == p_id){
												c_name_son= ((Category)list_bcteson.get(j)).getCatName();
											}
										%>
										<!--	把小分类输出来	-->
								<li><a href='bookList.jsp?id=<%=p_id %>'><%=c_name_son %></a>
								</li>
								<%
											}
										%>
							</ul>
							<div class="empty_left"></div>
						</div>
						<div class="more2"></div>
						<%
								}
								%>

						<div class="bg_old">
							<h3>&nbsp;</h3>
						</div>
					</div>
				</div>


			</div>

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--推荐图书开始-->
				<div class=second_c_border1 id="recommend">
					<h2>
						<span class="more"><a href="#" target="">更多&gt;&gt;</a> </span>编辑推荐
					</h2>
					<div id=__bianjituijian/danpin>
						<div class=second_c_02>
						<%
							/* int id;
							String bookName;
							String author;
							double fixed_price;
							double dang_price;
						//	int editor_key;
							//int sale_sum;
						//	int add_time;
							String publish_time;
							String publish;
							//String book_pic;
							List<Book> l_book = Bookdo.getBookCateList();
							for(int i=0;i<l_book.size();i++)
							{
								id = l_book.get(i).getId();
								bookName = l_book.get(i).getBookName();
								author = l_book.get(i).getAuthor();
								fixed_price = l_book.get(i).getFixed_price();
								dang_price = l_book.get(i).getDang_price();
								//editor_key = l_book.get(i).getEditor_key();
								//sale_sum = l_book.get(i).getSale_sum();
								//add_time = l_book.get(i).getAdd_time();	
								publish_time = l_book.get(i).getPublish_time();	
								publish = l_book.get(i).getPublishing();		
								//book_pic = l_book.get(i).getBook_pic();
						 */
						 	int id;
							 String bookName;
							String author;
							float fixed_price;
							float dang_price;
						 	String publish;
							//String publish;
							Date publish_time;
							
						 BookDao bookDao=new BookDaoImpl();
						 List list=bookDao.getBookCateList();
						 for(int i=0;i<list.size();i++)
						 {
						 	Book book=(Book)list.get(i);
						 	bookName=book.getName();
						 	author=book.getAuthor();
						 	fixed_price=dang_price=book.getPrice();
						 	id=book.getBookId();
							publish=book.getPublish();
							publish_time=book.getPublishTime();
						 %>


							<div class=second_c_02_b1>
								<div class=second_c_02_b1_1>
									<!-- 
									<a href='#'><img class="dang_img"
										src="./productImages/1" width=70 border=0 /> </a>
										 -->
									<a href='#'><img class="dang_img" src="./productImages/1.jpg" width=70 border=0 />
								</div>
								<div class=second_c_02_b1_2>
									<h3>
										<a href='bookInfo.jsp?id=<%=id %>'><%=bookName %></a>
									</h3>
									<h4>
										作者：<%=author %> <br /> 出版社：<%=publish %>&nbsp;&nbsp;&nbsp;&nbsp;出版时间：<%=publish_time %>
									</h4>
									<h5><%=bookName %></h5>
									<h6>定价：￥<%=fixed_price %>&nbsp;&nbsp;当当价：￥<%=dang_price %></h6>
									<div class=line_xx></div>
								</div>
							</div>
							
							<%
							}
							 %>
							
						</div>
					</div>
				</div>

				<!--推荐图书结束-->

				<!--热销图书开始-->
				<div class="book_c_border2" id="hot">


					<h2>
						<span class="more"><a href="#">更多&gt;&gt;</a> </span>热销图书
					</h2>
					<div class="book_c_04">

					<%
							/* int idSale;
							String bookNameSale;
							double fixed_priceSale;
							double dang_priceSale;
							String book_picSale;
							List<Book> l_bookSale = Bookdo.getBookSale();
							
							for(int i=0;i<l_bookSale.size();i++)
							{
								idSale = l_bookSale.get(i).getId();
								bookNameSale = l_bookSale.get(i).getBookName();
								fixed_priceSale = l_bookSale.get(i).getFixed_price();
								dang_priceSale = l_bookSale.get(i).getDang_price();
								//book_picSale = l_bookSale.get(i).getBook_pic();
							 */
							 int idSale;
							 String bookNameSale;
							 float fixed_priceSale;
							float dang_priceSale;
							//BookDao bookDao=new BookDaoImpl();
							List list2=bookDao.getBookSale();
							for(int i=0;i<list.size();i++)
							{
								Book book=(Book)list2.get(i);
								idSale=book.getBookId();
								bookNameSale=book.getName();
								fixed_priceSale=dang_priceSale=book.getPrice();
							
						 %>


						<!--热销图书A开始-->
						<div class="second_d_wai">
							<div class="img">
								<a href="#"><img class="dang_img" 
									src="./productImages/1.jpg" border=0 /> </a>
							</div>
							<div class="shuming">
								<a href='bookInfo.jsp?id=<%=idSale %>'><%=bookNameSale %></a>
							</div>
							<div class="price">定价：￥<%=fixed_priceSale %></div>
							<div class="price">当当价：￥<%=dang_priceSale %></div>
						</div>
						<div class="book_c_xy_long"></div>	
						<!--热销图书A结束-->

					<%
						}
					 %>



					</div>
					<div class="clear"></div>
				</div>
				<!--热销图书结束-->

				<!--最新上架图书开始-->
				<div class="book_c_border2" id="new">


					<h2>
						<span class="more"><a href="#">更多&gt;&gt;</a> </span>最新上架图书
					</h2>
					<div class="book_c_04">

					<%
							int newId;
							String newBookName;
							float newFixed_price;
							float newDang_price;
							String newBook_pic;
							List list3 = bookDao.getNewBook();
							
							for(int i=0;i<list3.size();i++)
							{
								Book book =(Book)list3.get(i);
								/* newId = l_newBook.get(i).getId();
								newBookName = l_newBook.get(i).getBookName();
								newFixed_price = l_newBook.get(i).getFixed_price();
								newDang_price = l_newBook.get(i).getDang_price(); */
								//newBook_pic = l_newBook.get(i).getBook_pic();
								newId=book.getBookId();
								newBookName=book.getName();
								newFixed_price=newDang_price=book.getPrice();
						 %>





						<!--热销图书A开始-->
						<div class="second_d_wai">
							<div class="img">
								<a href="#"><img class="dang_img" 
									src="./productImages/1.jsp" border=0 /> </a>
							</div>
							<div class="shuming">
								<a href='bookInfo.jsp?id=<%=newId %>' ><%=newBookName %></a>
							</div>
							<div class="price">定价：￥<%=newFixed_price %></div>
							<div class="price">当当价：￥<%=newDang_price %></div>
						</div>
						<div class="book_c_xy_long"></div>
						<!--热销图书A结束-->

						<%
						}
						 %>
						
					</div>
					<div class="clear"></div>
				</div>
				<!--最新上架图书结束-->

				<div class="clear"></div>
			</div>
			<!--中栏结束-->



			<!--右栏开始-->
			<div class="book_right">
				<div class="book_r_border2" id="__XinShuReMai">
					<div class="book_r_b2_1x" id="hotboard">


						<h2 class="t_xsrm">
							<span class="more"><a href="#">更多&gt;&gt;</a> </span> 新书热卖榜
						</h2>
						<%
							List list4 = bookDao.getReMai();
							int reid;
							String name;
							
						 %>
						<div id="NewProduct_1_o_t" onmouseover="">
							<ul>
								<%
									for(int i=0;i<list4.size();i++){
										Book book =(Book)list4.get(i);
										reid=book.getBookId();
										name=book.getName();
								 %>
								<li><a href='bookInfo.jsp?id=<%=reid %>'><%=name %></a></li>
								<%
									}
								 %>
								<span class="dot_r">&nbsp;</span>
							</ul>

						</div>
					</div>
				</div>
			</div>
			<!--右栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->

		<link href="./css/public_footer.css" rel="stylesheet" type="text/css" />
		<div class="public_footer">
			<div class="public_footer_bottom">
				<div class="public_footer_icp" style="line-height: 48px;">
					Copyright (C) Oacle 2011-2012, All Rights Reserved <a href="#"><img
						src="./images/bottom/validate.gif" border="0" align="middle" /> </a>
					<a href="#" style="color: #666;">京ICP证041189号</a>
				</div>
			</div>
		</div>
		<!--页尾结束 -->
</body>
</html>
