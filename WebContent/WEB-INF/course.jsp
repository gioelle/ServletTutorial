<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.user.Course"%>
<!DOCTYPE html> <!--  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html lang="en">
<head>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Courses</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(function(){
$("#datepicker").datepicker();	
});
</script>
<style type="test/css">
.weekDays-selector input{
display:none!important;
}
.weekDays-selector input[type=checkbox] + label{
display: inline-block;
border-radius: 6px;
background: #dddddd;
height: 40px;
width: 30px;
margin-rigth: 3px;
line-height: 40px;
text-align: center;
cursor: pointer;
}
.weekDays-selector input[type=checkbox] + label{
background: #2AD705;
color: #ffffff;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class = "container">
	<div class = "navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
			<span class="sr-only"> Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#"> Project Name </a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
		<ul class="nav nacbar-nav">
			<li class="active"><a href="#"> Home </a></li>
			<li><a href="#about">About</a></li>
			<li><a href="#contact">Contact</a></li>
		</ul>
	</div>
	</div>
</nav>
	
<div class="container">
	<div style="margin-top: 100px"></div>
	<div style="width: 300px">
	<br><br>
	<form>
		Professors
		<select class="form-control">
			<option value="John White"> John White </option>
			<option value="Michael Brown"> Michael Brown </option>
			<option value="Tina Doe"> Tna Doe </option>
			<option value="Emily Winter"> Emily Winter </option>
			<option value="Christine Summer"> Christine Summer </option>
		</select>
		<br>
		<div class="weekDays-selector">
			<input type="checkbox" name="weekday" value="MONDAY" id="weekday-mon" class="weekday"/>
			<label for="weekday-mon">M</label>
			<input type="checkbox" name="weekday" value="TUESDAY" id="weekday-tue" class="weekday"/>
			<label for="weekday-mon">T</label>
			<input type="checkbox" name="weekday" value="WEDNESDAY" id="weekday-wed" class="weekday"/>
			<label for="weekday-mon">W</label>
			<input type="checkbox" name="weekday" value="THURSDAY" id="weekday-thu" class="weekday"/>
			<label for="weekday-mon">R</label>
			<input type="checkbox" name="weekday" value="FRIDAY" id="weekday-fri" class="weekday"/>
			<label for="weekday-mon">F</label>
		</div>
		<br>
		<p>Date:<input type="text" id="datepicker"></p>
		<button type="button">add course</button>
	</form>
	</div>
</div>

</body>



</html>