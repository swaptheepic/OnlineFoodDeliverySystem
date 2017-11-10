package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

import com.code.Registration_testing;

public class Test_RPhno_Failure {

	@Test
	public void test_ph_1() {
		Registration_testing reg_test = new Registration_testing();
		assertEquals(1, reg_test.phone_number("9921"));
	}

}
