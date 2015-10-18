<%@page import="com.nextop.webapp.entities.Staff"%>
<%@page import="com.nextop.webapp.daoImpl.StaffDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<link href="css/listTable.css" rel="stylesheet" type="text/css" />
<link href="css/menucool.css" rel="stylesheet" type="text/css" />
<title>List employee</title>
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp" />
	<center>
		<s:if test="getsList().size() > 0">
			<div class="content">
				<table class="userTable" cellpadding="5px">
					<tr class="even">
						<th>StaffId</th>
						<th>CountryId</th>
						<th>Full name</th>
						<th>User name</th>
						<th>Password</th>
						<th>Address</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Id card number</th>
						<th>Birth date</th>
						<th>Image</th>
						<th>Is admin</th>
						<th>Action</th>
					</tr>
					<%
						StaffDAOImpl impl = new StaffDAOImpl();
					%>
					<c:forEach var="emp" items="<%=impl.listAll()%>"
						varStatus="userStatus">
						<tr class="<c:if test="#userStatus.odd == true ">odd</c:if>">
							<td>${emp.staffId}</td>
							<td>${emp.countryId}</td>
							<td>${emp.fullname}</td>
							<td>${emp.username}</td>
							<td>${emp.password}</td>
							<td>${emp.address}</td>
							<td>${emp.email}</td>
							<td>${emp.phone}</td>
							<td>${emp.idCardNumber}</td>
							<td>${emp.birthDate}</td>
							<td>${emp.image}</td>
							<td>${emp.isAdmin}</td>
							<td>
								<ul id="css3menu1" class="topmenu">
									<li class="topfirst"><s:a href="#" style="width: 42px;">
											<span>Action</span>
										</s:a>
										<ul>
											<li><s:a action="inputEmp.html">Add</s:a></li>
											<li><s:a href="#">Edit</s:a></li>
											<li><s:url id="deleteURL" action="deleteCountry.html">
													<s:param name="countryId" value="%{countryId}"></s:param>
												</s:url> <s:a onclick="return confirm('Are you sure ?')"
													href="%{deleteURL}">Delete</s:a></li>
										</ul></li>
								</ul>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</s:if>
		<s:else>
			<div class="content">
				<table class="userTable" cellpadding="5px">
					<tr class="even">
						<th>StaffId</th>
						<th>CountryId</th>
						<th>Full name</th>
						<th>User name</th>
						<th>Password</th>
						<th>Address</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Id card number</th>
						<th>Birth date</th>
						<th>Image</th>
						<th>Is admin</th>
						<th>Action</th>
					</tr>
					<tr style="text-align: center;">
						<td colspan="12">No data found !</td>
					</tr>
				</table>
			</div>
		</s:else>
	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp" />
</body>
</html>