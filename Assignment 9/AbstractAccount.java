package inheritance;

public abstract class AbstractAccount {
	
	protected double amount;
	
	public AbstractAccount() {
		this.amount = 0;
	}
	
	public void deposit(double deposit) {
		if(deposit > 0) {
			amount += deposit;
		}else {
			throw new IllegalArgumentException("Deposit must be positive");
		}
	}
	
	public void withdraw(double withdraw) {
		interalWithdraw(withdraw);
	}

	
	public abstract void interalWithdraw(double amount);
	
	public double getBalance() {
		return amount;
	}
	
	public void setBalance(double amount) {
		this.amount = amount;
	}

}
