<%@page import="java.util.Iterator"%>
<%@page import="common.contact_bean"%>
<%@page import="java.util.List"%>
<%@page import="crudop.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Write us</title>
</head>
<body>
	<h1>Contact us</h1>
	<h2>We are always ready to serve you!</h2>
		<div class ="contactUs">
		<form action="controller/contactUs_controller.jsp" id="contactUs">
		
			name:<input type="text" class="form-control" name="c_Name" placeholder="john" required><br>
			email:<input type="email" class="form-control" name="c_email" placeholder="john@mail.com" required><br>
			content:<input type="text" class="form-control" name="c_message" placeholder="hello!" required><br>
			
			<input type="submit" value="insert">
			

		</form>
		</div>
		<hr>
		<a href="index.html">Back to home</a><br>
		
		
	</center>
</body>
<style>
body{
    margin: 0;
    padding: 0;
    text-align: center;
     background: -webkit-linear-gradient(left, #25c481, #25b7c4);
	background: linear-gradient(to right, #25c481, #25b7c4);
	background-size: cover;
    background-position: center;
    font-family: sans-serif;
}

/*.contactUs
{
    margin-top: 100px;
    color: black;
    text-transform: uppercase;
    transition: all 4s ease-in-out;
    
}*/
.contactUs h1{
    font-size: 32px;
    line-height: 10px;
}
.contact-title h2
{
    font-size: 16px;
}


.form-control
{
    width: 600px;
    background: transparent;
    border: none;
    outline: none;
    border-bottom: 1px solid gray;
    color: black;
    font font-size: 18px;
    margin-bottom: 16px;
}

input
{
    height: 45px;
}

.contactUs input[type="submit"]
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
.contactUs input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}

</style>
</html>