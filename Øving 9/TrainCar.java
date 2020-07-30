package inheritance;

public class TrainCar {
	
	private int deadWeight;
	private int totalWeight;
	
	public TrainCar(int weight) {
		this.totalWeight = weight + deadWeight;
	}
	
	public int getTotalWeight() {
		return totalWeight;
	}
	
	public void setDeadWeight(int weight) {
		this.deadWeight = weight;
	}
	
	public int getDeadWeight() {
		return deadWeight;
	}
	
	
	

}
