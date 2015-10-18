<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="s" uri="/struts-tags"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" content="no-cache">
<meta HTTP-EQUIV="Expires" content="-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/font-awesome.css" rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">
<link href="css/style1.css" rel="stylesheet" type="text/css">
<link href="css/pages/signin.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="index.html"></a>
			</div>
		</div>
	</div>
	<div class="account-container">
		<div class="content clearfix">
			<s:form action="accountLogin.html" method="post">
				<h1>Login</h1>
				<div class="login-fields">
					<div class="field">
							<s:textfield type="text" id="username" name="username" value=""
							placeholder="Username" cssClass="login username-field"/>
					</div>
					<div class="field">
							<s:password type="password" id="password" name="password" value=""
							placeholder="Password" cssClass="login password-field"/>
					</div>
				</div>
				<div class="login-actions">
					<span class="login-checkbox">
					<s:checkbox name="checkMe" fieldValue="true" cssClass="field login-checkbox" tabindex="4" label="Keep sign in"/>
					</span>
					<s:submit cssClass="button btn btn-success btn-large" value="Login"/>
				</div>
			</s:form>
		</div>
	</div>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/signin.js"></script>
</body>
</html>
