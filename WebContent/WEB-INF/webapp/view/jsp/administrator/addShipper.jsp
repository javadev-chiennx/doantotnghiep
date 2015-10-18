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
<title>Add shipper</title>
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp" />
	<center>
		<s:form name="addShipper" action="addShipp.html">
			<s:textfield name="shipper.countryId" label="Country Id" />
			<s:textfield name="shipper.shipperName" label="Shipper name" />
			<s:textfield name="shipper.address" label="Address" />
			<s:textfield name="shipper.phone" label="Phone" />
			<sd:datetimepicker name="shipper.birthDate" label="Birth date"
				displayFormat="dd/MM/yyyy" />
			<s:textfield name="shipper.image" label="Image" />
			<s:submit value="Submit" />
		</s:form>




	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp" />
</body>
</html>