package interfaces;


import java.util.Iterator;
import java.util.NoSuchElementException;

public class CardContainerIterator implements Iterator<Card> {
	
	CardContainer cards;
	int element = 0;
	public CardContainerIterator(CardContainer cards) {
		this.cards = cards;
	}

	@Override
	public boolean hasNext() {
		// TODO Auto-generated method stub
		if(cards.getCardCount() > 0 || cards.getCardCount() != element) {
			return true;
		}
		return false;
	}

	@Override
	public Card next() {
		// TODO Auto-generated method stub
		if(hasNext()) {
			element++;
			return cards.getCard(element-1);
		}else {
			throw new NoSuchElementException();
		}
	}

}
