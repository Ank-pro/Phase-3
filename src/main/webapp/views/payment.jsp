<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Payment</title>
<style>
body {
  background-color: lightpink;
}
</style>
</head>
<body>

<div class="col-md-4 offset-md-3">

<form action="pay">

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">Name</label>
  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Name" name="Cname">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Account Number</label>
  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Account Number">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput2" class="form-label">Amount</label>
  <input type="number" class="form-control" id="formGroupExampleInput2" placeholder="Amount" name="Camount">
</div>

<input type="submit" value="PAY" class="btn btn-primary">
</form>

</div>

</body>
</html>