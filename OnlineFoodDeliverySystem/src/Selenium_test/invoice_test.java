package Selinium_testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class invoice_test {
	public static void main (String[] args)throws Exception {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://localhost:8080/OnlineFoodDeliverySystem/in.jsp");
		driver.manage().window().maximize();
		driver.findElement(By.linkText("Logout")).click();
		Thread.sleep(1000);
		driver.findElement(By.xpath("//*[@id=\"header\"]/align=\"right\"/form/input")).submit();
		driver.manage().window().maximize();
		String url = driver.getCurrentUrl();
		if (url.equals("http://localhost:8080/")){
		System.out.println("Test case - Passed");
		}
		else {
		System.out.println("Test case - Failed");
		}
		driver.close();
	}
}
