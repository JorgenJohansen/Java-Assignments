package inheritance;

import java.util.ArrayList;

public class Train {
	
	public ArrayList<TrainCar> trainCarList = new ArrayList<>();

	public void addTrainCar(TrainCar trainCar) {
		trainCarList.add(trainCar);
	}
	
	public boolean contains(TrainCar trainCar) {
		return true;
	}
	
	public int getTotalWeight() {
		int totalWeight = 0;
		if(trainCarList.size() > 0) {
			for(int i = 0; i < trainCarList.size(); i++) {
				totalWeight += trainCarList.get(i).getTotalWeight();
			}
		}
		return totalWeight;
	}
	
	public int getPassengerCount() {
		int passengerCount = 0;
		/*
		if(trainCarList.size() > 0) {
			for(int i = 0; i < trainCarList.size(); i++) {
				passengerCount += trainCarList.get(i);
			}
		}
		*/
		return passengerCount;
	}
	
	public int getCargoWeight() {
		int cargoWeight = 0;
		/*
		if(trainCarList.size() > 0) {
			for(int i = 0; i < trainCarList.size(); i++) {
				cargoWeight += trainCarList.get(i);
			}
		}
		*/
		return cargoWeight;
	}
}
