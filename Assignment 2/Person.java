package encapsulation;

import java.util.Date;
public class Person {
	
	//Alternativ inndeling | del 1:
	private String firstName;
	private String lastName;
	
	
	private String name;
	private String email;
	private Date birthday;
	private char gender;
	private String[] countryCode = {"ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", 
	                       "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", 
	                       "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", 
	                       "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", 
	                       "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", 
	                       "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", 
	                       "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", 
	                       "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", 
	                       "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", 
	                       "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", 
	                       "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", 
	                       "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", 
	                       "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", 
	                       "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", 
	                       "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", 
	                       "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", 
	                       "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", 
	                       "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", 
	                       "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw"};
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		if(checkValidName(name)){
			this.name = name;
		}else {
			throw new IllegalArgumentException("This is not a valid name");
		}
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		if(checkValidEmail(email)) {
			this.email = email;
		}else {
			throw new IllegalArgumentException("This is not a valid email");
		}
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		if(checkValidBirthday(birthday)) {
			this.birthday = birthday;
		}else {
			throw new IllegalArgumentException("This is not a valid birthday");
		}
		
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		if(checkValidGender(gender)) {
			this.gender = gender;
		}else {
			throw new IllegalArgumentException("This is not a valid gender");
		}
	}
	public String[] getCountryCode() {
		return countryCode;
	}
	
	
	
	public Person() {
		
	}
	
	public Person(String name, String email, Date birthday, char gender){
		//Bruker hjelpefunksjoner for renere og mer oversiktlig kode
		if(checkValidName(name) || checkValidEmail(email) || checkValidBirthday(birthday) || checkValidGender(gender)) {
			throw new IllegalArgumentException("A valid person could not be made");
		}else {
			this.name = name;
			this.email = email;
			this.birthday = birthday;
			this.gender = gender;
		}
	}
	//Sjekker først for whitespace
	//Deretter splitter vi på whitespace og får em liste med fornavn, etternavn
	//Deretter sjekker vi om både fornavn og etternavn er større eller lik 2
	public static boolean checkValidName(String name) {
		if(name.contains(" ")) {
			//Vi får ut en liste av elementer når vi splitter
			String namelist[] = name.split(" ");
			if(namelist[0].length() >= 2 & namelist[1].length() >= 2) {
				return true;
			}
		}
		return false;
		
	}
	
	/*public static boolean checkValidCountryCode(String countryCode) {
		return false;
	}*/
	
	//Sjekker for riktig epost
	//
	public boolean checkValidEmail(String email) {
		
		String name = getName();
		String namelist[] = name.split(" ");
		
		//Henter ut epostdetaljer
		String[] emailDetails = email.split("\\.");
		String firstName = emailDetails[0];
		String countryCode = emailDetails[2];
		String[] emailDetails2 = emailDetails[1].split("@");
		String lastName = emailDetails2[0];
		String domain = emailDetails2[1];
		
		//Sjekker at fornavn og etternavn er de samme med små bokstaver og at domain er større eller lik 1
		//
		if(namelist[0].toLowerCase() == firstName.toLowerCase() && namelist[1].toLowerCase() == lastName.toLowerCase() && domain.length() >= 1) {
			String countryCodeList[] = getCountryCode();
			//Sjekker at landskoden finnes i lista
			for(int i = 0; i <= countryCodeList.length; i++) {
				if(countryCodeList[i] == countryCode) {
					return true;
				}
			}
		}
		return false;
	}
	
	//Sjekker for riktig bursdag
	public static boolean checkValidBirthday(Date birthday) {
		if(birthday.after(new Date())) {
			return false;
		}
		return true;
	}
	
	//Sjekker for riktig kjønn
	public static boolean checkValidGender(char gender) {
		if(gender == 'M' || gender == 'F' || gender == '\0') {
			return true;
		}
		return false;
	}
	
	
	
	public static void main(String[] args) {
		//Person tretteberg = new Person("Jørgen Johansen","hallvard.trætteberg@ntnu.no", )
		
		//Date d1 = new Date();
		//System.out.println(d1);
		//String name = "Jørgen Johansen";
		//String name2[] = name.split(" ");
		//System.out.println(name2[0] + " " + name2[1]);
		//System.out.println(name2[0].length());
		String invalidName = "Ola";
		
		//System.out.println(checkValidGender('M'));
		//System.out.println(checkValidName(name));
		System.out.println(checkValidName(invalidName));
		
		//Email process
		/*
		String email = "jørgen.johansen@ntnu.no";
		String[] emailDetails = email.split("\\.");
		String firstName = emailDetails[0];
		String countryCode = emailDetails[2];
		String[] emailDetails2 = emailDetails[1].split("@");
		String lastName = emailDetails2[0];
		String domain = emailDetails2[1];
		*/
		
		//String birthday = "Sun Jan 26 20:28:06 CET 2020";
		
		//System.out.println(birthday);
		
		
		
		//System.out.println("First name: " + firstName);
		//System.out.println("Last name: " + lastName);
		//System.out.println("Domain: " + domain);
		//System.out.println("Country Code: " + countryCode);
		
		
		
	}
	

}
