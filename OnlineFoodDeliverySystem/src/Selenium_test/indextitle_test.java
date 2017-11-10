package Selinium_testing;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class indextitle_test {
	public static void main(String[] args) {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		String baseUrl = "http://localhost:8080/OnlineFoodDeliverySystem/index.jsp";
		String expectedTitle = "ONLINE FOOD DELIVERY SYSTEM";
		String actualTitle = driver.getTitle();
		driver.get(baseUrl);
		driver.manage().window().maximize();

		if (expectedTitle.equals(actualTitle)) {
			System.out.println("Verification Successful - The correct title is displayed on the web page.");
		} else {
			System.out.println("Verification Failed - An incorrect title is displayed on the web page.");
		}
		driver.close();
	}
}
