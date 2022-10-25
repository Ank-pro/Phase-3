<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Customer Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
body {
  background-color: lightblue;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<form action="custSignIn">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Email
							address</label> <input type="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp" name="custEmail">
						<div id="emailHelp" class="form-text">We'll never share your
							email with anyone else.</div>
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Password</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1" name="custPass">
					</div>
					
					<input type="submit" class="btn btn-primary" value="SignIn">
					
				</form>
		        
		        <form action="custSignUp">
		        <div style = "position:relative; left:250px; top:2px;">  

						<input class="btn btn-primary" type="submit" value="SignUp"><br><br>

					</div>
		        </form>

			</div>
		</div>
	</div>

</body>
</html>