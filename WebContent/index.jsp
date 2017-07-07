<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD H	TML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim Academy</title>
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>

	<form class="container" method="post" action="RegistrationServlet">
<div class="form-group">
	<label for="firstName">First Name</label>
	<input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
</div>
<div class="form-group">
	<label for="lastName">Last Name</label>
	<input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name">
</div>
<div class="form-group">
	<label for="email">Email Address</label>
	<input type="email" class="form-control" name="email" id="exampleInputEmail" placeholder="Email">
</div>
<div class="form-group">
	<label for="password">Password</label>
	<input type="password" class="form-control" name="password" id="password" placeholder="Password">
</div>

<br>Address<br>
<div class="form-group">
	<label for="street">Street</label>
	<input type="text" class="form-control" name="street" id="street" placeholder="Street">
</div>
<div class="form-group">
	<label for="city">City</label>
	<input type="text" class="form-control" name="city" id="city" placeholder="City">
</div>
<div class="form-group">
	<label for="state">State</label>
	<input type="text" class="form-control" name="state" id="state" placeholder="State">
</div>
<div class="form-group">
	<label for="zipCode">Zip Code</label>
	<input type="text" class="form-control" name="zipCode" id="zipCode" placeholder="Zip Code">
</div>

<div class="checkbox">
	<label>
		<input type="checkbox">Check me out
	</label>
</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form>
	
	
</body>
</html>