package inheritance;

public class CargoCar extends TrainCar {
	
	private int cargoWeight;
	
	public CargoCar(int deadWeight, int cargoWeight) {
		super(deadWeight);
		this.cargoWeight = cargoWeight + deadWeight;
	}
	
	public int getCargoWeight() {
		System.out.println(cargoWeight);
		return cargoWeight;
	}
	
	public void setCargoWeight(int cargoWeight) {
		System.out.println(cargoWeight);
		this.cargoWeight = cargoWeight;
	}
}
