package inheritance;

public class DebitAccount extends AbstractAccount {

	@Override
	public void interalWithdraw(double amount) {
		//Sjekker at amount er positivt
		if(amount < 0) {
			throw new IllegalArgumentException("Det vi trekker ifra kan ikke være negativt");
		}
		//Sjekker at vi har har større beløp enn det vi trekker ut
		if(this.amount >= amount) {
			this.amount -= amount;
		}else {
			throw new IllegalStateException("Kontobeløpet må være større enn det vi trekker ifra");
		}
		
	}

	
}
