package app;

import java.util.Date;

import javafx.scene.control.DatePicker;

public class Todo {
    private String title;
    private DatePicker completionDate;
    private int completionPoints;
    //private String completionColor;

    public String getTitle() {
        return title;
    }

    public int getCompletionPoints() {
        return completionPoints;
    }

    public DatePicker getCompletionDate() {
        return completionDate;
    }
    /*
    public String getCompletionColor() {
        return completionColor;
    }*/

    public Todo(String title, DatePicker completionDate, int completionPoints){
        this.title = title;
        this.completionDate = completionDate;
        this.completionPoints = completionPoints;
        //this.completionColor = completionColor;
    }

    public String toString(){
        return "["+"Tittel: " + title + " , Dato: " + completionDate + " Poeng: " + completionPoints + "]";
    }

    public static void main(String[] args) {
        //Todo myTodo = new Todo("Lære meg JavaFX", 2014-02-25, 50);
        //System.out.println(myTodo.toString());
    }



}

