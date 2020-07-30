package inheritance;

public class ForeldreSpar extends SavingsAccount {
	
	private int remainingWithdrawals;

	public ForeldreSpar(double interestRate, int remainingWithdrawals) {
		super(interestRate);
		this.interestRate = interestRate;
		this.remainingWithdrawals = remainingWithdrawals;
	}
	
	public void deposit(double amount) {
		if(amount < 0) {
			throw new IllegalArgumentException("Det som settes inn kan ikke være negativt!");
		}
		balance += amount;
		
	}
	
	public void withdraw(double amount) {
		if(amount < 0 ) {
			throw new IllegalArgumentException("Det vi trekker ifra må være positivt!");
		}
		if(amount > balance) {
			throw new IllegalStateException("Det må være mer på kontoen enn det vi trekker ut!");
		}
		if(remainingWithdrawals < 0) {
			throw new IllegalStateException("Du kan ikke gjøre uttrekk fra kontoen.");
		}
		remainingWithdrawals--;
		balance -= amount;
	}
	
	public int getRemainingWithdrawals() {
		if(remainingWithdrawals < 0) {
			throw new IllegalStateException("Du kan ikke gjøre uttrekk fra kontoen.");
		}
		return remainingWithdrawals;
	}
	
	public static void main(String[] args) {
		ForeldreSpar fs = new ForeldreSpar(0.05,0);
		fs.deposit(1000);
		System.out.println(fs.getRemainingWithdrawals());
		fs.withdraw(1000);
	}

}
