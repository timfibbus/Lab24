<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Home</title>
</head>
<body>
		
		<div class="container">
		<h1>Pizzas For Parties</h1>
		
	<form class="form-inline" action="/vote">
	  <label class="sr-only" for="inlineFormInputName2">Pizza Type</label>
	  <input name="neededCapacity" type="number" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Needed Capacity">
	   
	   <label class="sr-only" for="inlineFormInputName2">Pizza Type</label>
	  <input name="neededCapacity" type="number" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Needed Capacity">
	
	  <div class="form-check mb-2 mr-sm-2">
	    <input name="onlyShowAvailable" value="true" class="form-check-input" type="checkbox" id="inlineFormCheck">
	    <label class="form-check-label" for="inlineFormCheck">
	      Only show available
	    </label>
	  </div>
	
	  <button type="submit" class="btn btn-primary mb-2">Submit</button>
	</form>
		
		<table class="table">
			<thead>
				<tr>
					<th>Pizza Type</th><th>Description</th><th>Votes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pizza" items="${pizza }">
				<tr>
					<td><a href="/detail?id=${pizza.id}">${pizza.name}</a></td>
					<td>${pizza.description }</td>
					<td>${pizza.votes }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/rooms/add" class="btn btn-secondary">Add Room</a>
	</div>	
		
		
</body>
</html>