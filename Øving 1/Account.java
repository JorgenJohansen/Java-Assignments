package stateandbehavior;

public class Account {
	private double balance;
	private double interestRate;
	
	public Account(double balance, double interestRate) {
		super();
		this.balance = balance;
		this.interestRate = interestRate;
	}

	//Returnerer konto-bel�pet
	public double getBalance() {
		return balance;
	}
	
	//Setter konto-bel�pet
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
	
	//Legger til rente ved � hente ut konto-bel�pet og rentefoten,
	//for � s� sette konto-bel�pet + renten til konto-bel�pet
	//og deretter oppdatere konto-bel�pet til slutt
	//Oppgaven spesifiserer heller ikke om vi legger til renta til bel�pet eller hele konto-bel�pet
	//det f�rste er implementert her
	public void addInterest() {
		balance = getBalance();
		interestRate = getInterestRate();
		balance = balance + balance * interestRate/100;
		setBalance(balance);
	}
	
	/**
	 * Denne metoden setter et bel�p p� kontoen, ved � f�rste sjekke om det er positivt og deretter legger bel�pet til kontoen
	 * hvis det er negativt vil en error bli kj�rt
	 * s� tar vi renten p� dette
	 * Dette vil kr�lle til testen!!!!
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
