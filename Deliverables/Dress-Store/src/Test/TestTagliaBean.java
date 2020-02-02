package Test;
import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import model.taglia.TagliaBean;

public class TestTagliaBean {
TagliaBean taglia;
	@Before
	public void setUp() throws Exception {//viene eseguito prima di eseguire ogni test
		taglia = new TagliaBean();
	}

	@After
	public void tearDown() throws Exception {//viene eseguito dopo ogni caso di test
		taglia=null;
	}

	@Test
	public void testSetIdProdotto (){//test metodo per setIdProdotto
		int id_prodotto=1;
		taglia.setId_prodotto(id_prodotto);
		assertEquals(1, taglia.getId_prodotto());
	}
	@Test
	public void testSetTaglia (){// test metodo per la taglia
		String ta="l";
		taglia.setTaglia(ta);
		assertEquals("l", taglia.getTaglia());
	}
	@Test
	public void testSetQuantita (){ //test metodo per la quantità
		int quantita=1;
		taglia.setQuantita(quantita);
		assertEquals(1, taglia.getQuantita());
	}
}
