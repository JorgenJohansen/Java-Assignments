package app;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

public class Todo implements Serializable {

	private static final long serialVersionUID = -4847508477239914259L;
	
	private String title;
    private LocalDate completionDate;
    private int completionPoints;
    //private String completionColor;

    public String getTitle() {
        return title;
    }

    public int getCompletionPoints() {
        return completionPoints;
    }

    public LocalDate getCompletionDate() {
        return completionDate;
    }
    /*
    public String getCompletionColor() {
        return completionColor;
    }*/

    public Todo(String title, LocalDate completionDate, int completionPoints){
        this.title = title;
        this.completionDate = completionDate;
        this.completionPoints = completionPoints;
        //this.completionColor = completionColor;
    }

    public String toString(){
        return title + " | " + completionDate + " | " + completionPoints + " poeng";
    }

    public static void main(String[] args) {
        Todo myTodo = new Todo("Lære meg JavaFX", LocalDate.now(), 50);
        System.out.println(myTodo.toString());
    }



}

