package app;

import java.util.*;

import javafx.scene.control.DatePicker;
/**
 * Horge
 * equalsIgnoreCase fjerner problemer med upper/lowercase
 */
public class Todolist {

    private List<Todo> todoList = new ArrayList<Todo>();
    private List<Todo> completedList = new ArrayList<Todo>();
    private int points;

    String[] todos = {"Lære meg JavaFX", "Få god karakter i objektorientert"};
    String[] colors = {"Green", "Yellow", "Red"};


    public Todolist(List todoList, List completedList, int points){
        this.todoList = todoList;
        this.completedList = completedList;
        this.points = points;

    }

    public void setCompletedList(List<Todo> completedList) {
        this.completedList = completedList;
    }

    public void setTodoList(List<Todo> todoList) {
        this.todoList = todoList;
    }

    public List<Todo> getCompletedList() {
        return completedList;
    }

    public List<Todo> getTodoList() {
        return todoList;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    //Sjekker om vi får lov til å legge til en todo,
    //hvis den ikke finnes fra før legger vi den til.
    public void addItemToTodolist(String title, DatePicker date, int completionPoints){
        /*if(this.todoList.size() > 0){
            for(int i = 0; i < todoList.size(); i++){
                if(!(todoList.get(i).getTitle().equalsIgnoreCase(title))){
                    this.todoList.add(new Todo(title, date, completionPoints));
                }else{
                    throw new IllegalArgumentException("That todo item already exists!");
                }
            }
        }else{
            todoList.add(new Todo(title, date, completionPoints));
        }
        */
        todoList.add(new Todo(title, date, completionPoints));
    }

    //Fjerner et item fra todolist hvis den eksisterer i todolist
    public void removeItemFromTodolist(String title, List<Todo> todoList){
        if(todoList.size() > 0){
            for(int i = 0; i < todoList.size(); i++){
                if(todoList.get(i).getTitle().equalsIgnoreCase(title) ){
                    todoList.remove(todoList.get(i));
                }else{
                    throw new IllegalArgumentException("This item does not exist");
                }
            }
        }
    }

    //Legger elementet til fullført, legger til poeng, og fjerner det fra todolisten
    public void addItemToCompleted(String title, List<Todo> todoList, List<Todo> completedList){
        for(int i = 0; i < todoList.size(); i++){
            if(todoList.get(i).getTitle().equalsIgnoreCase(title)){
                Todo item = todoList.get(i);
                //System.out.println(item.getTitle());
                //System.out.println(item.getCompletionDate());
                //System.out.println(item.getCompletionPoints());
                //System.out.println(item.getCompletionColor());
                //completedList.add(new Todo(todoList.get(i).getTitle(),todoList.get(i).getCompletionDate(), todoList.get(i).getCompletionPoints(),todoList.get(i).getCompletionColor()));
                completedList.add(item);
                //System.out.println(completedList.toString());
                //Collections.copy(completedList,todoList.get(i));
                this.points += todoList.get(i).getCompletionPoints();
            }
        }
        removeItemFromTodolist(title, todoList);
    }

    //Fjerner alle elementene fra todolist
    public void removeAllItemsFromTodolist(){
        if(this.todoList.size() > 0){
            this.todoList.clear();
        }else{
            throw new IllegalArgumentException("The todolist is already empty");
        }
    }
    
    //Fjerner alle elementene fra completed
    public void removeAllItemsFromCompleted(){
        if(this.completedList.size() > 0){
            this.completedList.clear();
        }else{
            throw new IllegalArgumentException("The completed list is already empty");
        }
    }

    //Todo: få denne til å funke skikkelig!
    public String toString(){
        String todoString = "";
        for (int i = 0; i < todoList.size(); i++) {
            //todoString += "[";
            todoString += todoList.get(i).toString();
            //todoString += "]";
            todoString += "\n";
        }
        return todoString;
    }



    public static void main(String[] args) {
        //Todolist myTodoList = new Todolist(new ArrayList<Todo>(), new ArrayList<Todo>(),0);
        //myTodoList.addItemToTodolist("Hent mer kaffe", new Date(), 50);
        //myTodoList.addItemToTodolist("Få ferdig java øving", new Date(), 100);


        //System.out.println("My TodoList: " + myTodoList.toString2());
        //System.out.println(myTodoList.todoList.toString());

        //System.out.println("Original liste: " + Arrays.toString(myTodoList.todoList.toArray()));

        //myTodoList.removeItemFromTodolist("Hent mer kaffe", myTodoList.todoList);
        //myTodoList.removeItemFromTodolist("Få ferdig java øving", myTodoList.todoList);

        //System.out.println("Modifisert liste: " + Arrays.toString(myTodoList.todoList.toArray()));

        //Tester addToCompleted, dog addItemToCompleted funker av en eller annen grunn ikke
        //myTodoList.addItemToTodolist("Hent mer kaffe", new Date(), 50, "Green");
        //myTodoList.addItemToTodolist("Få ferdig java øving", new Date(), 100);
        //System.out.println("Todoliste før: " + Arrays.toString(myTodoList.todoList.toArray()));
        //myTodoList.addItemToCompleted("Hent mer kaffe", myTodoList.todoList, myTodoList.completedList);

        //myTodoList.addItemToTodolist("Bli frustrert over Java", new Date(), 100, "Rød");
        //System.out.println("Todoliste etter: " + Arrays.toString(myTodoList.todoList.toArray()));
        //System.out.println("Completed liste: " + Arrays.toString(myTodoList.completedList.toArray()));
        //myTodoList.removeAllItemsFromTodolist();
        //myTodoList.removeAllItemsFromCompleted();
        //System.out.println("Todoliste etter: " + Arrays.toString(myTodoList.todoList.toArray()));
        //System.out.println("Completed liste: " + Arrays.toString(myTodoList.completedList.toArray()));
        //System.out.println("Totale poeng: " + myTodoList.getPoints());

    }
}

