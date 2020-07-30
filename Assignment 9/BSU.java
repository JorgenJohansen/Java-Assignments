package inheritance;

public class BSU extends SavingsAccount {

	//private double balance;
	private double limit;
	
	public BSU(double interestRate, double limit) {
		super(interestRate);
		// TODO Auto-generated constructor stub
		this.interestRate = interestRate;
		this.limit = limit;
	}
	
	public double getTaxDeduction() {
		System.out.println("getTaxDeduction call balance: " + balance);
		System.out.println("getTaxDeduction call taxDeduction: " + balance*0.2);
		return balance * 0.20;
	}
	
	public void deposit(double amount) {
		if(amount < 0) {
			throw new IllegalArgumentException("Det som settes inn m� v�re positivt");
		}
		if(balance + amount > limit) {
			throw new IllegalStateException("Vi kan ikke sette inne et bel�p som er over grensa");
		}
		balance += amount;
		
	}
	
	public void withdraw(double amount) {
		System.out.println("withdraw call amount: " + amount);
		System.out.println("withdraw call balance: " + balance);
		if(amount < 0) {
			throw new IllegalArgumentException("Det vi trekker ifra m� v�re positivt!");
		}
		if(amount > balance) {
			throw new IllegalStateException("Utdraget kan ikke v�re st�rre enn det vi har p� kontoen");
		}
		balance -= amount;
	}
	
	public static void main(String[] args) {
		BSU bsu = new BSU(0.05,25000);
		bsu.deposit(30000);
	}

}
