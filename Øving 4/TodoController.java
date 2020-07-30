package app;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Pane;

public class TodoController {
	
	//List<Todo> todolist = new ArrayList<>();
	Todolist myTodoList = new Todolist(new ArrayList<Todo>(), new ArrayList<Todo>(),0);
	
	//Feltene må ha samme navn som fx:id for å fungere
	@FXML TextField titleInput;
	@FXML DatePicker completionDateInput;
	@FXML TextField completionPointsInput;
	@FXML Button addTodo;
	@FXML Button removeTodo;
	@FXML Button AddCompleted;
	@FXML Button removeCompleted;
	@FXML Button removeAllTodos;
	@FXML Button removeAllCompleted;
	@FXML AnchorPane todopane;
	
	
	@FXML void addTodo() {
		String title = titleInput.getText();
		System.out.println(title);
		//LocalDate localDate = completionDate.getValue();
		//Instant instant = Instant.from(localDate.atStartOfDay(ZoneId.systemDefault()))
		//Date date = Date.from(instant);
		
		int completionPointsInt = Integer.parseInt(completionPointsInput.getText());
		//String completionDate = completionDateInput.getValue().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));;
		System.out.println(completionDateInput);
		System.out.println(completionPointsInt);
		
		System.out.println(myTodoList);
		myTodoList.addItemToTodolist(title, completionDateInput, completionPointsInt);
		System.out.println(myTodoList);
		
		CheckBox cb = new CheckBox();
		Pane p = new Pane();
		p.getChildren().add(cb);
		todopane.getChildren().add(p);
		
	}
	
	@FXML void handleButtonClick() {
		System.out.println("It works!");
	}
	
	@FXML void generateTodoUI() {
		
	}
	
	@FXML void removeTodo() {
		
	}
	
@FXML void removeAllTodo() {
		
	}
	
	@FXML void removeCompleted() {
		
	}
	
@FXML void removeAllCompleted() {
		
	}
	

}
