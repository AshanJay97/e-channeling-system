<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
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
<!DOCTYPE html>
<html>
<center>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>
<h1>Doctor list</h1>
<table border="1">
<tr>
<td>d Id</td>
<td>docotr Namee</td>
<td>special</td>

<td>Action</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from doctor";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("d_id") %></td>
<td><%=resultSet.getString("dname") %></td>
<td><%=resultSet.getString("dspecial") %></td>

<td><a href="doc_update_controller.jsp?d_id=<%=resultSet.getString("d_id") %>"><button type="button" class="update">update</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</center>
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
}</style>
</html>