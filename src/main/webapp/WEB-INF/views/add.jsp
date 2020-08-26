<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<title>PEEtZA</title>
</head>

	</head>
<body>


	<div class="container">
		<h2>Create Pizza</h2>

		<form method="post">
			<label>Name</label> <input type="text" required name="name">
			<label>Description</label> <input type="text" required name="description">
			<label><input type="number" name="votes" /></label>
			<div>
				<label>Party</label> 
				<select name="party">
					<c:forEach var="party" items="${parties}">

						<option name="party_id" value="${party.id}">
						<c:out value="${party.name}" />
						</option>

					</c:forEach>
				</select>
			</div>

			<button type="submit" class="btn btn-warning">Create</button>

		</form>
		<a href="/">Cancel</a>

	</div>
</body>
</html>