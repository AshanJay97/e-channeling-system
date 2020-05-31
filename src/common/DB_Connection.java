package common;

import java.sql.*;

public class DB_Connection {

	
	
	public Connection get_db_connection() {
	
		Connection connection=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3303/test", "root", "root");
		Statement stmnt = connection.createStatement(); 
		
		
		
		}catch(Exception e) {
			System.out.println(e);
		}
		return connection;
	}
	
	
}
