package patterns.delegation.office;

import java.util.function.BinaryOperator;

public class Clerk implements Employee {
	
	
	private Printer printer;
	private int task;

	public Clerk(Printer printer) {
		this.printer = printer;
	}

	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		//Increment task
		task++;
		return operation.apply(value1, value2);
		//return 0;
	}

	@Override
	public void printDocument(String document) {
		//Increments task
		task++;
		System.out.println(document);
		
	}

	@Override
	public int getTaskCount() {
		//returner hvor mange ganger doCalculation og print er kalt
		// TODO Auto-generated method stub
		return task;
	}

	@Override
	public int getResourceCount() {
		// TODO Auto-generated method stub
		return 1;
	}

}
