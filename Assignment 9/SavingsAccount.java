package inheritance;

public class SavingsAccount implements Account {
	
	protected double balance;
	protected double interestRate;
	
	public SavingsAccount(double interestRate) {
		this.interestRate = interestRate;
		balance = 0;
	}

	@Override
	public void deposit(double amount) {
		if(amount > 0) {
			balance += amount;
		}else {
			throw new IllegalArgumentException("Det som settes inn m� v�re positivt");
		}
		
	}

	@Override
	public void withdraw(double amount) {
		if(amount < 0) {
			throw new IllegalArgumentException("Uttaket m� v�re positivt");
		}
		if(amount > balance) {
			throw new IllegalStateException("Uttaket kan ikke v�re st�rre enn hva som er p� kontoen");
		}
		balance -= amount;
		
	}

	@Override
	public double getBalance() {
		return balance;
	}
	
	public void endYearUpdate() {
		balance = balance + balance * interestRate;
	}
	
	public static void main(String[] args) {
		SavingsAccount brukskonto = new SavingsAccount(0.05);
		brukskonto.deposit(1000);
		brukskonto.endYearUpdate();
		System.out.println(brukskonto.getBalance());
	}

}
