package Test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.*;
import com.mysql.cj.jdbc.Driver;
import java.util.regex.Pattern;
import org.junit.Test;


public class integrationTest {

	public static void main(String[] args) {
		System.setProperty("webdriver.chrome.driver","C:\\SeleniumDrivers\\chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        String baseUrl="http://localhost:8080/Dress-Store/login.jsp ";
		//		String expectedTitle="LOGIN";
		//		String actualTitle = "";
				
				driver.get(baseUrl);
				WebElement email=driver.findElement(By.name("email"));
		         WebElement pass=driver.findElement(By.name("password"));
		         WebElement submitButton=driver.findElement(By.name("invio"));
		         email.sendKeys("uno@due");
		         pass.sendKeys("root");
		         submitButton.click();
		         String actualTitle = driver.getTitle();
		         System.out.println("Test Failed");
		      
				 driver.close ();
				 }
	}
