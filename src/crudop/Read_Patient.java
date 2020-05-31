package crudop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;

import common.patient_bean;

public class Read_Patient {
	
	public List<patient_bean> get_value() {
		
		DB_Connection obj_DB_Connection =new DB_Connection();
		Connection connection=obj_DB_Connection.get_db_connection();
	
		PreparedStatement ps=null;
		
		String query="select * from patient";
		ResultSet rs=null;
		
		List<patient_bean> list =new ArrayList<patient_bean>();
		try {
			ps=connection.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next()){
				
				patient_bean obj_patient_bean = new patient_bean();
				
				
				obj_patient_bean.setP_name(rs.getString("p_name"));
				obj_patient_bean.setP_age(rs.getString("p_age"));
				obj_patient_bean.setP_dob(rs.getString("p_dob"));
				obj_patient_bean.setP_gender(rs.getString("p_gender"));
				obj_patient_bean.setP_address(rs.getString("p_address"));
				obj_patient_bean.setP_email(rs.getString("p_email"));
				obj_patient_bean.setP_phone(rs.getString("p_phone"));
				obj_patient_bean.setP_phone(rs.getString("p_dname"));
				obj_patient_bean.setP_phone(rs.getString("p_nic"));
				
				list.add(obj_patient_bean);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}
}
