<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Here's your Omikuji</h1>
	<div>
		<p>
		in 
		<c:out value="${sessionNumber}" /> years, you will live in 
		<c:out value="${sessionCity}" /> with 
		<c:out value="${sessionName}" /> as your roommate, selling
		<c:out value="${sessionHobby}" /> for a living. The next time you see a 
		<c:out value="${sessionThing}" />, you will have good luck. Also, 
		<c:out value="${sessionCompliment}" />
		</p>
		<a href="/omikuji">return home</a>
	</div>
</body>
</html>