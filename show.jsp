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
	<div>
		<div class='nav'>
			<h1><c:out value="${book.title}"/></h1>
			<a href='/home'>Back to the shelves:</a>
		</div>
			
			<div>
				<h3><span style="color: red;"><c:out value="${book.user.userName}"/></span> read 
					<span style="color: rebeccapurple;"><c:out value="${book.title}"/></span> by 
					<span style="color: darkgreen;"><c:out value="${book.author}"/></span>
				</h3>
			</div>
			
			<div>
				<h4>Here are their thoughts:</h4>
				<hr/>
				
				<p><c:out value="${book.thoughts}"/></p>
				<hr />
			
			</div>
			
			<button class="btn-warning"><a href="/books/${book.id}/edit">edit</a></button>
	</div>
</body>
</html>
