<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>rsvp</title>
</head>
<body>
	
		<form method="post" action="/add-rsvp">
			<label>Name</label> <input type="text" required name="name">
			<label>Comment</label> <input type="text" required name="comment">
			<input type="submit" value="submit" />
		</form>
	
</body>
</html>