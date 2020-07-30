package patterns.delegation.office;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Printer {
	
	Map<Employee, List<String>> history = new HashMap<>();
	public void printDocument(String document, Employee employee) {
		//Sjekk om det er noe "history der fra før"
		System.out.println(document);
		if(history.get(employee).size() < 1) {
			history.put(employee, new ArrayList<String>());
		}else {
			history.get(employee).add(document);
		}
	}
	
	List<String> getPrintHistory(Employee employee){
		return history.get(employee);
	}
	
	public static void main(String[] args) {
		
		
	}

}
