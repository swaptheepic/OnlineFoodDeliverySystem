package Selinium_testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

/**
 *
 * @author ezparjy
 */
public class logintest {
	public static void main(String[] args) throws Exception {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://http://localhost:8080/OnlineFoodDeliverySystem/index.jsp");
		driver.manage().window().maximize();
		// driver.findElements(By.tagName("a")).click();
		driver.findElement(By.name("uname")).sendKeys(" ");
		driver.findElement(By.name("pwd")).sendKeys(" ");
		driver.findElement(By.linkText("Let Me in.")).click();
		Thread.sleep(1000);
		driver.findElement(
				By.xpath("//*[@id=\"templatemo_content_left\"]/div/div/div/form/table/tbody/tr[4]/td[1]/input"))
				.submit();
		driver.manage().window().maximize();
		driver.findElement(By.partialLinkText("REGISTER"));
		driver.navigate().to("http://localhost:8080/OnlineFoodDeliverySystem/CustReg.jsp");
		// back to home page
		driver.navigate().back();
		
		String url = driver.getCurrentUrl();

		if (url.equals("http://localhost:8080/OnlineFoodDeliverySystem/login.jsp?uname=rest1&pwd=ashwini@123")) {
			System.out.println("Admin Login Successful - Passed");
		} else {
			System.out.println("Admin Login Unsuccessful - Failed");
		}
		driver.navigate().to("http://localhost:8080/OnlineFoodDeliverySystem/CustReg.jsp");
		driver.close();
	}

}
