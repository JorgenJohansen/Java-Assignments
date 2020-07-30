package patterns.observable;

import java.util.ArrayList;
import java.util.Collection;

public class Stock {
	
	private String ticker;
	private double price;
	private Collection<StockListener> stockListenerList = new ArrayList<>();
	public Stock(String ticker, double price) {
		this.ticker = ticker;
		this.price = price;
	}
	
	public void setPrice(double price) {
		if(price < 1) {
			throw new IllegalArgumentException("The price has to be bigger then 0!");
		}else {
			this.price = price;
		}
	}
	
	public String getTicker() {
		return ticker;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void addStockListener(StockListener stockListener) {
		stockListenerList.add(stockListener);
	}
	
	public void removeStockListener(StockListener stockListener) {
		if(stockListenerList.size() > 0) {
			stockListenerList.remove(stockListener);
		}
		
	}

}
