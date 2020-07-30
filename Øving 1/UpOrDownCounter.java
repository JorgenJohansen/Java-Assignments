package stateandbehavior;

public class UpOrDownCounter {
	private int start;
	private int end;
	private int counter;
	
	
	public UpOrDownCounter(int start, int end, int counter) {
		super();
		if(start == end) {
			throw new IllegalArgumentException("Start og slutt kan ikke være det samme!");
		}
		this.start = start;
		this.end = end;
		this.counter = counter;
	}
	
	public int getCounter() {
		return counter;
	}
	
	public int getEnd() {
		return end;
	}
	
	public void setCounter(int counter) {
		this.counter = counter;
	}
	
	boolean count() {
		end = getEnd();
		counter = getCounter();
		
		if(counter == end) {
			return false;
		}else {
			counter++;
			setCounter(counter);
			return true;
		}
	}
	
	public static void main(String[] args) {
		UpOrDownCounter myUpOrDownCounter = new UpOrDownCounter(1, 10, 0);
		
	}
	
}
