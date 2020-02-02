package Test;
import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import junit.framework.TestCase;
import model.prodotto.ProdottoBean;
import model.prodotto.ProdottoInOrdineBean;

public class TestProdottoInOrdine extends TestCase{
ProdottoInOrdineBean prodotto;
	@Before
	public void setUp() throws Exception {//viene eseguito prima di eseguire ogni test
		prodotto=new ProdottoInOrdineBean();
	}

	@After
	public void tearDown() throws Exception {//viene eseguito dopo ogni caso di test
		prodotto=null;
	}
	
	@Test
	public void testIdProdotto() {//test metodo per IdProdotto
		int id_prodotto_ordine=5;
		prodotto.setId_prodotto_ordine(id_prodotto_ordine);
		 
		assertEquals(5, prodotto.getId_prodotto_ordine());
	}
	@Test
	public void testSetPrezzo() {//test metodo per setPrezzo
		float prezzo=1;
		prodotto.setPrezzo_compl(prezzo);
		 
		assertEquals((int)prezzo,(int)prodotto.getPrezzo_compl());
	}
	@Test
	public void testSetIva() {//test metodo per SetIva
		int iva=1;
		prodotto.setIva(iva);
		 
		assertEquals(1,prodotto.getIva());
	}
	@Test
	public void testSetQuantita() {//test metodo per SetQuantita
		int quantita=1;
		prodotto.setQuantita(quantita);
		 
		assertEquals(1,prodotto.getQuantita());
	}
	@Test
	public void testSetReso() {//test metodo per SetReso
		boolean reso=false;
		prodotto.setReso(reso);
		 
		assertFalse(prodotto.isReso());
	}
}
