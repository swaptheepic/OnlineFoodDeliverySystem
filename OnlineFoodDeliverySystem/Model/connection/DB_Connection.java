package connection;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class DB_Connection {

	public static void main(String[] args) {
		DB_Connection obj_DB_Connection = new DB_Connection();
		System.out.println(obj_DB_Connection.get_connection());
	}

	public static Connection get_connection() {

		Connection connection = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ofd_db", "root", "root");
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}
	public static String get_connection_test() {

		Connection connection1 = null;
		String success =null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ofd_db", "root", "root");
			success ="CONNECTION SUCCESS";
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return success;
	}

}
