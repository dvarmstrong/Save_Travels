<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  
	<div class="container">
		<h1>Expense Details</h1>
		<a href="/">Go Back</a>
	</div>
	<div class ="container">
		<h3>Expense Name:  <c:out value="${expense.expenseName}"></c:out></h3>
		<h3>Expense Name:  <c:out value="${expense.vendor}"></c:out></h3>
		<h3>Expense Name:  <c:out value="${expense.amount}"></c:out></h3>
		<h3>Expense Name:  <c:out value="${expense.description}"></c:out></h3>
	</div>

	 
</body>