<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin panel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
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
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">MEDCARE Admin section</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      
        <li><a href="dis_contactUs.jsp">View recieved Messages</a></li>
        <li><a href="patientlist.jsp">View Apointments</a></li>
        <li><a href="logout.jsp">log out</a></li>
     
</nav>
  

    <div class="col-sm-8 text-left"> 
      <h1>Welcome Admin!!!</h1>
      <p>Here you can manage your databases and all the other things in your System.</p><br>
       <p>Please use carefully and dont do anything wrong!!!!</p>
      <hr>
      <h3>Manage Doctors</h3>
      <a href="doclist.jsp">click to view doctors</a></p><br>
      <a href="insert.jsp">click to add doctors</a></p>
      <a href="doc_update.jsp">click to update doctor details</a></p>
	<a href="doc_view.jsp">click to delete doctors</a></p>

</body>
</html>
