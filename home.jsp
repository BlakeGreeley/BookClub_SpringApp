<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Club</title>
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="nav">
		<h2>Welcome, <c:out value="${user.userName}"/></h2>
		<a href="/logout">logout</a>
	</div>
	
	<div class="nav2">
		<p>Books from everyone's shelves:</p>
		<a href="/addPage">Add to my shelf!</a>
	</div>
	
	<table class="table">
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Author Name</th>
			<th>Posted By</th>
		</tr>
		<c:forEach var="book" items="${books}">
			
		<tr>
			<td><c:out value="${book.id}"/></td>
			<td><a href="books/${book.id}"><c:out value="${book.title}"/></a></td>
			<td><c:out value="${book.author}"/></td>
			<td><c:out value="${book.user.userName}"/></td>
		</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>
