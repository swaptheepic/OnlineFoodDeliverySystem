package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

public class Test_RFields_Failure {

	@Test
	public void test_regestration_fields() {
		Registration_testing reg_test = new Registration_testing();
		assertEquals(1, reg_test.field_test("", "", "", "", ""));
	}


}
