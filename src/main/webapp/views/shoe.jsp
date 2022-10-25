<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@page import="com.example.entities.ShoeFactory"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Selected Item</title>
</head>
<body>
	<%
	ShoeFactory s = (ShoeFactory) request.getAttribute("shoe");
	request.getSession().setAttribute("toBeAdded", s);
	%>

	<table border="2" style="width: 50%" class="table table-striped table-hover">
		<tr>
			<th>Name</th>
			<th>Price</th>
		</tr>
		<tr>
			<td><%=s.getShoeName()%></td>
			<td><%=s.getShoePrice()%></td>
		</tr>
	</table>
	<br>
	<form action="addCart">
		<input type="submit" value="ADD TO CART" class="btn btn-success">
	</form>

</body>
</html>