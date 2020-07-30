package patterns.observable;

public interface StockListener {

	void stockPriceChanges(Stock stock, double oldValue, double newValue);
}
