package patterns.observable;

import java.util.ArrayList;
import java.util.Collection;

public class StockIndex implements StockListener {
	
	private String name;
	private double index;
	private Collection<Stock> stockList = new ArrayList<>();
	
	public StockIndex(String name, Stock ...stocks) {
		this.name = name;
		
	}
	
	void addStock(Stock stock) {
		stockList.add(stock);
	}
	
	void removeStock(Stock stock) {
		if(stockList.size() > 0) {
			stockList.remove(stock);
		}
	}
	
	public double getIndex(){
		return index;
	}

	@Override
	public void stockPriceChanges(Stock stock, double oldValue, double newValue) {
		// TODO Auto-generated method stub
		
	}

}
