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
		<h2>Edit an Expense :</h2>
	<p>Description must not be blank</p>
	<div class="container-sm">
		<form:form action ="/edit/${expense.id}" method="post" modelAttribute="expense">
			<input type="hidden" name="_method" value="put">
			
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