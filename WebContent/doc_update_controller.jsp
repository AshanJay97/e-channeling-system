<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("d_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3303/";
String database = "test";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql =("select * from doctor where d_id='" + id+"'");
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update doctor details</h1>
<form method="post" action="doc_update_proscess.jsp">
<input type="hidden" name="d_id" value="<%=resultSet.getString("d_id") %>">
<br>
Doctor Id:<br>
<input type="text" name="d_id" value="<%=resultSet.getString("d_id") %>">
<br>
Doctor name:<br>
<input type="text" name="dname" value="<%=resultSet.getString("dname") %>">
<br>
Doctor special:<br>
<input type="text" name="dspecial" value="<%=resultSet.getString("dspecial") %>">
<br>

<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
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
</style>
</html>