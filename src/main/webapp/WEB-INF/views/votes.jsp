<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>VOTE</title>
</head>
<body>
	
	<div class = "container">
		<table class="table">
			<thead>
				<tr>
					<th>Pizza Type</th><th>Description</th><th>Votes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pizza" items="${pizzas }">
				
				<tr>				
					<td><a href="/detail?id=${pizza.id}">${pizza.name}</a></td>
					<td>${pizza.description }</td>
					<td>${pizza.votes }</td>
				</tr>
				</c:forEach>
				
			</tbody>
		</table>
		
		<a href="/add" class="btn btn-secondary">Add Pizza</a>
	</div>	
</body>
</html>