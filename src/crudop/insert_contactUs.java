package crudop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.DB_Connection;

public class insert_contactUs {

		public void insert_contactUs(String c_Name,String c_email,String c_message) {
			
			DB_Connection obj_DB_Connection =new DB_Connection();
			Connection connection=obj_DB_Connection.get_db_connection();
		
			PreparedStatement ps=null;
			
			
			try {
				String query="insert into contact_us(c_Name,c_email,c_message)values(?,?,?)";
				
				ps =connection.prepareStatement(query);
				
				ps.setString(1, c_Name);
				ps.setString(2, c_email);
				ps.setString(3, c_message);
				
				ps.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
}
