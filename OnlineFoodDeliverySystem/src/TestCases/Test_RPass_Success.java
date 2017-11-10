package TestCases;

import static org.junit.Assert.*;

import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.http.HttpServlet;

import org.junit.Test;

import com.code.LRegistration;

public class Test_RPass_Success extends  HttpServlet {

	@Test
	public void test_reg() {
		Registration_testing reg_test = new Registration_testing();
		assertEquals(1, reg_test.accept_reg("swapnil", "swapnil"));
	}
	
	

}
