<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.example.entities.ShoeFactory"%>
<%@page import="java.util.List"%>
<%@page isELIgnored="false"%>
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
<title>Cart</title>
</head>
<body>
	<u><h1>Cart</h1></u>
	<% ShoeFactory list = (ShoeFactory) request.getAttribute("cartShoe");  %>
	<table border="2" style="width:60%" class="table table-striped table-hover">
      <tr>
      <th>Name</th>
      <th>Price</th>
      </tr>
      <tr>
      <td><%=list.getShoeName() %></td>
      <td><%=list.getShoePrice() %></td>
      </tr>
	</table><br><br>
	<form action="buyProduct">

		<input type="submit" value="BUY" class="btn btn-success">

	</form>
</body>
</html>