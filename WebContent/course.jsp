<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.user.Course"%>
<!DOCTYPE html> <!--  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html lang="en">
<head>
<link rel="stylesheet" 
	href="./styles/bootstrap.min.css">
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
	<form action="SchedulerServlet" method="post">
		Professors
		<select class="form-control" name="professor">
			<option value="John White"> John White </option>
			<option value="Michael Brown"> Michael Brown </option>
			<option value="Tina Doe"> Tna Doe </option>
			<option value="Emily Winter"> Emily Winter </option>
			<option value="Christine Summer"> Christine Summer </option>
		</select>
		<br>
		<div class="weekDays-selector">
			<input type="checkbox" name="weekdays" value="MONDAY" id="weekday-mon" class="weekday"/>
			<label for="weekday-mon">M</label>
			<input type="checkbox" name="weekdays" value="TUESDAY" id="weekday-tue" class="weekday"/>
			<label for="weekday-tue">T</label>
			<input type="checkbox" name="weekdays" value="WEDNESDAY" id="weekday-wed" class="weekday"/>
			<label for="weekday-wed">W</label>
			<input type="checkbox" name="weekdays" value="THURSDAY" id="weekday-thu" class="weekday"/>
			<label for="weekday-thu">R</label>
			<input type="checkbox" name="weekdays" value="FRIDAY" id="weekday-fri" class="weekday"/>
			<label for="weekday-fri">F</label>
		</div>
		Courses
		<select class="courseName" name="courseName">
			<option value="Java"> Java </option>
			<option value="C#"> C# </option>
			<option value="C++"> C++ </option>
			<option value="C"> C </option>
			<option value="Ruby on Rails"> Ruby on Rails </option>
			<option value="Php"> Php </option>
			<option value="SQL"> SQL </option>
			<option value="JavaScript"> JavaScript </option>			
		</select>
		<div class="roomNumber-selector">
			<input type="text" name="roomNumber" value="roomNumber" id="roomNumber" class="roomNumber"/>
			<label for="roomNumber">Room Number</label>
			<input type="text" name="time" value="time" id="time" class="time"/>
			<label for="time">Time</label>
		</div>
		<br>
		<br>
		<p>Date:<input type="text" name="datepicker" id="datepicker"></p>
		<button type="submit">add course</button>
	</form>
	
	<c:if test="${courses != null}">
	<table class="table table-hover">
			<tr>
				<th>Course Name</th>
				<th>Start Date</th>
				<th>Professor</th>
				<th>Room Number</th>
				<th>Days of the Week</th>
				<th>Time</th>
		<c:forEach var="course" items="${courses}">
			<tr>
				<td><c:out value="${course.courseName}"/></td>
				<td><c:out value="${course.startDate}"/></td>		
				<td><c:out value="${course.professor}"/></td>
				<td><c:out value="${course.roomNumber}"/></td>
				<td><c:out value="${course.occurances}"/></td>
				<td><c:out value="${course.time}"/></td>
			</tr>
		</c:forEach>
	</table>
	</c:if>
		
	</div>
</div>
</body>
</html>