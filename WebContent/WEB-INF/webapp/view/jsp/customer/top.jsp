<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/popup_login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-2.1.3.js">
	
</script>
</head>
<body>
	<div class="top">
		<div class="authenticate">
			<div>
				<s:a href="#openModal">
					<s:text name="lable.login_customer" />
				</s:a>
				|
				<s:a>
					<s:text name="lable.registration_customer" />
				</s:a>
			</div>
		</div>
		<div class="languages">
			<div>
				<s:text name="lable.language" />
			</div>
			<s:url id="locale_en" action="locale.html">
				<s:param name="request_locale">en</s:param>>
			</s:url>
			<s:url id="locale_vi" action="locale.html">
				<s:param name="request_locale">vi</s:param>
			</s:url>
			<s:url id="locale_ja" action="locale.html">
				<s:param name="request_locale">ja</s:param>
				<!-- tham so nay quyet dinh den viec chuyen ngon ngu no phai giong voi phan hau to trong file application_xx -->
			</s:url>
			<s:a href="%{locale_en}">
				<img src="images/en.gif" alt="images" />
			</s:a>
			<s:a href="%{locale_vi}">
				<img src="images/vi.gif" alt="images" />
			</s:a>
			<s:a href="%{locale_ja}">
				<img src="images/ja.png" alt="images" />
			</s:a>
		</div>
	</div>
	<div id="openModal" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<div>
				<h2 style="font-size: 36px; text-align: center;"><s:text name="lable.login_customer"/></h2>
					<s:form method="post" action="loginCustomer.html" cssClass="login">
				<p>
					<label for="login"><s:text name="lable.usename"/></label> 
					<input type="text" name="username"	id="login" value='<s:text name="lable.usename"/>' onclick="this.value = ''">
				</p>

				<p>
					<label for="password"><s:text name="lable.password"/></label>
					<input type="password" name="password" id="password" value="0123456789" onclick="this.value = ''">
				</p>

				<p align="center">
					<s:submit name="logincus" action="login_customer" cssClass="login_customer" key="lable.login_customer"></s:submit>
				</p>
			</s:form>
			</div>
		</div>
	</div>
</body>
</html>