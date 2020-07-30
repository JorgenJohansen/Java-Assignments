package stateandbehavior;

public class Account {
	private double balance;
	private double interestRate;
	
	public Account(double balance, double interestRate) {
		super();
		this.balance = balance;
		this.interestRate = interestRate;
	}

	//Returnerer konto-beløpet
	public double getBalance() {
		return balance;
	}
	
	//Setter konto-beløpet
	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	//Henter ut rentefoten
	public double getInterestRate() {
		return interestRate;
	}
	
	//Setter rentefoten
	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
	
	//Legger til rente ved å hente ut konto-beløpet og rentefoten,
	//for å så sette konto-beløpet + renten til konto-beløpet
	//og deretter oppdatere konto-beløpet til slutt
	//Oppgaven spesifiserer heller ikke om vi legger til renta til beløpet eller hele konto-beløpet
	//det første er implementert her
	public void addInterest() {
		balance = getBalance();
		interestRate = getInterestRate();
		balance = balance + balance * interestRate/100;
		setBalance(balance);
	}
	
	/**
	 * Denne metoden setter et beløp på kontoen, ved å første sjekke om det er positivt og deretter legger beløpet til kontoen
	 * hvis det er negativt vil en error bli kjørt
	 * så tar vi renten på dette
	 * Dette vil krølle til testen!!!!
	 */
	/*public void deposit(double deposit) {
		balance = getBalance();
		if(deposit < 0) {
			throw new IllegalArgumentException("Deposit's can't be negative!");
		}else {
			balance = balance + deposit;
		}
		addInterest();
		setBalance(balance);
	}*/
	//Testvennlig kode!
	public void deposit(double deposit) {
		balance = getBalance();
		if(deposit > 0) {
			balance = balance + deposit;
		}
		addInterest();
		setBalance(balance);
	}
	
	public static void main(String[] args) {
		Account myAccount = new Account(100.4, 1.5);
		myAccount.setBalance(100);
		double accountBalance = myAccount.getBalance();
		System.out.println(accountBalance);
	}
	

}
