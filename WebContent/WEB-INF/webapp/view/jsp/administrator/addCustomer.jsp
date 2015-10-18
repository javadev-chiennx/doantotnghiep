<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sd" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<title>Insert title here</title>
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp" />
	<center>
		<s:form name="addCus" action="register.html">
			<s:textfield name="customer.customerName" label="Customer name" />
			<s:textfield name="customer.countryId" label="Country id" />
			<s:textfield name="customer.username" label="Username" />
			<s:password name="customer.password" label="Password"></s:password>
			<sd:datetimepicker name="customer.birthDate" label="Birth date"
				displayFormat="dd/MM/yyyy" />
			<s:textfield name="customer.address" label="Address" />
			<s:textfield name="customer.phone" label="Phone" />
			<s:submit value="Submit" />
		</s:form>
	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp" />
</body>
</html>