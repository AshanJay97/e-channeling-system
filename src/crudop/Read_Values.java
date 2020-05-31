package crudop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.doctor_bean;

public class Read_Values {
	
	
	
	
	
	public List<doctor_bean> get_value() {
		
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection=obj_DB_Connection.get_db_connection();
	
		PreparedStatement ps=null;
		
		String query="select * from doctor";
		ResultSet rs=null;
		
		List<doctor_bean> list =new ArrayList<doctor_bean>();
		try {
			ps=connection.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next()){
				
				doctor_bean obj_doctor_bean = new doctor_bean();
				
				
				
				obj_doctor_bean.setD_id(rs.getString("d_id"));
				obj_doctor_bean.setDname(rs.getNString("dname"));
				obj_doctor_bean.setDspecial(rs.getString("dspecial"));;
				
				list.add(obj_doctor_bean);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
		
	}

}
