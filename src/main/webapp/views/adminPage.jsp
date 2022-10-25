<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.center {
  text-align: center;

}
</style>
<style>
body {
  background-color: lightgreen;
}
</style>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body>
<div class="center">
<u><h1>Welcome Admin</h1></u>
</div>
<br><br>
<form action="allUsers">
<div style = "position:relative; left:250px; top:2px;">
<input type="submit" value="View Users" class="btn btn-info">
</div><br><br>
</form>

<form action="add">
<div style = "position:relative; left:250px; top:2px;">
<input type="submit" value="Add Product" class="btn btn-info">
</div><br><br>
</form>

<form action="showPurchases">
<div style = "position:relative; left:250px; top:2px;">
<input type="submit" value="Purchase Reports" class="btn btn-info">
</div><br><br>
</form>
</body>
</html>