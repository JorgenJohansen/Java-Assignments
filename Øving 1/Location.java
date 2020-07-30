package stateandbehavior;

public class Location {
	private int x;
	private int y;
	
	public Location(int x, int y) {
		super();
		this.x = x;
		this.y = y;
	}
	
	//Dekrementerer y for å flytte oss opp, gjør ingenting med x(obviously)
	public void up() {
		//this.x += 0;
		this.y -= 1;
	}
	
	//Inkrementerer y for å flytte oss ned, gjør ingenting med x(obviously)
	public void down() {
		//this.x += 0;
		this.y += 1;
	}
	
	//Dekrementerer x for å flytte oss til venstre, gjør ingenting med y(obviously)
	public void left() {
		this.x -= 1;
		//this.y += 0;
	}
	
	//Inkrementerer  for å flytte oss til høyre, gjør ingenting med y(obviously)
	public void right() {
		this.x += 1;
		//this.y += 0;
	}
	
	//Returnerer x
	public int getX() {
		return x;
	}
	//Returnerer y
	public int getY() {
		return y;
	}
	
	public static void main(String[] args) {
		Location myLocation = new Location(3,3);
		int x = myLocation.getX();
		int y = myLocation.getY();
		
		System.out.println("Location x is " + x);
		System.out.println("Location y is " + y);
	}
	
	
	
	

}
