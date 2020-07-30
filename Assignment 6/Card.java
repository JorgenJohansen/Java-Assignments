package interfaces;


public class Card implements Comparable<Card>{

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
	
	

	public int compareTo(Card card) {
		/*
		char thisSuit = this.getSuit();
		int compareSuit = this.getSuit();
		if (thisSuit != compareSuit){
			return thisSuit - compareSuit;
		} else if (thisSuit == compareSuit){
				return this.getFace() - card.getFace();
		} return face;
		
		//Sjekker om et kort har like type og hvem som er størst
		if(card1.getSuit() == card2.getSuit()) {
			if(card1.getFace() > card2.getFace()) {
				return card1;
			}else {
				return card2;
			}
		}
		
		return card1;
		*/
		//Sjekke om de er like
		char firstSuit = this.getSuit();
		System.out.println(firstSuit);
		int firstFace = this.getFace();
		System.out.println(firstFace);
		
		
		
		if(firstSuit == card.getSuit()) {
			return firstFace - card.getFace();
		}else {
			return firstSuit - card.getSuit();
		}
		
		
		
	}
	
	public static void main(String[] args) {
		Card card1 = new Card('H',13);
		Card card2 = new Card('C', 1);
		
		
		System.out.println(card1.compareTo(card2));
		//System.out.println('z'-'a');
		
	
	}
	
	
	
}

