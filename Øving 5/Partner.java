package objectstructures;

public class Partner {
	
	private String name;
	private Partner partner;
	
	public String getName() {
		return name;
	}
	
	public Partner getPartner() {
		return partner;
	}
	
	public void setPartner(Partner partner) {
		if(partner == this.partner) {
			return;
		}
		Partner oldPartner = this.partner;
		this.partner = partner;
		if(oldPartner != null && oldPartner.getPartner() == this) {
			oldPartner.setPartner(null);
		}
		if(this.partner != null) {
			this.partner.setPartner(this);
		}
		
	}
	
	public Partner(String name) {
		this.name = name;
	}
	
	public Partner(String name, Partner partner) {
		this.name = name;
		this.partner = partner;
	}
	
	public static void main(String[] args) {
		Partner p1 = new Partner("Jørgen", null);
		Partner p2 = new Partner("Trine", null);
		System.out.println(p1.getName());
		System.out.println(p1.getPartner());
		System.out.println(p2.getName());
		System.out.println(p2.getPartner());
		
		p1.setPartner(p2);
		System.out.println(p1.getName() + " has " + p1.getPartner().getName() + " for a partner.");
		p2.setPartner(p1);
		System.out.println(p2.getName() + " has " + p2.getPartner().getName() + " for a partner.");
	}

}
