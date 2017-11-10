package Selinium_testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class restaurants_test {
	public static void main(String[] args) throws Exception {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://localhost:8080/OnlineFoodDeliverySystem/restaurants.jsp");
		driver.manage().window().maximize();
		//driver.navigate().to("http://localhost:8080/OnlineFoodDeliverySystem/res_1.jsp");
		String url = driver.getCurrentUrl();
		if (url.equals("http://localhost:8080")) {
			System.out.println("Entry into Restaurant  sucessfully");
		} else {
			System.out.println("Entry into Restaurant  unsucessfully");
		}
		//forwards one step ahead into any of restaurants.
		driver.navigate().forward();
		driver.findElement(By.partialLinkText("Logout")).click();
		Thread.sleep(1000);
		driver.findElement(By.xpath("//*[@id=\"templatemo_menu_section\"]/ul/form/input")).submit();
		/// html/body/div[2]/form/div[2]/button
		driver.manage().window().maximize();
		driver.close();
	}

}
