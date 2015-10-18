<%@page import="com.nextop.webapp.entities.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Expires" content="-1">
<title><s:text name="lable.home" /></title>
<link href="css/content.css" rel="stylesheet" type="text/css" />
<link href="css/footer.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/pagination.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="main">
		<s:include value="/WEB-INF/webapp/view/jsp/customer/top.jsp" />
		<s:include value="/WEB-INF/webapp/view/jsp/customer/header.jsp" />
		<!-- CONTENT : START -->
		<div class="clr"></div>
		<div class="content">
			<!-- Menu tab -->
			<div id="menu_tab">
				<div class="left_menu_corner"></div>
				<ul class="menu">
					<li><a href="index.html" id="nav_hom"><s:text
								name="lable.home" /></a></li>
					<li class="divider"></li>
					<li><a href="#" id="nav_pro"><s:text
								name="lable.introduction" /></a></li>
					<li class="divider"></li>
					<li><a href="#" id="nav_rec"><s:text
								name="lable.recruitment" /></a></li>
					<li class="divider"></li>
					<li><a href="contact.html" id="nav_new"><s:text
								name="lable.the_news" /></a></li>
					<li class="divider"></li>
					<li><a href="contact.html" id="nav_con"><s:text
								name="lable.contact" /></a></li>
					<li class="divider"></li>
					<li>
						<div>
							<div class="search">
								<div class="search_text">
									<s:text name="lable.search" />
								</div>
								<s:form name="search" action="search.html">
									<s:textfield cssClass="search_input" name="productName" />
									<%-- <s:submit cssClass="search_bt" value=""/> --%>
									<%-- <div class="search_bt">
									<s:url id="searchURL">
										<s:param name="elementByName">
											<s:property value="productName" />
										</s:param>
									</s:url>
									<s:a href="%{searchURL}" />
								</div> --%>
								</s:form>
							</div>
						</div>
					</li>
					<!-- <li class="divider"></li> -->
				</ul>
				<div class="right_menu_corner"></div>
			</div>

			<!-- Navigation -->
			<!-- InstanceBeginEditable name="navigation" -->
			<div class="navigation">
				<%-- <s:text name="lable.navigation" /> --%>
				<span class="current"><s:text name="lable.home" /></span>
			</div>
			<!-- InstanceEndEditable -->
			<!-- Left Content -->
			<div class="left_content">
				<!-- Categories -->
				<div class="title_box">
					<s:text name="lable.categories" />
				</div>
				<div id="menu_box">
					<ul class="menuveri">
						<li><s:a>
								<s:text name="lable.computer" />
							</s:a>
							<ul>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234346"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.computer.laptop" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234347"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.computer.desktop" />
									</s:a></li>
							</ul></li>
						<li><s:a>
								<s:text name="lable.computer.component" />
							</s:a>
							<ul>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234348"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.computer.component.cpu" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234349"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.computer.component.ram" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234350"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.computer.component.mainboard" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234351"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.computer.component.card_net" />
									</s:a></li>
							</ul></li>
						<li><s:a>
								<s:text name="lable.storage.devices" />
							</s:a>
							<ul>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234352"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.storage.devices.usb" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234353"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.storage.devices.hdd" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234354"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.storage.devices.ssd" />
									</s:a></li>
							</ul></li>
						<li><s:a>
								<s:text name="lable.network.equipment" />
							</s:a>
							<ul>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234355"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.network.equipment.hub" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234356"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.network.equipment.model" />
									</s:a></li>
								<li><s:url id="fillter" action="findCategory.html">
										<s:param name="category" value="234357"></s:param>
									</s:url> <s:a href="%{fillter}">
										<s:text name="lable.network.equipment.router" />
									</s:a></li>
							</ul></li>
					</ul>
				</div>
				<!-- Special Product -->
				<div class="title_box">
					<s:text name="lable.specifial" />
				</div>
				<div class="border_box">
					<div class="product_title">
						<a href="#">Macbook Air 2014</a>
					</div>
					<div class="product_image">
						<a href="#"><img src="images/apple/apple8.png" alt="laptop" /></a>
					</div>
					<div class="product_price">
						<span class="reduce">25,999,000</span> <span class="price">24,999,000</span>
					</div>
				</div>
				<!-- Newsletter -->
				<div class="title_box">
					<s:text name="lable.supplier" />
				</div>
				<ul class="left_menu">
					<li class="odd"><s:url id="fillter" action="findSupplies.html">
							<s:param name="supplies" value="657389"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="Dell" />
						</s:a></li>
					<li class="even"><s:url id="fillter"
							action="findSupplies.html">
							<s:param name="supplies" value="657390"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="Intel" />
						</s:a></li>
					<li class="odd"><s:url id="fillter" action="findSupplies.html">
							<s:param name="supplies" value="657391"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="AMD" />
						</s:a></li>
					<li class="even"><s:url id="fillter"
							action="findSupplies.html">
							<s:param name="supplies" value="657392"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="Kington" />
						</s:a></li>
					<li class="odd"><s:url id="fillter" action="findSupplies.html">
							<s:param name="supplies" value="657393"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="Apple" />
						</s:a></li>
					<li class="even"><s:url id="fillter"
							action="findSupplies.html">
							<s:param name="supplies" value="657394"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="Toshiba" />
						</s:a></li>
					<li class="odd"><s:url id="fillter" action="findSupplies.html">
							<s:param name="supplies" value="657395"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="Microsoft" />
						</s:a></li>
					<li class="even"><s:url id="fillter"
							action="findSupplies.html">
							<s:param name="supplies" value="657396"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="Acer" />
						</s:a></li>
					<li class="odd"><s:url id="fillter" action="findSupplies.html">
							<s:param name="supplies" value="657397"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="HP" />
						</s:a></li>
					<li class="even"><s:url id="fillter"
							action="findSupplies.html">
							<s:param name="supplies" value="657398"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="SamSung" />
						</s:a></li>
					<li class="odd"><s:url id="fillter" action="findSupplies.html">
							<s:param name="supplies" value="657420"></s:param>
						</s:url> <s:a href="%{fillter}">
							<s:text name="FPT" />
						</s:a></li>
				</ul>
				<br>
				<!-- Quảng cáo -->




				<!-- end Quảng cáo -->
			</div>

			<!-- Center Content -->
			<!-- InstanceBeginEditable name="content" -->
			<div class="center_content">
				<div class="center_title_bar">
					<s:text name="lable.list_product" />
				</div>
				<!-- Product -->
				<div class="table_product">
					<s:if test="getProducts().size() > 0">
						<table width="560" border="0" cellspacing="1" cellpadding="1">
							<s:iterator value="products" status="status">
								<s:if test="#status.index % 3 == 0">
									<tr>
								</s:if>
								<td>
									<div class="prod_box">
										<div class="top_prod_box"></div>
										<div class="center_prod_box">
											<div class="product_title">
												<a href="#"><s:property value="productName" /></a>
											</div>
											<div class="product_image">
												<a href="#"><img alt="" src="<s:property value="img"/>"></a>
											</div>
											<div class="product_price">
												<span class="price"><s:property
														value="formatSalePrice()" /> VND</span>
											</div>
										</div>
										<div class="bottom_prod_box"></div>
										<div class="prod_details_tab">
											<a href="#" title="header=[Add to cart] body=[&nbsp;]"><img
												src="images/cart.gif" alt="Cart" class="left_bt" /></a> <a
												href="#" title="header=[Speacials] body=[&nbsp;]"><img
												src="images/favs.gif" alt="Speacials" class="left_bt" /></a>
												<s:url id="details" action="productDetails.html">
													<s:param name="productDetails" value="%{productId}"></s:param>
												</s:url><s:a href="%{details}"><s:text name="lable.detail"/></s:a>
										</div>
									</div>
								</td>
								<s:if test="#status.count % 3 == 0">
									</tr>
								</s:if>
							</s:iterator>
						</table>
					</s:if>
					<s:else>NO DATA FOUND !!!</s:else>
				</div>
				<!-- End product -->
				<div>
					<!-- Phan trang -->
					<ul class="cd-pagination">
						<li class="button"><a
							href="index.html?currentPage=<s:property value='1'/>">First</a></li>
						<s:iterator var="page" begin="1" end="totalPage">
							<li class="button"><a href="index.html?currentPage=<s:property value='#page'/>"><s:property
										value='#page' /></a></li>
						</s:iterator>
						<li class="button"><a href="index.html?currentPage=<s:property value='getTotalPage()'/>">Last</a></li>
					</ul>
				</div>

			</div>
			<!-- InstanceEndEditable -->
			<!-- Right Content -->
			<div class="right_content">
				<!-- Shopping cart -->
				<div class="shopping_cart">
					<div class="cart_title">
						<s:text name="lable.shopping_cart" />
					</div>
					<div class="cart_details">
						0 items <br /> <span class="border_cart"></span> Total: <span
							class="price">0 vnd</span>
					</div>
					<div class="cart_icon">
						<a href="#" title="header=[Checkout] body=[&nbsp;] "> <img
							src="images/shoppingcart.png" alt="images" width="48" height="48"
							border="0" />
						</a>
					</div>
				</div>
				<!-- Manufactures -->
				<div class="title_box">
					<s:text name="lable.findby_price" />
				</div>
				<ul class="left_menu">
					<li class="odd"><s:url id="price1" action="findPrice.html">
							<s:param name="price1" value="1000000" />
							<s:param name="price2" value="3000000" />
						</s:url>
						<s:a href="%{price1}">
							<s:text name="lable.findby_price1" />
						</s:a></li>
					<li class="even"><s:url id="price2" action="findPrice.html">
							<s:param name="price1" value="3000000" />
							<s:param name="price2" value="5000000" />
						</s:url>
						<s:a href="%{price2}">
							<s:text name="lable.findby_price2" />
						</s:a></li>
					<li class="odd"><s:url id="price3" action="findPrice.html">
							<s:param name="price1" value="5000000" />
							<s:param name="price2" value="7000000" />
						</s:url>
						<s:a href="%{price3}">
							<s:text name="lable.findby_price3" />
						</s:a></li>
					<li class="even"><s:url id="price4" action="findPrice.html">
							<s:param name="price1" value="7000000" />
							<s:param name="price2" value="9000000" />
						</s:url>
						<s:a href="%{price4}">
							<s:text name="lable.findby_price4" />
						</s:a></li>
					<li class="odd"><s:url id="price5" action="findPrice.html">
							<s:param name="price1" value="9000000" />
							<s:param name="price2" value="11000000" />
						</s:url>
						<s:a href="%{price5}">
							<s:text name="lable.findby_price5" />
						</s:a></li>
					<li class="even"><s:url id="price6" action="findPrice.html">
							<s:param name="price1" value="11000000" />
							<s:param name="price2" value="13000000" />
						</s:url>
						<s:a href="%{price6}">
							<s:text name="lable.findby_price6" />
						</s:a></li>
					<li class="odd"><s:url id="price7" action="findPrice.html">
							<s:param name="price1" value="13000000" />
							<s:param name="price2" value="15000000" />
						</s:url>
						<s:a href="%{price7}">
							<s:text name="lable.findby_price7" />
						</s:a></li>
					<li class="even"><s:url id="price8" action="findPrice.html">
							<s:param name="price1" value="15000000" />
							<s:param name="price2" value="17000000" />
						</s:url>
						<s:a href="%{price8}">
							<s:text name="lable.findby_price8" />
						</s:a></li>
					<li class="odd"><s:url id="price9" action="findPrice.html">
							<s:param name="price1" value="17000000" />
							<s:param name="price2" value="19000000" />
						</s:url>
						<s:a href="%{price9}">
							<s:text name="lable.findby_price9" />
						</s:a></li>
					<li class="even"><s:url id="price10" action="findPrice.html">
							<s:param name="price1" value="19000000" />
							<s:param name="price2" value="27000000" />
						</s:url>
						<s:a href="%{price10}">
							<s:text name="lable.findby_price10" />
						</s:a></li>
				</ul>
				<!-- Quang cáo -->
				<div class="banner">
					<a href="#"><img src="images/banner3.gif" alt="banner" /></a>
				</div>
				<!-- end Quang cáo -->
			</div>
		</div>
		<!-- CONTENT : END -->
		<div class="clr"></div>
		<s:include value="/WEB-INF/webapp/view/jsp/customer/footer.jsp" />
	</div>
</body>
</html>