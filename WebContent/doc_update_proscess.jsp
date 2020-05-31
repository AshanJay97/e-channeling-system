<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3303/test";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("d_id");
String dname=request.getParameter("dname");
String dspecial=request.getParameter("dspecial");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		String sql=("Update doctor set d_id=?,dname=?,dspecial=? where d_id='" + id+"'");
		ps = con.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2, dname);
		ps.setString(3, dspecial);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>