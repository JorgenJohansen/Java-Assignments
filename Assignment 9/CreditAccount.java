package inheritance;

public class CreditAccount extends AbstractAccount {
	
	private double creditLine;
	
	public CreditAccount(double creditLine) {
		//Sjekker at vi instanserer en positiv creditLine n�r vi lager objektet.
		if(creditLine >= 0) {
			this.creditLine = creditLine;
		}else {
			throw new IllegalArgumentException("Creditline can't be negative");
		}
	}
	
	
	public double getCreditLine() {
		return creditLine;
	}
	
	public void setCreditLine(double creditLine) {
		//Sjekker at creditLine er positivt
		if(creditLine < 0) {
			throw new IllegalArgumentException("Kredittlinjen m� v�re positiv!");
		}
		//Sjekker om creditLine er st�rre enn absoluttverdien til this.amount
		if(creditLine < Math.abs(this.amount)) {
			throw new IllegalStateException("Kredittlinjen m� v�re st�rre enn bel�pet");
		}
		this.creditLine = creditLine;
		
		
	}


	@Override
	public void interalWithdraw(double amount) {
		//Sjekker om amount er positivt
		if(amount < 0) {
			throw new IllegalArgumentException("Det vi trekker ifra kan ikke v�re negativt");
		}
		//Sjekker om this.amount og creditLine enn det som trekkes ifra
		if(this.amount + creditLine > amount) {
			this.amount += - amount;
		}else {
			throw new IllegalStateException("Det vi tar ut kan ikke v�re st�rre enn bel�pet og kredittlinjen");
		}
	}

}
