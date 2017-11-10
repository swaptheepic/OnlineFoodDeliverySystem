package Selinium_testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class custreq_test {
	public static void main(String[] args) throws Exception {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://localhost:8080/OnlineFoodDeliverySystem/CustRequest.jsp");
		driver.manage().window().maximize();
		driver.findElement(By.linkText("Home")).click();
		driver.findElement(By.linkText("Logout")).click();
		// driver.findElements(By.tagName("a")).click();
		Thread.sleep(1000);
		driver.findElement(By.xpath("//*[@id=\"templatemo_menu_section\"]/ul/li[2]/a")).submit();
		driver.manage().window().maximize();
		String url = driver.getCurrentUrl();

		if (url.equals("http://localhost:8080/OnlineFoodDeliverySystem/CustRequest.jsp")) {
			System.out.println("Passed");
		} else {
			System.out.println("Failed");
		}
		driver.close();
	}

}
