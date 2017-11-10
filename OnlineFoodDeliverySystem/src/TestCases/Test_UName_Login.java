package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

public class Test_UName_Login {

	@Test
	public void test_username() {
		Login_Testing logtest = new Login_Testing();
		assertEquals(1, logtest.validate_user("Swapnil123"));
		assertNotNull(logtest);
	}

}
