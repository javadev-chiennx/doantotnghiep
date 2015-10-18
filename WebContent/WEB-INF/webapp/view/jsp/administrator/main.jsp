<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<title>Dashboard - Admin</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="css/ggapi.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/style1.css" rel="stylesheet">
<link href="css/pages/dashboard.css" rel="stylesheet">
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span> </a><a
					class="brand" href="index.html"></a>
				<div class="nav-collapse">
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="icon-user"></i> Welcome <s:property
									value="%{username}" /><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><s:a href="javascript:;">Profile</s:a></li>
								<li><s:a action="logout.html">Logout</s:a></li>
							</ul></li>
					</ul>
					<form class="navbar-search pull-right">
						<input type="text" class="search-query" placeholder="Search">
					</form>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!-- /container -->
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->
	<div class="subnavbar">
		<div class="subnavbar-inner">
			<div class="container">
				<ul class="mainnav">
					<li class="active"><s:a action="index.html">
							<i class="icon-dashboard"></i>
							<span>Front end</span>
						</s:a></li>
					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-long-arrow-down"></i><span>Manager</span> <b
							class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><s:url var="customer" action="listCustomer.html" /> <s:a
									href="%{customer}">Customer</s:a></li>
							<li><s:url var="staff" action="listStaff.html" /> <s:a
									href="%{staff}">Employee</s:a></li>
							<li><s:url var="product" action="listProduct.html" /> <s:a
									href="%{product}">Product</s:a></li>
							<li><s:url var="shipper" action="listShipper.html" /> <s:a
									href="%{shipper}">Shipper</s:a></li>
							<li><s:url var="order" action="listOrder.html" /> <s:a
									href="%{order}">Order</s:a></li>
							<li><s:url var="carte" action="listCategory.html" /> <s:a
									href="%{carte}">Category</s:a></li>
							<li><s:url var="product" action="listCountry.html" /> <s:a
									href="%{product}">Country</s:a></li>
							<li><s:url var="supplies" action="listSupplies.html" /> <s:a
									href="%{supplies}">Supplies</s:a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /container -->
		</div>
		<!-- /subnavbar-inner -->
	</div>
	<!-- /subnavbar -->
	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span6">
						<div class="widget">
							<div class="widget-header">
								<i class="icon-bookmark"></i>
								<h3>Manager</h3>
							</div>
							<div class="widget-content">
								<center>
									<table width="600" border="0">
										<tr>
											<td height="160">
												<div>
													<s:a action="listStaff.html" cssClass="myButton">Employee</s:a>
												</div>
											</td>
											<td>
												<div>
													<s:a action="listCustomer.html" cssClass="myButton">Customer</s:a>
												</div>
											</td>
											<td>
												<div>
													<s:a action="listProduct.html" cssClass="myButton">Products</s:a>
												</div>
											</td>
										</tr>
										<tr>
											<td height="160">
												<div>
													<s:a action="listSupplies.html" cssClass="myButton">Supplies</s:a>
												</div>
											</td>
											<td>&nbsp;</td>
											<td>
												<div>
													<s:a action="listCountry.html" cssClass="myButton">Country</s:a>
												</div>
											</td>
										</tr>
										<tr>
											<td height="160">
												<div>
													<s:a action="listOrder.html" cssClass="myButton">Order......</s:a>
												</div>
											</td>
											<td>
												<div>
													<s:a action="listCategory.html" cssClass="myButton">Category</s:a>
												</div>
											</td>
											<td>
												<div>
													<s:a action="listShipper.html" cssClass="myButton">Shipper</s:a>
												</div>
											</td>
										</tr>
									</table>
								</center>
							</div>
							<!-- /widget-content -->
						</div>
						<!-- /widget -->
					</div>
					<!-- /span6 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /main-inner -->
	</div>
	<!-- /main -->
	<div class="footer">
		<div class="footer-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						&copy; 2015
						<s:a href="#">Nguyễn Xuân Chiến - 20109216</s:a>
					</div>
					<!-- /span12 -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /footer-inner -->
	</div>
	<!-- /footer -->
	<!-- Le javascript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/excanvas.min.js"></script>
	<script src="js/chart.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/full-calendar/fullcalendar.min.js"></script>
	<script src="js/base.js"></script>
</body>
</html>
