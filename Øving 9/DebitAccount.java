package inheritance;

public class DebitAccount extends AbstractAccount {

	@Override
	public void interalWithdraw(double amount) {
		//Sjekker at amount er positivt
		if(amount < 0) {
			throw new IllegalArgumentException("Det vi trekker ifra kan ikke v�re negativt");
		}
		//Sjekker at vi har har st�rre bel�p enn det vi trekker ut
		if(this.amount >= amount) {
			this.amount -= amount;
		}else {
			throw new IllegalStateException("Kontobel�pet m� v�re st�rre enn det vi trekker ifra");
		}
		
	}

	
}
