<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="styley.css" />
<title>Home</title>
</head>
<body>

	<div>
		<div>
			<div>
				<h1>Search For Parties</h1>
				<form method="post">
					<label class="sr-only" for="inlineFormInputName2">Party
						Name</label> <input name="name" type="text"
						class="form-control mb-2 mr-sm-2" id="inlineFormInputName2"
						placeholder="Party Name">
					<button type="submit" class="btn btn-primary mb-2">Submit</button>
				</form>
			</div>
			<div>

				<h2>Happy Party I Love You!</h2>
				
					<table class="table">
					
						<thead>
							<tr>
								<th>#</th>
								<th>name</th>
								<th>date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="party" items="${partyz }">
							
								<tr>

									<td><a href="<c:url value="/detail/${party.id}" />">
											${party.id} </a></td>

									<td><a href="/pizza">${party.name}</a></td>
									<td>${party.date }</td>
		
									<td><a href="<c:url value="/rsvp/${party.id}" />" class="btn btn-secondary">RSVP!</a></td>
								
								</tr>
							
							</c:forEach>
					</tbody>	
					</table>
				
				<a href="/add-party" class="btn btn-secondary">Add Party</a>
			</div>
		</div>
	</div>

</body>
</html>