package app;

import java.util.Date;


import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.CheckBox;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class App extends Application{

	@Override
	public void start(final Stage primaryStage) throws Exception {
		/*primaryStage.setTitle("My Application");
		CheckBox cb = new CheckBox();
		cb.setOnAction(e -> {
			System.out.println("Check box checked");
		});
		
		VBox container = new VBox();
		HBox element = new HBox();
		HBox element2 = new HBox();
		Text elementTitle = new Text("Ta ut søppelet");
		//Date completionDate = new Date();
		//int completionPoints = 50;
		Text completionColor = new Text("Green");
		CheckBox cbElement = new CheckBox();
		element.getChildren().addAll(elementTitle, completionColor, cbElement);
		element2.getChildren().addAll(elementTitle, completionColor, cbElement);
		container.getChildren().addAll(element,element2);
		
		//primaryStage.setScene(new Scene(container,500,300));
		 */
		primaryStage.setScene(new Scene(FXMLLoader.load(App.class.getResource("App.fxml"))));
		primaryStage.show();
	}

	public static void main(final String[] args) {
		//Todo myTodo = new Todo("Lære meg JavaFX", "", 50);
		App.launch(args);
	}
}