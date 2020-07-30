package patterns.delegation.office;

import java.util.Collection;
import java.util.function.BinaryOperator;

public class Manager implements Employee {

	private int task;
	private Collection<Employee> employees;
	public Manager(Collection<Employee> employees) {
		if(employees.size() < 1) {
			throw new IllegalArgumentException("A manager must have employees");
		}else {
			this.employees = employees;
		}
		
	}

	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		//Increment task
		task++;
		return operation.apply(value1, value2);
	}

	@Override
	public void printDocument(String document) {
		//Increment task
		task++;
		System.out.println(document);
		
	}

	@Override
	public int getTaskCount() {
		// TODO Auto-generated method stub
		return task;
	}

	@Override
	public int getResourceCount() {
		// TODO Auto-generated method stub
		return employees.size() + 1;
	}
	
	public static void main(String[] args) {
		//Clerk assistantToTheRegionalManager = new Clerk(Printer printer1);
		//Manager regionalManager = new Manager(Clerk(Printer printer1)));
	}

}
