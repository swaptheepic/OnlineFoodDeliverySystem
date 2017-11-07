package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

import connection.DB_Connection;

public class DBConnectionTest {

	@Test
	public void test() {
		DB_Connection connection = new DB_Connection();
		connection = DB_Connection.get_connection();
		assertEquals(connection,con );
		fail("Not yet implemented");
	}

}
