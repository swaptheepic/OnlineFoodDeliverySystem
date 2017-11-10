package TestCases;

public class Login_Testing {
	public long validate_user(String username) {
		
		if(username.length() > 0) {
			return 1;
		}
		else {
			return 0;
		}
				
		}
	}

