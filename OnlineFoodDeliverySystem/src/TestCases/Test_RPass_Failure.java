package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

public class Test_RPass_Failure {
	@Test
	public void test_reg_1() {
		Registration_testing reg_test = new Registration_testing();
		assertEquals(1, reg_test.accept_reg("swapnil", "swap"));
	}

}
