<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@page import="java.util.List" %>
    <%@page import="com.example.entities.PurchaseReport" %>
<!DOCTYPE html>
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>All Purchases</title>
</head>
<body>
<style>
body {
  background-color: lightgreen;
}
</style>
<%
	List<PurchaseReport> list = (List<PurchaseReport>) request.getAttribute("purchases");
	%>
	<div class="col-md-3 offset-md-3">
		<table class="table table-success table-striped">
			<tr>
				<th><u>Account Name</u></th>
				<th><u>Amount</u></th>
				<th><u>Date</u></th>
			</tr>
			<%
			for (PurchaseReport c : list) {
			%>
			<tr>
				<td><%=c.getName()%></td>					
				<td><%=c.getAmount()%></td>						
				<td><%=c.getDate()%></td>
			</tr>
		</table>
		<%
		}
		%>
	</div>
</body>
</html>