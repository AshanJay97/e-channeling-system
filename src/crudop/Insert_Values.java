package crudop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.DB_Connection;

public class Insert_Values {

	public void insert_values(String d_id,String dname,String dspecial) {
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection=obj_DB_Connection.get_db_connection();
	
		PreparedStatement ps=null;
		
		
		try {
			String query="insert into doctor(d_id,dname,dspecial)values(?,?,?)";
			
			ps =connection.prepareStatement(query);
			
			ps.setString(1, d_id);
			ps.setString(2, dname);
			ps.setString(3, dspecial);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
	
}
