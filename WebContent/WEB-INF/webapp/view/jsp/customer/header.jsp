<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/header.css" rel="stylesheet" type="text/css" />
		<link href="css/slideshow.css" rel="stylesheet" type="text/css"/>
	</head>
	<body>
		<div class="header">
			<div class="slideshow">
			    
			    <input type="radio" name="ss2" id="ss2-item-2" class="slideshow--bullet" checked="checked"/>
			    <div class="slideshow--item"> 
			     	<s:a><img src="images/slide1.png"/></s:a>
			    </div>
			    <input type="radio" name="ss2" id="ss2-item-3" class="slideshow--bullet" />
			    <div class="slideshow--item"> 
			      	<s:a><img src="images/slide2.png"/></s:a>
			    </div>
			    <input type="radio" name="ss2" id="ss2-item-4" class="slideshow--bullet" />
			    <div class="slideshow--item"> 
			      	<s:a><img src="images/slide3.png"/></s:a>
			    </div>
			    <input type="radio" name="ss2" id="ss2-item-4" class="slideshow--bullet" />
			    <div class="slideshow--item"> 
			      	<s:a><img src="images/slide4.png"/></s:a>
			    </div>
			    <input type="radio" name="ss2" id="ss2-item-1" class="slideshow--bullet"/>
			    <div class="slideshow--item"> 
			     	<s:a><img src="images/slide5.png"/></s:a>
			    </div>
	  		</div>
		</div>
	</body>
</html>