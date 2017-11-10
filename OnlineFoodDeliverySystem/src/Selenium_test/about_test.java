package Selinium_testing;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class about_test {
	public static void main(String[] args) {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://localhost:8080/OnlineFoodDeliverySystem/about.jsp");
		driver.manage().window().maximize();
		driver.navigate().to("http://localhost:8080/OnlineFoodDeliverySystem/index.jsp");
		// NAVIGATE BACK TO HOME PAGE
		driver.navigate().back();
		String url = driver.getCurrentUrl();

		if (url.equals("http://localhost:8080/")) {
			System.out.println("About US Passed");
		} else {
			System.out.println("About US Failed");
		}
		driver.close();
	}

}