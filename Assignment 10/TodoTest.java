package app;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/*
 * Denne klassen tester å lage todos, legge til og fjerne elementer fra todoliste
 * og skrive og lese fra fil
 */

public class TodoTest extends junit.framework.TestCase {
	
	public void testTodo() {
		//Tester om vi får en todo med det i ønsker å ha i den
		String title = "Lage tester";
		LocalDate date = LocalDate.now(); 
		int completionPoints = 50;
		Todo todo = new Todo(title, date, completionPoints);
		
		assertEquals(title,todo.getTitle());
		assertEquals(date,todo.getCompletionDate());
		assertEquals(completionPoints,todo.getCompletionPoints());
	}
	
	public void testAddAndRemoveTodo() {
		
		//Tester om vi kan legge til en todo i lista
		List<Todo> todoList = new ArrayList<Todo>();
	    List<Todo> completedList = new ArrayList<Todo>();
	    int points = 50;
	    
	    String title = "Lage tester";
		LocalDate date = LocalDate.now(); 
		int completionPoints = 50;
		
		Todolist myTodoList = new Todolist(todoList,completedList,points);
		myTodoList.addItemToTodolist(title, date, completionPoints);
		assertEquals(1, myTodoList.getTodoList().size());
		
		//Tester at innholdet er der
		assertEquals(title, myTodoList.getTodoList().get(0).getTitle());
		assertEquals(date, myTodoList.getTodoList().get(0).getCompletionDate());
		assertEquals(completionPoints, myTodoList.getTodoList().get(0).getCompletionPoints());
		
		myTodoList.removeItemFromTodolist(title, todoList);
		
		//Tester at den er slettet
		assertEquals(0, myTodoList.getTodoList().size());
		
	}
	
	public void testSaveAndLoad() {
		
		List<Todo> todoList = new ArrayList<Todo>();
	    List<Todo> completedList = new ArrayList<Todo>();
	    int points = 50;
	    
	    String title = "Lage tester";
		LocalDate date = LocalDate.now(); 
		int completionPoints = 50;
		
		Todolist myTodoList = new Todolist(todoList,completedList,points);
		
		myTodoList.addItemToTodolist(title, date, completionPoints);
		
		myTodoList.save(myTodoList);
		
		List<Todo> todolist2 = myTodoList.load();
		
		//Sjekker at det vi lagrer er det samme som det vi laster inn
		assertEquals(todolist2.toString(), myTodoList.getTodoList().toString());
		
		
		//Rydd opp etter deg
		myTodoList.removeItemFromTodolist(title, myTodoList.getTodoList());
		
	}
	
	
	
	

}
