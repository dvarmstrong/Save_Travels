<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Travels</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1>Save Travels</h1>
	<div class="container-sm">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Expense</th>
					<th>Vendor</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses}">
				<tr>
					<td><c:out value="${expense.expense}"></c:out></td>
					<td><c:out value="${expense.vendor}"></c:out></td>
					<td><c:out value="${expense.amount}"></c:out></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<h2>Add an Expense :</h2>
	<p>Description must not be blank</p>
	<div class="container-sm">
		<form:form action ="/expenses" method="post" modelAttribute="expense">
			
				<div>
			        <form:label path="expense">Expense</form:label>
			        <form:errors path="expense"/>
			        <form:input path="expense"/>
			    </div>
			    
				<div>
			        <form:label path="vendor">Vendor</form:label>
			        <form:errors path="vendor"/>
			        <form:input path="vendor"/>
			    </div>
			    
				<div>
			        <form:label path="amount">Amount</form:label>
			        <form:errors path="amount"/>
			        <form:input path="amount"/>
			    </div>
			    <input type="submit" value="Submit"/>
			
		</form:form>
	</div>
	
	
	
	
	
		
		
		
</body>
</html>
