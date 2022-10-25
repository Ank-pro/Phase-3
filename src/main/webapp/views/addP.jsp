<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Adding Product</title>
<style>
body {
  background-color: lightpink;
}
</style>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-3 offset-md-3">

<div class="mb-3">
<form action="addingProduct">
Category<input type="text" name="category">
</div>
<div class="mb-3">
Shoe Name<input type="text" name="shoeName">
</div>
<div class="mb-3">
Price<input type="number" name="price">
</div>
<input type="submit" value="Add" class="btn btn-success">
</form>
</div>
</div>
</div>
</body>
</html>