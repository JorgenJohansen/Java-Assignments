package encapsulation;

public class Account {
	
	//Svar p� spm. 2
	//Denne klassen er dataorientert med tanke p� at den har getter og setters.
	//(Tjenesteorientert vil da v�re operasjoner p� data som er gjort utenfor objektet)
	
	//Definisjon p� 
	
	private double balance;
	private double interestRate;
	
	public Account(double balance, double interestRate) {
		super();
		if(balance < 0 || interestRate < 0) {
			throw new IllegalArgumentException("B�de bel�p og renten m� v�re positiv");
		}else {
			this.balance = balance;
			this.interestRate = interestRate;
		}
		
	}

	//Returnerer konto-bel�pet
	public double getBalance() {
		return balance;
	}
	
	//Setter konto-bel�pet
	//Kanskje ikke n�dvendig siden vi setter denne i konstrukt�ren
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
			throw new IllegalArgumentException("Renten m� v�re positiv");
		}else {
			this.interestRate = interestRate;
		}
		
	}
	
	//Legger til rente ved � hente ut konto-bel�pet og rentefoten,
	//for � s� sette konto-bel�pet + renten til konto-bel�pet
	//og deretter oppdatere konto-bel�pet til slutt
	public void addInterest() {
		balance = getBalance();
		interestRate = getInterestRate();
		balance += balance * interestRate/100;
		setBalance(balance);
	}
	
	/**
	 * Denne metoden setter et bel�p p� kontoen, ved � f�rste sjekke om det er positivt og deretter legger bel�pet til kontoen
	 * hvis det er negativt vil en error bli kj�rt
	 * s� tar vi renten p� dette
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
