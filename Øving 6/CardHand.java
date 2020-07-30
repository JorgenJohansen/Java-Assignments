package interfaces;

import java.util.ArrayList;


public class CardHand implements CardContainer {
	
private ArrayList<Card> cardDeck =  new ArrayList<Card>();
	
	public ArrayList<Card> getCardDeck() {
		return cardDeck;
	}
	
	//Returnerer størrelsen på kortstokken ved å bruke size()
	public int getCardCount() {
		return cardDeck.size();
	}
		
	//Bruker get() til å finne kortet med indexen hvis det er
	public Card getCard(int n) {
		if(n > 0 || n < getCardCount()) {
			return cardDeck.get(n);
		}else {
			throw new IllegalArgumentException("Kortet finnes ikke!");
		}
	}
	
	public void shufflePerfectly() {
		ArrayList<Card> cardDeckPart1 = new ArrayList<Card>();
		ArrayList<Card> cardDeckPart2 = new ArrayList<Card>();
		//Deler opp cardDeck i 2 deler
		for(int i = 0; i < cardDeck.size()/2; i++) {
			cardDeckPart1.add(getCard(i));
		}
		//
		//System.out.println("CardDeckPart1: " + Arrays.toString(cardDeckPart1.toArray()));
		for(int i = cardDeck.size()/2; i < cardDeck.size(); i++) {
			cardDeckPart2.add(getCard(i));
		}
		//System.out.println("CardDeckPart1: " + Arrays.toString(cardDeckPart2.toArray()));
		
		//Fjern elementene fra cardDeck
		this.cardDeck.clear();
		//System.out.println("Original CardDeck: " + Arrays.toString(cardDeck.toArray()));
		
		//Flett sammen kortene
		for(int i = 0; i <= cardDeckPart1.size()-1; i++) {
			this.cardDeck.add(cardDeckPart1.get(i));
			this.cardDeck.add(cardDeckPart2.get(i));
		}
		//System.out.println("Perfectly shuffled" + Arrays.toString(cardDeck.toArray()));
		
	}
	
	
	
	public void addCard(Card card) {
		this.cardDeck.add(card);
	}
	
	public Card play(int n) {
		return this.cardDeck.remove(n);
	}

}
