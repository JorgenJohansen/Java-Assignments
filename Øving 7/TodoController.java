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

public class TodoController implements TodoInterface {
	
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
		/*if(title.trim().isEmpty() || completionPoints.trim().isEmpty() || completionDate.trim().isEmpty() ||
				title.isEmpty() || completionPoints.isEmpty() || completionDate.isEmpty()) {
			submitTodo.setDisable(true);
		}*/
	}
	
	
	@FXML void addTodo() {
		
		String title = titleInput.getText();
		int completionPoints = Integer.parseInt(completionPointsInput.getText());
		LocalDate completionDate = completionDateInput.getValue();
		/*if((title instanceof String) && (completionPoints instanceof int)) {
			
		}*/
		
		myTodoList.addItemToTodolist(title, completionDate, completionPoints);
		
		generateTodoUI();
		
		
	}
	
	@FXML void handleButtonClick() {
		System.out.println("It works!");
	}
	
	@FXML void generateTodoUI() {
		//todoPane.getChildren().clear();
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
			//cb.addEventHandler(MouseEvent.MOUSE_CLICKED, event -> System.out.println("Checkbox pressed!"));
			Pane p = new Pane();
			p.getChildren().add(cb);
			//VBox vb = new VBox();
			//vb.getChildren().add(p);
			//ListView<CheckBox> lv = new ListView<>();
			//lv.getChildrenUnmodifiable().addAll(cb);
			todoPane.getChildren().add(p);
		}
		
	}
	

	@Override
	public void save() {
		//System.out.println("Save button is working");
		
		System.out.println(myTodoList.getTodoList().get(0));
		
		if(myTodoList.getTodoList().size() > 0) {
			try {
				File filePath = new File("C:\\Users\\jorge\\tdt4100-v2020-master\\git\\tdt4100-v2020-students\\ovinger\\src\\app\\todolist.txt");
	        	FileOutputStream fos = new FileOutputStream(filePath);
	        	ObjectOutputStream output = new ObjectOutputStream(fos);
	        	
	        	output.writeObject(myTodoList.getTodoList().get(0));
	        	/*
	        	for(Todo todo : myTodoList.getTodoList()) {
	        		output.writeObject(todo);
	        	}*/
	        	output.close();
	        	fos.close();
	        	
	        	
			}catch(IOException e) {
				System.out.println("An I/O exception ocurred");
				e.printStackTrace();
			}
		}else {
			System.out.println("Could not save nothing");
			
		}
		
		
		
	}

	@Override
	public void load() {
		
		ArrayList<Todo> todolist2 = new ArrayList<>();
		// TODO Auto-generated method stub
		try {
			File filePath = new File("C:\\Users\\jorge\\tdt4100-v2020-master\\git\\tdt4100-v2020-students\\ovinger\\src\\app\\todolist.txt");
			FileInputStream fis = new FileInputStream(filePath);
			ObjectInputStream input = new ObjectInputStream(fis);
			
			while(true) {
				Todo todo = (Todo)input.readObject();
				todolist2.add(todo);
			}
		}
		
		catch(FileNotFoundException e) {
			System.out.println("The file could not be located");
		}
		
		catch(IOException e) {
			System.out.println("An I/O exception ocurred");
		}
		
		catch(ClassNotFoundException e) {
			System.out.println("Class could not be located");
		}
		
		myTodoList.setTodoList(todolist2);
		
		generateTodoUI();
	}
	

}
