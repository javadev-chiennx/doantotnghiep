<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<title>Add product</title>
<sx:head />
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp" />
	<center>
		<s:form name="addproduct" action="addPro.html">
			<s:textfield name="product.categoryId" label="categoryId" />
			<s:textfield name="product.supplierId" label="supplierId" />
			<s:textfield name="product.productName" label="productName" />
			<s:textfield name="product.color" label="color" />
			<s:textfield name="product.quantity" label="quantity" />
			<s:textfield name="product.purchasePrice" label="purchasePrice" />
			<s:textfield name="product.salePrice" label="salePrice" />
			<sx:datetimepicker name="product.productDate"
				displayFormat="dd/MM/yyyy" value=""
				label="Product date" />
			<s:select name="product.guaranteeTime" headerKey="-1" headerValue="---Please choose---"
		list="#{'6 tháng':'6 tháng','12 tháng':'12 tháng','24 tháng':'24 tháng','36 tháng':'36 tháng'}" value="2" label="Guarantee time"/>
			<s:radio label="Status" name="product.status" list="#{'1':'Còn hàng','0':'Hết hàng'}" value="1" />
			<s:textfield name="product.img" label="img" />
			<s:radio label="Is specifial" name="product.isSpecifial" list="#{'true':'Yes','false':'No'}" value="0" />
			<s:submit value="Submit" />
		</s:form>
	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp" />
</body>
</html>