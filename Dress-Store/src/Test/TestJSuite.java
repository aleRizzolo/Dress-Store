package Test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import junit.framework.TestSuite;

@RunWith(Suite.class)
@SuiteClasses({ TestIndirizzoBean.class, TestOrdineBean.class, TestProdottoBean.class, TestProdottoInOrdine.class,
		TestPromozioneBean.class, TestTagliaBean.class, TestUtenteBean.class })

public class TestJSuite {
	
	/*@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}*/

	
	//raggruppa i casi di test e li esegue insieme
        @Test
	    public static Test suite() {
		TestSuite suite= new TestSuite(); 
		
		suite.addTest(new TestProdottoBean());
		suite.addTest(new TestUtenteBean());
		suite.addTest(new TestIndirizzoBean());
		suite.addTest(new TestOrdineBean());
		suite.addTest(new TestProdottoInOrdine());
		
		return (Test) suite;
        }
       }
