package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

public class Test_Res_Quantity {

	@Test
	public void test() {
		Restaurant_Testing res_test = new  Restaurant_Testing();
		assertNotNull(res_test);
		assertEquals(1, res_test.test_quantity("19"));
	}

}
