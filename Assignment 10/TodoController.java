package app;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.CheckBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;

public class TodoController {
	
	List<Todo> todolist = new ArrayList<>();
	List <Todo> completed = new ArrayList<>();
	Todolist myTodoList = new Todolist(new ArrayList<>(), new ArrayList<>(),0);
	
	//Note: De tre første feltene må ha samme navn som fx:id for å fungere
	@FXML TextField titleInput;
	@FXML DatePicker completionDateInput;
	@FXML TextField completionPointsInput;
	
	@FXML Button submitTodo;
	@FXML Button save;
	@FXML Button load;
	
	@FXML AnchorPane todoPane;
	
	//TODO: sørge for at man ikke kan ha text i poengsum eller tall i tittel
	
	//WIP
	@FXML void keyReleasedProperty() {
		String title = titleInput.getText();
		String completionPoints = completionPointsInput.getText();
		String completionDate = completionDateInput.getValue().toString();
		if(title.trim().isEmpty() || completionPoints.trim().isEmpty() || completionDate.trim().isEmpty() ||
				title.isEmpty() || completionPoints.isEmpty() || completionDate.isEmpty()) {
			submitTodo.setDisable(true);
		}
	}
	
	
	@FXML void addTodo() {
		
		String title = titleInput.getText();
		int completionPoints = Integer.parseInt(completionPointsInput.getText());
		LocalDate completionDate = completionDateInput.getValue();
		
		myTodoList.addItemToTodolist(title, completionDate, completionPoints);
		
		generateTodoUI();
		
		
	}
	
	@FXML void handleButtonClick() {
		System.out.println("It works!");
	}
	
	@FXML void generateTodoUI() {
		for(int i = 0; i < myTodoList.getTodoList().size(); i++) {
			Todo todoItem = myTodoList.getTodoList().get(i);
			String itemTitle = todoItem.getTitle();
			String todoItemString = todoItem.toString();
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
			
			Pane p = new Pane();
			p.getChildren().add(cb);
			todoPane.getChildren().add(p);
		}
		
	}
	

	public void save() {
		
		myTodoList.save(myTodoList);
		
	}

	public void load() {
		
		ArrayList<Todo> todolist2 = myTodoList.load();
		
		myTodoList.setTodoList(todolist2);
		
		generateTodoUI();
	}
	

}
