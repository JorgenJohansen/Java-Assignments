package debugging;

import junit.framework.TestCase;
import static org.junit.Assert.*;


/**
 * Metoder som skal testes:
 * getCapacity
 * getCurrentVolume
 * increaseCupSize
 * drinkCoffee
 * fillCoffee
 */

import org.junit.Test;

public class CoffeeCupTest {
	
	@SuppressWarnings("deprecation")
	@Test
	public void test() {
		CoffeeCup cc = new CoffeeCup(5,3);
		double capacity = 5;
		assertEquals(capacity,cc.getCapacity());
	}

	

}
