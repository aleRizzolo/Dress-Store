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
		System.setProperty("webdriver.chrome.driver","C:\\Users\\Davide\\Desktop\\chromedriver_win32\\chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        String baseUrl="http://localhost:8080/Dress-Store/login.jsp ";
        
        driver.get(baseUrl);
        WebElement email=driver.findElement(By.name("email"));
		WebElement pass=driver.findElement(By.name("password"));
		WebElement submitButton=driver.findElement(By.name("invio"));
		email.sendKeys("uno@due");
		pass.sendKeys("root");
		submitButton.click();
		String actualTitle = driver.getTitle();
		System.out.println("Test Failed");
		
		
		baseUrl="http://localhost:8080/Dress-Store/registrazione.jsp ";
		driver.get(baseUrl);
	         
	         WebElement nome=driver.findElement(By.name("nome"));
	         
	         WebElement cognome=driver.findElement(By.name("cognome"));
	         
	         WebElement data=driver.findElement(By.name("data_nascita"));
	         email=driver.findElement(By.name("email"));
	         
	         WebElement password=driver.findElement(By.name("password"));
	          
	         WebElement registrati=driver.findElement(By.name("regButtom"));
	         nome.sendKeys("!4&");
	         cognome.sendKeys("950");
	         data.sendKeys("12/14/918");
	         email.sendKeys("uno");
	         password.sendKeys("pass");

	         registrati.click();
	         
	         nome.clear();
	         cognome.clear();
	         data.clear();
	         email.clear();
	         password.clear();
	         
	         registrati.click();
	         
	         nome.sendKeys("nome");
	         cognome.sendKeys("cognome");
	         data.sendKeys("12/11/1918");
	         email.sendKeys("otto@otto.it");
	         password.sendKeys("Password1");
	         
	         registrati.click();
	         
	         
	         driver.close();
	         
	}
 
}
