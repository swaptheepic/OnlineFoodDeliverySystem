package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

import com.code.Registration_testing;

public class Test_RFields_Success {

	@Test
	public void test_regestration_fields() {
		Registration_testing reg_test = new Registration_testing();
		assertEquals(1, reg_test.field_test("swapnil", "swapnil@123", "swapnil", "9921092938", "kothrud"));
	}

}
