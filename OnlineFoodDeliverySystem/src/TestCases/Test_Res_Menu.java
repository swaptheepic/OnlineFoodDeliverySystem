package TestCases;

import static org.junit.Assert.*;

import org.junit.Test;

public class Test_Res_Menu {

	@Test
	public void test() {
		Restaurant_Testing resTest = new Restaurant_Testing();
		assertNotNull(resTest);
		assertEquals(1, resTest.test_menu("TIkka"));
		assertNotEquals(0,resTest.test_menu(""));
	}

}
