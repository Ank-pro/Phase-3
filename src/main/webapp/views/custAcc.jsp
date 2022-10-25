<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<style>
h1 {
	text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<title>Shoes</title>
</head>
<body bgcolor="grey">

	<u><h1>Select your shoe</h1></u>
	<%
	List<ShoeFactory> list = (List<ShoeFactory>) request.getAttribute("shoes");
	%>
	<table border="3" style="width: 100%"
		class="table table-success table-striped">
		<tr>
			<th><u>Category</u></th>
			<th><u>Name</u></th>
			<th><u>Price</u></th>
			<th><u>Checkout</u></th>
		</tr>
		<%
		for (ShoeFactory e : list) {
		%>
		<tr>
			<td><strong><%=e.getShoeCategory()%></strong></td>
			<td><%=e.getShoeName()%> <%
 request.getSession().setAttribute("shoe", e);
 %></td>
			<td><%=e.getShoePrice()%></td>
			<td><form action="select">
					<input type="submit" value="View">
				</form></td>
		</tr>
		<%
		}
		%>
	</table>


</body>
</html>