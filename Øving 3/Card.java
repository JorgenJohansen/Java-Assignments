package encapsulation;

/**
 * EZ
 * @author jorge
 *
 */
public class Card {
	
	private char suit;
	private int face;
	
	//Sjekker da om suit er S, H, D eller C og om face er mellom 1 og 13 for å sette tilstand
	//Hvis dette er false kaster vi en IllegalArgumentException
	public Card(char suit, int face) {
		if((suit == 'S' || suit == 'H' || suit == 'D' || suit == 'C')
				&& (face < 14 && face > 0)) {
			this.suit = suit;
			this.face = face;
		}else {
			throw new IllegalArgumentException("Ulovlig kort");
		}
	}
	
	//Returnerer suit
	public char getSuit() {
		return suit;
	}
	
	//Returnerer face
	public int getFace() {
		return face;
	}
	
	//Returnerer suit og face som en streng
	public String toString() {
		return "" + suit + face + "";
	}
	
	public static void main(String[] args) {
		Card myCard = new Card('S',13);
		System.out.println(myCard.toString()); 
		
		System.out.println(myCard.getFace());
		System.out.println(myCard.getSuit());
	
	}
	
	

}
