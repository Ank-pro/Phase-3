<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>

<style>
h1 {text-align: center;}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
body {
  background-color: lightblue;
}
</style>

</head>
<body>

<u><h1>Welcome to Sporty Shoes</h1></u>
<div style = "position:relative; left:80px; top:2px;">  
<u><h2>Select your role</h2><br></u>
</div>

<form action="customer">

<div style = "position:relative; left:80px; top:2px;">  

<input class="btn btn-primary" type="submit" value="Customer"><br><br>

</div>
</form>

<form action="admin">

<div style = "position:relative; left:80px; top:2px;">  

<input class="btn btn-primary" type="submit" value="Admin"><br><br>

</div>
</form>



</body>
</html>