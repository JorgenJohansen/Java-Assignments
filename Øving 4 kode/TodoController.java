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
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;

public class TodoController {
	
	List<Todo> todolist = new ArrayList<>();
	List <Todo> completed = new ArrayList<>();
	Todolist myTodoList = new Todolist(new ArrayList<>(), new ArrayList<>(),0);
	
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
	@FXML AnchorPane todoPane;
	
	
	@FXML void addTodo() {
		String title = titleInput.getText();
		System.out.println(title);
		//LocalDate localDate = completionDate.getValue();
		//Instant instant = Instant.from(localDate.atStartOfDay(ZoneId.systemDefault()))
		//Date date = Date.from(instant);
		
		int completionPointsInt = Integer.parseInt(completionPointsInput.getText());
		//String completionDate = completionDateInput.getValue().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));;
		//System.out.println(completionDateInput.getValue());
		//System.out.println(completionPointsInt);
		
		//System.out.println(myTodoList);
		myTodoList.addItemToTodolist(title, completionDateInput, completionPointsInt);
		//System.out.println(myTodoList);
		
		for(int i = 0; i < myTodoList.getTodoList().size(); i++) {
			Todo todoItem = myTodoList.getTodoList().get(i);
			String itemTitle = todoItem.getTitle();
			String todoItemString = myTodoList.getTodoList().get(i).toString();
			CheckBox cb = new CheckBox(todoItemString);
			System.out.println(myTodoList.getTodoList().get(i));
			int index = i;
			cb.addEventHandler(MouseEvent.MOUSE_CLICKED, event -> 
			{
				myTodoList.removeItemFromTodolist(itemTitle, myTodoList.getTodoList());
				System.out.println(myTodoList.getTodoList().toString());
				//todoPane.getChildren().remove(cb);
				todoPane.getChildren().remove(index);
			});
			//cb.addEventHandler(MouseEvent.MOUSE_CLICKED, event -> System.out.println("Checkbox pressed!"));
			Pane p = new Pane();
			p.getChildren().add(cb);
			VBox vb = new VBox();
			vb.getChildren().add(p);
			//ListView<CheckBox> lv = new ListView<>();
			//lv.getChildrenUnmodifiable().addAll(cb);
			todoPane.getChildren().add(vb);
		}
		
		//generateTodoUI();
		
		
	}
	
	@FXML void handleButtonClick() {
		System.out.println("It works!");
	}
	
	@FXML void generateTodoUI() {
		//todoPane.getChildren().clear();
		for(int i = 0; i < myTodoList.getTodoList().size(); i++) {
			Todo todoItem = myTodoList.getTodoList().get(i);
			String itemTitle = todoItem.getTitle();
			String todoItemString = myTodoList.getTodoList().get(i).toString();
			CheckBox cb = new CheckBox(todoItemString);
			System.out.println(myTodoList.getTodoList().get(i));
			cb.addEventHandler(MouseEvent.MOUSE_CLICKED, event -> 
			{
				myTodoList.removeItemFromTodolist(itemTitle, myTodoList.getTodoList());
				//todoPane.getChildren().clear();
			});
			//cb.addEventHandler(MouseEvent.MOUSE_CLICKED, event -> System.out.println("Checkbox pressed!"));
			Pane p = new Pane();
			p.getChildren().add(cb);
			todoPane.getChildren().add(p);
		}
		
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
