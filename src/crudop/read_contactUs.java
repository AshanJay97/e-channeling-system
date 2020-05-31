package crudop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.contact_bean;


public class read_contactUs {

	public List<contact_bean> get_value() {
		
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection=obj_DB_Connection.get_db_connection();
	
		PreparedStatement ps=null;
		
		String query="select * from contact_us";
		ResultSet rs=null;
		
		List<contact_bean> list =new ArrayList<contact_bean>();
		try {
			ps=connection.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next()){
				
				contact_bean obj_contact_bean = new contact_bean();
				
				
				
				obj_contact_bean.setC_Name(rs.getNString("c_Name"));
				obj_contact_bean.setC_email(rs.getNString("c_email"));
				obj_contact_bean.setC_message(rs.getNString("c_message"));
				
				
				list.add(obj_contact_bean);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
		
	}
	
}
