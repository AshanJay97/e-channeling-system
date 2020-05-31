<%@page import="java.util.Iterator"%>
<%@page import="common.doctor_bean"%>
<%@page import="java.util.List"%>
<%@page import="crudop.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert values</title>
</head>
<body>
	
	<center>
	<h1>Insert Docotr details here</h1>
	<div class ="doctor">
		<form action="controller/insert_controller.jsp" id="doctor">
		
			Doctor id:<input type="text" name="d_id" placeholder="ex-d101" required><br>
			Doctor name:<input type="text" name="dname" placeholder="dr.kavindu" required><br>
			Specialization:<input type="text" name="dspecial" placeholder="dermatology" required><br>
			
			<input type="submit" value="insert">
			

		</form>
		</div>
		<hr>
		
		
	</center>
</body>
<style>
body{
	
    background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
    
}
.doctor{
	
	margin:50px 400px;
}
#doctor{
	width: 50%;
	background-color:#E0FFFF;
	opacity:1;
	padding: 50px 0px;
}

.doctor input[type="submit"]
{
   background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.doctor input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}
a:link, a:visited {
  background-color: #4CAF50;
  color: white;
  padding: 15px 25px 25px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;


</style>
</html>