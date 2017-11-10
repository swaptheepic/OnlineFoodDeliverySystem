package TestCases;

public class Restaurant_Testing {
	public long test_menu(String menuitem) {
		if(menuitem.length() > 1) {
			
			return 1;
		}
		else
		{
			return 0;
		}
		
	}
	public long test_quantity(String quantity) {
		int q = Integer.parseInt(quantity);
		if((quantity.length() > 1) && (q < 20)) {
			return 1;
		}
		else {
			return 0;
		}
	}
	
	
}
