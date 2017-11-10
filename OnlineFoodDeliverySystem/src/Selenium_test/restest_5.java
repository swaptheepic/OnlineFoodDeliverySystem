package Selinium_testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class restest_5 {
	public static void main(String[] args) throws Exception {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://http://localhost:8080/OnlineFoodDeliverySystem/res_5.jsp");
		driver.manage().window().maximize();
		driver.findElement(By.linkText("submit")).click();
		Thread.sleep(1000);
		driver.findElement(
				By.xpath("//*[@id=\"submit\"]"))
				.submit();
		driver.manage().window().maximize();
		String url = driver.getCurrentUrl();

		if (url.equals("http://localhost:8080/OnlineFoodDeliverySystem/res_5.jsp?uname=rest5&pwd=rest5")) {
			System.out.println("Admin Login Successful - Passed");
		} else {
			System.out.println("Admin Login Unsuccessful - Failed");
		}
		driver.navigate().to("http://localhost:8080/OnlineFoodDeliverySystem/in.jsp");
		driver.navigate().back();
		driver.close();
	}	
}
