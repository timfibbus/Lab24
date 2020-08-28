<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="container">
		<h2>Create Party</h2>

		<form method="post" action="/add-party">
			<label>Name</label> <input type="text" required name="name">
			<label>Date</label> <input type="date" required name="date">

			<button type="submit" class="btn btn-warning">Create</button>

		</form>
		<a href="/">Cancel</a>

	</div>
</body>
</html>