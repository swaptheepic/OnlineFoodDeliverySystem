package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import connection.DB_Connection;

public class Insert_Values {
	
	public void insert_values(String Name) {
		DB_Connection obj_DB_Connection = new DB_Connection();
		Connection connection = obj_DB_Connection.get_connection();
		
		PreparedStatement ps =null;
		
		try {
			String query = "INSERT INTO tasks(Name) values (?)";
			ps = connection.prepareStatement(query);
			ps.setString(2, Name);
			
			ps.executeUpdate();
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}

}
 