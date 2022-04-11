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
					<td><a href="/show/${expense.id}"><c:out value="${expense.expenseName}">Edit</c:out></a></td>
					<td><c:out value="${expense.vendor}"></c:out></td>
					<td><c:out value="${expense.amount}"></c:out></td>
					<td><a href="/edit/${expense.id}">Edit</a></td>
					<td><form action="/delete/${expense.id}" method="post">
						<input type="hidden" name="_method" value="delete">
						<input type="submit" value="Delete">
					</form>
					</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<h2>Add an Expense :</h2>
	<p>Description must not be blank</p>
	<div class="container-sm">
		<form:form action ="/create/expenses" method="post" modelAttribute="expense">
			
				<div>
			        <form:label path="expenseName">Expense</form:label>
			        <form:errors path="expenseName"/>
			        <form:input path="expenseName"/>
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
			    <div>
			        <form:label path="description">Description</form:label>
			        <form:errors path="description"/>
			        <form:input path="description"/>
			    </div>
			    
			    <input type="submit" value="Submit"/>
			
		</form:form>
	</div>
	
	
	
	
	
		
		
		
</body>
</html>
