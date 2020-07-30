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
			throw new IllegalArgumentException("Det som settes inn må være positivt");
		}
		
	}

	@Override
	public void withdraw(double amount) {
		if(amount < 0) {
			throw new IllegalArgumentException("Uttaket må være positivt");
		}
		if(amount > balance) {
			throw new IllegalStateException("Uttaket kan ikke være større enn hva som er på kontoen");
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
