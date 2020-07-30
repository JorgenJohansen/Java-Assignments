package inheritance;

public class SavingsAccount2 extends AbstractAccount {

	private int withdrawals;
	private double fee;
	
	public SavingsAccount2(int withdrawals, double fee) {
		super();
		this.withdrawals = withdrawals;
		this.fee = fee;
	}
	@Override
	public void interalWithdraw(double amount) {
		if(amount < 0 ) {
			throw new IllegalArgumentException("Det vi trekker ifra må være positivt!");
		}
		if(amount > this.amount) {
			throw new IllegalStateException("Det må være mer på kontoen enn det vi trekker ut!");
		}
		//Sjekker om vi har støtte for uttak og deretter tar ut beløpet,
		//Hvis vi ikke har flere uttak, blir kontoeier ilagt et gebyr
		if(withdrawals > 0) {
			withdrawals--;
			this.amount -= amount;
		}else {
			if(this.amount > amount + fee) {
				this.amount -= (amount + fee);
			}else {
				throw new IllegalStateException("Sjekker at det vi har på kontoen er større enn det vi trekker ut + gebyr");
			}
		}
		
	}
	
	public static void main(String[] args) {
		//Testkode for klassen
		/*SavingsAccount2 superSpar = new SavingsAccount2(0,100);
		superSpar.deposit(10000);
		superSpar.interalWithdraw(2000);
		System.out.println(superSpar.getBalance());*/
	}

}
