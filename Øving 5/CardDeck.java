package objectstructures;

import java.util.ArrayList;
import java.util.Arrays;

public class CardDeck {
	
	private ArrayList<Card> cardDeck = new ArrayList<Card>();
	
	char[] cardTypes = {'S','H','D','C'};
	
	//Dobbel interer gjennom for å legge til kort i riktig rekkefølge, istedenfor å gjøre dette manuelt 4 ganger.
	//Sykt tungvint i java...
	//bruker da new Card('type',tall) for legge til et nytt element
	public CardDeck(int n) {
		for(int j = 0; j < cardTypes.length; j++) {
			for(int i = 1; i <= n; i++) {
				cardDeck.add(new Card(cardTypes[j],i));
			}
		}
	}
	
	//Returnerer størrelsen på kortstokken ved å bruke size()
	public int getCardCount() {
		return cardDeck.size();
	}
	
	//Bruker get() til å finne kortet med indexen hvis det er
	public Card getCard(int n) {
		if(n > 0 || n < 53) {
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
	
	public void deal(CardHand cardHand, int n) {
		
		
		for(int i = 0; i < n; i++) {
			cardHand.addCard(getCard(cardDeck.size()-1));
			cardDeck.remove(cardDeck.size()-1);
		}
		/*
		for(int i = 0; i < n; i++) {
			cardHand.addCard(cardDeck.remove(cardDeck.size()-1));
		}*/
	}
	
	public static void main(String[] args) {
		CardDeck cardDeck1 = new CardDeck(13);
		System.out.println(Arrays.toString(cardDeck1.cardDeck.toArray()));
		cardDeck1.shufflePerfectly();
		
		
	}

}
