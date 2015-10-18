<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<title>Add Suppliers</title>
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp" />
	<center>
		<s:form name="addSupplier" action="addObject.html" >
			<s:textfield name="supplier.supplierName" label="Supplier name"/>
			<s:textfield name="supplier.address" label="Address"/>
			<s:textfield name="supplier.email" label="Email"/>
			<s:textfield name="supplier.phone" label="Phone"/>	
			<s:textfield name="supplier.countryId" label="Country ID"/>
			<s:textfield name="supplier.taxCode" label="Tax code"/>
			<s:submit value="Submit"/>	
		</s:form>
	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp" />
</body>
</html>