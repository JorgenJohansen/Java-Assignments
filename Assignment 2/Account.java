package encapsulation;

public class Account {
	
	//Svar på spm. 2
	//Denne klassen er dataorientert med tanke på at den har getter og setters.
	//(Tjenesteorientert vil da være operasjoner på data som er gjort utenfor objektet)
	
	//Definisjon på 
	
	private double balance;
	private double interestRate;
	
	public Account(double balance, double interestRate) {
		super();
		if(balance < 0 || interestRate < 0) {
			throw new IllegalArgumentException("Både beløp og renten må være positiv");
		}else {
			this.balance = balance;
			this.interestRate = interestRate;
		}
		
	}

	//Returnerer konto-beløpet
	public double getBalance() {
		return balance;
	}
	
	//Setter konto-beløpet
	//Kanskje ikke nødvendig siden vi setter denne i konstruktøren
	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	//Henter ut rentefoten
	public double getInterestRate() {
		return interestRate;
	}
	
	//Setter rentefoten
	public void setInterestRate(double interestRate) {
		if(interestRate < 0) {
			throw new IllegalArgumentException("Renten må være positiv");
		}else {
			this.interestRate = interestRate;
		}
		
	}
	
	//Legger til rente ved å hente ut konto-beløpet og rentefoten,
	//for å så sette konto-beløpet + renten til konto-beløpet
	//og deretter oppdatere konto-beløpet til slutt
	public void addInterest() {
		balance = getBalance();
		interestRate = getInterestRate();
		balance += balance * interestRate/100;
		setBalance(balance);
	}
	
	/**
	 * Denne metoden setter et beløp på kontoen, ved å første sjekke om det er positivt og deretter legger beløpet til kontoen
	 * hvis det er negativt vil en error bli kjørt
	 * så tar vi renten på dette
	 */
	public void deposit(double deposit) {
		balance = getBalance();
		if(deposit < 0) {
			throw new IllegalArgumentException("Deposit's can't be negative!");
		}else {
			balance +=  deposit;
		}
		setBalance(balance);
	}

	
	public void withdraw(double withdraw) {
		balance = getBalance();
		if(withdraw > balance) {
			throw new IllegalArgumentException("The deposit is bigger than the balance");
		}else {
			balance -= withdraw;
		}
		setBalance(balance);
	}
}
