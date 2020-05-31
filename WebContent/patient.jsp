<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apointment</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/apointment.css">
</head>
<body>

<center>
	<h1>Insert Apointment details here</h1>
		<div class ="apointment">
		
		<form action="controller/patient_controller.jsp" id="apointment">
		
			Patient name:<input type="text" class="form-control" name="p_name" placeholder="jhon" required><br>
			Patient age:<input type="text" class="form-control" name="p_age" placeholder="43" required><br>
			Date of Birth:<input type="text" class="form-control" name="p_dob" placeholder="12.20.1900" required><br>
			Gender :<input type="text" class="form-control"  name="p_gender" placeholder="male" required><br>
			Address:<input type="text" class="form-control"  name="p_address" placeholder="colombo,srilanka" required><br>
			Email:<input type="email" class="form-control" name="p_email" placeholder="john@mail.com" ><br>
			Phone number:<input type="text" class="form-control"  name="p_phone" placeholder="0123456789" required><br>
			Doctor name:<input type="text" class="form-control" name="p_dname" placeholder="dr.john" required><br>
			Patient nic:<input type="text" class="form-control" name="p_nic" placeholder="12345689V" required><br>
			<input type="submit" value="insert" >
			

		</form>
	
		</div>
		<hr>
		<a href="doclist.jsp">go to doctor list</a>
		
		
	
</center>
</body>
<style>
body{
	
    background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
    
}
.apointment{
	
	margin:100px 500px;
}


.apointment input[type="submit"]
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
.apointment input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
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

</style>
</html>