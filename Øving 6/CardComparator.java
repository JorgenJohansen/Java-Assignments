package interfaces;

import java.util.Comparator;

public class CardComparator implements Comparator<Card> {
	
	
	private boolean value;
	private char character;

	public CardComparator(boolean value, char character) {
		this.value = value;
		if(character == 'H' || character == 'S' || character == 'D' || character == 'C') {
			this.character = character;
		}
	}

	public int compare(Card card1, Card card2) {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
