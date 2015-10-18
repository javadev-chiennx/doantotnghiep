<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<link href="css/listTable.css" rel="stylesheet" type="text/css" />
<link href="css/menucool.css" rel="stylesheet" type="text/css" />
<style type="text/css">
span {
	margin-top: 15px;
	margin-left: 60px;
	margin-bottom: 15px;
	color: maroon;
}

.odd {
	background-color: #FFFFF0;
}

.even {
	background-color: #FAF0E6;
}

.pagebanner {
	display: none;
}
/* for coustamizing page links */
.pagelinks {
	color: maroon;
	margin-left: 60px;
	margin-top: 50px;
}

/* for shifting all the Export options*/
.exportlinks {
	margin-top: 5px;
	margin-left: 50px;
}
/* For changing the spaces between export link */
.export {
	margin-left: 30px;
}
</style>
<title>List products</title>
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp"></s:include>
	<center>
		<s:if test="getListProducts().size() > 0">
			<div class="content">
				<table class="userTable" cellpadding="5px">
					<tr class="even">
						<th>CategoryId</th>
						<th>SupplierId</th>
						<th>ProductId</th>
						<th width="200">Product name</th>
						<th>Color</th>
						<th>Guarantee time</th>
						<th>Product date</th>
						<th>Purchase price</th>
						<th>Quantity</th>
						<th>SalePrice</th>
						<th>Is specifial</th>
						<th>Status</th>
						<th width="50">Image</th>
						<th>Action</th>
					</tr>
					<s:iterator value="listProducts" status="userStatus">
						<tr
							class="<s:if test="#userStatus.odd == true ">odd</s:if><s:else>even</s:else>">
							<td><s:property value="categoryId" /></td>
							<td><s:property value="supplierId" /></td>
							<td><s:property value="productId" /></td>
							<td width="200"><s:property value="productName" /></td>
							<td><s:property value="color" /></td>
							<td><s:property value="guaranteeTime" /></td>
							<td><s:property value="productDate" /></td>
							<td><s:property value="purchasePrice" /></td>
							<td><s:property value="quantity" /></td>
							<td><s:property value="salePrice" /></td>
							<td><s:property value="isSpecifial" /></td>
							<td><s:property value="status" /></td>
							<td width="50"><img alt="" src="<s:property value="img"/>">
							</td>
							<td>
								<ul id="css3menu1" class="topmenu">
									<li class="topfirst"><s:a href="#" style="width: 42px;">
											<span>Action</span>
										</s:a>
										<ul>
											<li><s:a action="inputProduct.html">Add</s:a></li>
											<li><s:a href="#">Edit</s:a></li>
											<li><s:url id="deleteURL" action="deleteProduct.html">
													<s:param name="productId" value="%{productId}"></s:param>
												</s:url> <s:a onclick="return confirm('Are you sure ?')"
													href="%{deleteURL}">Delete</s:a></li>
										</ul></li>
								</ul>
							</td>
						</tr>
					</s:iterator>
				</table>

			</div>
		</s:if>
		<s:else>
			<div class="content">
				<table class="userTable" cellpadding="5px">
					<tr class="even">
						<th>CategoryId</th>
						<th>SupplierId</th>
						<th>ProductId</th>
						<th>Product name</th>
						<th>Color</th>
						<th>Guarantee time</th>
						<th>Product date</th>
						<th>Purchase price</th>
						<th>Quantity</th>
						<th>SalePrice</th>
						<th>Is specifial</th>
						<th>Status</th>
						<th width="150">Image</th>
					</tr>
					<tr style="text-align: center;">
						<td colspan="13">No data found !</td>
					</tr>
				</table>
			</div>
		</s:else>
	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp"></s:include>
</body>
</html>