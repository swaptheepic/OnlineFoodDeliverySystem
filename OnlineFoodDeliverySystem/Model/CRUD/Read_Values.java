package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.User_Bean;
import connection.DB_Connection;

public class Read_Values {

	public List<User_Bean> get_values() {
		DB_Connection obj_DB_Connection = new DB_Connection();
		Connection connection = obj_DB_Connection.get_connection();
		
		
		PreparedStatement ps =null;
		ResultSet rs = null;
		
		List<User_Bean> list = new ArrayList<User_Bean>();
		
		try {
			String query = "SELECT * from tasks";
			ps = connection.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				User_Bean obj_user= new User_Bean();
				System.out.println(rs.getString("ID"));
				System.out.println(rs.getString("Name"));
				
				obj_user.setID(rs.getString("ID"));
				obj_user.setName(rs.getString("Name"));
				
				list.add(obj_user);
			}
			
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
}
