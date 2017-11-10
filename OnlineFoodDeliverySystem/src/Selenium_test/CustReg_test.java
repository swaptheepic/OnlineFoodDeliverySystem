package Selinium_testing;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class CustReg_test {
	public static void main(String[] args) throws Exception {
		System.setProperty("webdriver.firefox.marionette", "C:\\geckodriver.exe");
		WebDriver driver = new FirefoxDriver();
		driver.get("http://localhost:8080/OnlineFoodDeliverySystem/CustReg.jsp");
		driver.manage().window().maximize();
		driver.findElement(By.name("Customer Name")).sendKeys("Name");
		driver.findElement(By.name("Address")).sendKeys("Address");
		driver.findElement(By.name("Mobile Number")).sendKeys("Phone Number");
		driver.findElement(By.name("Username")).sendKeys("Username");
		driver.findElement(By.name("Password")).sendKeys("password > 6");
		driver.findElement(By.linkText("REGISTER")).click();
		driver.findElement(By.linkText("RESET")).click();
		Thread.sleep(1000);
		driver.findElement(
				By.xpath("//*[@id=\"templatemo_content_left\"]/div/div/div/form/table/tbody/tr[6]/td[2]/input"))
				.submit();
		driver.findElement(
				By.xpath("//*[@id=\"templatemo_content_left\"]/div/div/div/form/table/tbody/tr[6]/td[4]/input"))
				.submit();
		/// html/body/div[2]/form/div[2]/button
		driver.manage().window().maximize();
		String url = driver.getCurrentUrl();

		if (url.equals("http://localhost:8080/OnlineFoodDeliverySystem/CustReg.jsp")) {
			System.out.println("Customer registration Successful");
		} else {
			System.out.println("Customer registration Failed");
		}
		driver.navigate().to("http://localhost:8080/OnlineFoodDeliverySystem/login.jsp");
		driver.close();
	}

}
