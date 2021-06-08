package Model;

public class User {
	int id;
	String gender;
	String dob;
	String email;
	String name;
	String nic;
	String password;
	int type;
	public User(int id, String gender, String dob, String email, String name, String nic, String password, int type) {
		super();
		this.id = id;
		this.gender = gender;
		this.dob = dob;
		this.email = email;
		this.name = name;
		this.nic = nic;
		this.password = password;
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public String getGender() {
		return gender;
	}
	public String getDob() {
		return dob;
	}
	public String getEmail() {
		return email;
	}
	public String getName() {
		return name;
	}
	public String getNic() {
		return nic;
	}
	public String getPassword() {
		return password;
	}
	public int getType() {
		return type;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
