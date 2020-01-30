package Test;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import junit.framework.TestCase;
import model.ordine.OrdineBean;

public class TestOrdineBean extends TestCase{
OrdineBean ordine;
	
    //prima dell'esecuzione di ogni test
    @Before
	public void setUp() throws Exception {
		ordine = new OrdineBean();
	}

	//dopo ogni caso di test
	@After
	public void tearDown() throws Exception {
		ordine = null;
	}

	//test su SetIdOrdine
	@Test
	public void testSetIdOrdine() {
	int id_ordine=2;
	ordine.setId_ordine(id_ordine);
	assertEquals(2, ordine.getId_ordine());
	}
	
	
	//test su SetData
	@Test
	public void testSetData() throws ParseException {
	java.sql.Date data= new java.sql.Date(1990, 12, 20);
	ordine.setData(data);
	assertTrue(data.equals(ordine.getData()));
	}
	
	//test su SetPagato
	@Test
	public void testSetPagato()  {
		boolean pagato=true;
		ordine.setPagato(pagato);
	assertTrue(ordine.isPagato());
	}
	
	//test su SetCartaCredito
	@Test
	public void testSetCartaCredito() {
	String carta_credito="test";
	ordine.setCarta_credito(carta_credito);
	assertEquals("test", ordine.getCarta_credito());
	}
	
	//test su SetIndirizzo
	@Test
	public void testSetIndirizzo() {
		int indirizzo=2;
	ordine.setIndirizzo(indirizzo);
	assertEquals(2, ordine.getIndirizzo());
	}
	
	//test su Setutente
	@Test
	public void testSetutente() {
	int utente=0;
	ordine.setUtente(utente);;
	assertEquals(0, ordine.getUtente());
	}
	
	//test su SetTotale
	@Test
	public void testSetTotale() {
	float totale=2;
	ordine.setTotale(totale);
	assertEquals(2, (int)ordine.getTotale());
	}

}
