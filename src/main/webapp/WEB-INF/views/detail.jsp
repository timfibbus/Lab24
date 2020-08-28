<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h2 value = "RSVPs for ${party.name }"></h2>
				<table class="table">
			<thead>
				<tr>
					<th>#</th><th>name</th><th>comment</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="rsvp" items="${rsvps }">
			
				<tr>				
					<td>${rsvp.id}"</td>
					<td><a href="/pizza">${rsvp.name}</a></td>
					<td>${rsvp.comment }</td>
					<td>
					<a href="
					<c:url value="/detail/${party.id }" />
					" class="btn btn-secondary">RSVP!</a> </td>
				</tr>
			
				</c:forEach>
				
			</tbody>
		</table>

</body>
</html>