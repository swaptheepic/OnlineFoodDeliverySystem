package TestCases;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ Test_RFields_Failure.class, Test_RFields_Success.class, Test_RPass_Failure.class,
		Test_RPass_Success.class, Test_RPhno_Failure.class, Test_RPhno_Success.class })
public class RegistrationTest {

}
