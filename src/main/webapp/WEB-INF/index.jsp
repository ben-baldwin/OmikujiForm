<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<h1>Send a Omikuji</h1>
	<form action="/omikuji/show" method="POST">
	<div class="form-group">
		<label for="number">Pick and number from 5 to 25:</label>
		<input type="number" name="number" min="5" max="25" id="number" class="form-control"/>
	</div> 
	<br/>
	<div class="form-group">
		<label for="city">Enter the name of any city:</label>
		<input type="text" name="city" id="city" class="form-control"/>
	</div> 
	<br/>
	<div class="form-group">
		<label for="name">Enter the name of any real person:</label>
		<input type="text" name="name" id="name" class="form-control"/> 
	</div>
	<br/>
	<div class="form-group">
		<label for="hobby">Enter professional endeavor or hobby:</label>
		<input type="text" name="hobby" id="hobby" class="form-control"/> 
	</div>
	<br/>
	<div class="form-group">
		<label for="thing">Enter any type of living thing:</label>
		<input type="text" name="thing" id="thing" class="form-control"/>
	</div> 
	<br/>
	<div class="form-group">
		<label for="compliment">Say something nice to someone:</label>
		<textarea name="compliment" id="compliment" class="form-control"></textarea>
	</div>
	<br/>
	<div class="form-group">
		<label for="send">Send and show a friend</label>
		<br/>
		<input type="submit" name="send" id="send" class="btn btn-primary" /> 
	</div>
	</form>
</body>
</html>