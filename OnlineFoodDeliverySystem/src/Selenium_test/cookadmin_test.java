package Selinium_testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class cookadmin_test {
	public static void main(String[] args) throws Exception {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://localhost:8080/OnlineFoodDeliverySystem/admin.jsp");
		driver.manage().window().maximize();
		// driver.findElements(By.tagName("a")).click();
		driver.findElement(By.name("uname")).sendKeys(" ");
		driver.findElement(By.name("pwd")).sendKeys(" ");
		driver.findElement(By.linkText("Let Me in.")).click();
		Thread.sleep(1000);
		driver.findElement(
				By.xpath("//*[@id=\"templatemo_content_left\"]/div/div/div/form/table/tbody/tr[4]/td[2]/input"))
				.submit();
		driver.manage().window().maximize();
		driver.navigate().back();
		String url = driver.getCurrentUrl();

		if (url.equals("http://localhost:8080/OnlineFoodDeliverySystem/admin.jsp")) {
			System.out.println("Order true Successfully");
		} else {
			System.out.println("Order Unsuccessful");
		}
		driver.close();
	}

}
