<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta HTTP-EQUIV="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<link href="css/listTable.css" rel="stylesheet" type="text/css" />
<link href="css/menucool.css" rel="stylesheet" type="text/css" />
<title>List country</title>
</head>
<body>
	<s:include value="/WEB-INF/webapp/view/jsp/administrator/commontop.jsp" />
	<center>
		<s:if test="getCountry().size() > 0">
			<div class="content">
				<table class="userTable" cellpadding="5px">
					<tr class="even">
						<th>countryId</th>
						<th>countryCode</th>
						<th>countryName</th>
						<th>Action</th>
					</tr>
					<s:iterator value="country" status="userStatus">
						<tr
							class="<s:if test="#userStatus.odd == true ">odd</s:if><s:else>even</s:else>">
							<td><s:property value="countryId" /></td>
							<td><s:property value="countryCode" /></td>
							<td><s:property value="countryName" /></td>
							<td>
								<ul id="css3menu1" class="topmenu">
									<li class="topfirst"><s:a href="#" style="width: 42px;">
											<span>Action</span>
										</s:a>
										<ul>
											<li><s:a action="inputCountry.html">Add</s:a></li>
											<li><s:a href="#">Edit</s:a></li>
											<li><s:url id="deleteURL" action="deleteCountry.html">
													<s:param name="countryId" value="%{countryId}"></s:param>
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
						<th>countryId</th>
						<th>countryCode</th>
						<th>countryName</th>
						<th>Action</th>
					</tr>
					<tr style="text-align: center;">
						<td colspan="4">No data found !</td>
					</tr>
				</table>
			</div>
		</s:else>
	</center>
	<s:include
		value="/WEB-INF/webapp/view/jsp/administrator/commonbuttom.jsp" />
</body>
</html>