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
	         email.sendKeys("ale.rgg@otto.it");
	         password.sendKeys("Password1");
	         
	         registrati.click();
	         
	         //driver.close();
	         
	         baseUrl = "localhost:8080/Dress-Store/area_utente.jsp";
	         driver.get(baseUrl);
	         
	         WebElement addcarta=driver.findElement(By.name("addcarta"));
	         addcarta.click();
	         
	         WebElement addcarta2=driver.findElement(By.name("addcarta2"));
	         addcarta2.click();
	         
	         WebElement nomeC=driver.findElement(By.name("nome"));
	         
	         WebElement cognomeC=driver.findElement(By.name("cognome"));
	         
	         WebElement numCarta=driver.findElement(By.name("numero_carta"));
	         
	         WebElement cvv=driver.findElement(By.name("cvv"));
	         
	         WebElement anno=driver.findElement(By.name("anno"));
	        
	         WebElement mese=driver.findElement(By.name("mese"));
	         
	         WebElement giorno=driver.findElement(By.name("giorno"));
	         
	         WebElement invia=driver.findElement(By.name("invia"));
	         
	         WebElement reset=driver.findElement(By.name("reset"));
	         
	         nomeC.sendKeys("Mar10");
	         cognomeC.sendKeys("Ro55i");
	         numCarta.sendKeys("5454");
	         cvv.sendKeys("45");
	         anno.sendKeys("674");
	         mese.sendKeys("13");
	         giorno.sendKeys("0");
	         
	         invia.click();
	         reset.click();
	         
	         nomeC.sendKeys("Alessio");
	         cognomeC.sendKeys("Rossi");
	         numCarta.sendKeys("1209775790590070");
	         cvv.sendKeys("245");
	         anno.sendKeys("2020");
	         mese.sendKeys("12");
	         giorno.sendKeys("30");
	         
	         invia.click();
	         
	         driver.close();
	         
	       /*  baseUrl = "localhost:8080/Dress-Store/carrello.jsp";
	         
	         WebElement taglia=driver.findElement(By.name("taglia"));
	         
	         WebElement aggiungiCarrello=driver.findElement(By.name("invia"));
	         
	         WebElement beanType=driver.findElement(By.name("beantype"));
	         
	         beanType.click();
	         aggiungiCarrello.click();
	         
	         WebElement procedi=driver.findElement(By.name("ProcediAcquisto"));
	         procedi.click();
	         
	         WebElement indirizzoBtn=driver.findElement(By.name("indirizzo"));
	         indirizzoBtn.click();
	         
	         WebElement sx=driver.findElement(By.id("sx"));
	         sx.click();
	         
	         WebElement carta=driver.findElement(By.name("carta"));
	         carta.click();
	         
	         WebElement sxProcedi=driver.findElement(By.name("sx"));
	         sxProcedi.click();
	         
	         driver.close();*/
	}
 
}
