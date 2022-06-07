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
		<h1>Change your Entry</h1>
		<a href="/home">Back to the shelves.</a>
	</div>
	<form:form action="/books/${book.id}" modelAttribute="book" class="form" method="post">
				<input type="hidden" name="_method" value="put"/>
			
				<div class="form-row">
				 	<form:errors path="title" class="error"/>
					<form:label for="title" path="title">Title:</form:label>
					<form:input type="text" path="title" class="form-control"/>
				</div>
				
				<div class="form-row">
					<form:errors path="author" class="error"/>
					<form:label for="author" path="author">Author:</form:label>
					<form:input type="text" path="author" class="form-control"/>
				</div>
				
				<div class="form-row">
					<form:errors path="thoughts" class="error"/>
					<form:label for="thoughts" path="thoughts">Thoughts:</form:label>
					<form:textarea path="thoughts" class="form-control"/>
				</div>
				
				<div class="form-row">
					<form:errors path="user" class="error"/>
					<form:input type="hidden" path="user" value="${user.id}" class="form-control"/>
				</div>
				
				<div class="form-row">
					<input type="submit" value="Submit" class="btn-primary"/>
				</div>
				
			</form:form>	
</body>
</html>
