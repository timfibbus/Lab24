<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="styley.css" />
<title>Home</title>
</head>
<body>
	<div>
		<div>
		<div>
		<h1>Search For Parties</h1>
		
	<form class="form-inline" action="/party">
	  <label class="sr-only" for="inlineFormInputName2">Pizza Type</label>
	  <input name="name" type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Party Name">
	   
	   <label class="sr-only" for="inlineFormInputName2">Pizza Type</label>
	  <input name="description" type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Party Date">
	
	  <div class="form-check mb-2 mr-sm-2">
	    <input name="onlyShowAvailable" value="true" class="form-check-input" type="checkbox" id="inlineFormCheck">
	    <label class="form-check-label" for="inlineFormCheck">
	      
	    </label>
	  </div>
	  <button type="submit" class="btn btn-primary mb-2">Submit</button> 
	</form>
	</div>
		<div>
		<form method="post" action="/votes">
		<h2>Happy Party I Love You!</h2>
		<table class="table">
			<thead>
				<tr>
					<th>#</th><th>Pizza Type</th><th>Description</th><th>Votes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="party" items="${partyz }">
				
				<tr>				
					<td><a href="<c:url value="/party/${party.id}" />">
						${party.id} </a></td>
					<td><a href="/detail?id=${party.id}">${party.name}</a></td>
					<td>${party.description }</td>
					<td>${party.votes }</td>
					<td>
					<a href="
					<c:url value="/votes/${party.id}" />
					" class="btn btn-secondary">RSVP!</a> </td>
				</tr>
				</c:forEach>
				
			</tbody>
		</table>
		</form>
		<a href="/add" class="btn btn-secondary">Add Party</a>
		</div>
	</div>
	</div>		
</body>
</html>