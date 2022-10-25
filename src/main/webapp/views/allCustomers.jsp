<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@page import="com.example.entities.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>User List</title>

</head>
<body>

	<%
	List<CustomerLog> list = (List<CustomerLog>) request.getAttribute("allCustomers");
	%>
	<div class="col-md-3 offset-md-3">
		<table class="table table-dark table-striped">
			<tr>
				<th><u>Users</u></th>
			</tr>
			<%
			for (CustomerLog c : list) {
			%>
			<tr>
				<td><%=c.getEmail()%></td>
			</tr>
		</table>
		<%
		}
		%>
	</div>
	
</body>
</html>