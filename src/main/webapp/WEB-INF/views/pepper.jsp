<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>peps</title>
</head>
<body>
			<a href="/add-pep" class="btn btn-secondary">Add Pep</a>

			<table class="table">
			<thead>
				<tr>
					<th>pep name</th><th>scoville units</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="pep" items="${peps }">
				<tr>				
					<td><a href="/detail?id=${pep.id}">${pep.name}</a></td>
					<td>${pep.heat }</td>
				</tr>
				</c:forEach>	
			</tbody>
		</table>


</body>
</html>