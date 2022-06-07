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
	<div class="page">
	<h1>Book Club</h1>
	<p>A place for friends to show thought on books.</p>
		<div class="container">
			<div class="register">
				<h2>Register:</h2>
				<form:form action="/register" modelAttribute="newUser" class="form">
			
					<div class="inputs">
					 	<form:errors path="userName"/>
						<form:label for="userName" path="userName">User Name:</form:label>
						<form:input type="text" path="userName" class="form-control"/>
					</div>
					
					<div class="inputs">
						<form:errors path="email"/>
						<form:label for="email" path="email">Email:</form:label>
						<form:input type="text" path="email" class="form-control"/>
					</div>
					
					<div class="inputs">
						<form:errors path="password"/>
						<form:label for="password" path="password">Password:</form:label>
						<form:input type="text" path="password" class="form-control"/>
					</div>
					
					<div class="inputs">
						<form:errors path="confirm"/>
						<form:label for="" path="confirm">Confirm:</form:label>
						<form:input type="text" path="confirm" class="form-control"/>
					</div>
					
					<div class="inputs">
						<input type="submit" value="Submit" class="btn-primary"/>
					</div>
				
				</form:form>
			</div>
			
			<div class="login">
				<h2>Login:</h2>
				<form:form action="/login" modelAttribute="newLogin" class="form">
					<div class="inputs">
						<form:errors path="email"/>
						<form:label for="email" path="email">Email:</form:label>
						<form:input type="text" path="email" class="form-control"/>
					</div>
					
					<div class="inputs">
						<form:errors path="password"/>
						<form:label for="password" path="password">Password:</form:label>
						<form:input type="text" path="password" class="form-control"/>
					</div>
					
					<div class="inputs">
						<input type="submit" value="Submit" class="btn-primary"/>
					</div>
				
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
