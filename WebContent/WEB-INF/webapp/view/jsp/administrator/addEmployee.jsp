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
<title>Add Employee</title>
<sd:head />
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp" />
	<center>
		<s:form name="addEmp" action="addEmployee.html">
			<s:textfield name="staff.fullname" label="fullname" />
			<s:textfield name="staff.username" label="username" />
			<s:textfield name="staff.password" label="password" />
			<s:textfield name="staff.idCardNumber" label="idCardNumber" />
			<s:textfield name="staff.countryId" label="Country ID" />
			<sd:datetimepicker name="staff.birthDate" label="Birth date"
				displayFormat="dd/MM/yyyy" value="today"/>
			<s:textfield name="staff.address" label="Address" />
			<s:textfield name="staff.email" label="Email" />
			<s:textfield name="staff.phone" label="Phone" />
			<s:textfield name="staff.image" label="Images" value="today" />
			<s:radio label="Is admin" name="staff.isAdmin"
				list="#{'true':'Yes','false':'No'}" value="" />
			<s:submit value="Submit" />
		</s:form>
	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp" />
</body>
</html>