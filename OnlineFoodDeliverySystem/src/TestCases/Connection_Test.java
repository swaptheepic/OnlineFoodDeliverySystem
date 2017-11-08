package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

import connection.DB_Connection;

public class Connection_Test {

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	public void get_connection_test() {
		
		DB_Connection db = new DB_Connection();
		assertEquals("CONNECTION SUCCESSFUL", db.get_connection_test());
	}
}
