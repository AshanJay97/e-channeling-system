package crudop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.DB_Connection;

public class Insert_Patient {

	public void insert_patient(String p_name,String p_age,String p_dob,String p_gender,String p_address,String p_email,String p_phone,String p_dname,String p_nic) {
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection=obj_DB_Connection.get_db_connection();
	
		PreparedStatement ps=null;
		
		
		try {
			String query="insert into patient(p_name,p_age,p_dob,p_gender,p_address,p_email,p_phone,p_dname,p_nic)values(?,?,?,?,?,?,?,?,?)";
			
			ps =connection.prepareStatement(query);
			
			ps.setString(1, p_name);
			ps.setString(2, p_age);
			ps.setString(3, p_dob);
			ps.setString(4, p_gender);
			ps.setString(5, p_address);
			ps.setString(6, p_email);
			ps.setString(7, p_phone);
			ps.setString(8, p_dname);
			ps.setString(9, p_nic);
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
	
}
