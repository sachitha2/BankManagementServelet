package Model;

public class Customer {
	int id;
	String email;
	String contact;
	String gender;
	String dob;
	String nic;
	String name;
	String address;
	public Customer(int id, String email, String contact, String gender, String dob, String nic, String name,
			String address) {
		super();
		this.id = id;
		this.email = email;
		this.contact = contact;
		this.gender = gender;
		this.dob = dob;
		this.nic = nic;
		this.name = name;
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public String getEmail() {
		return email;
	}
	public String getContact() {
		return contact;
	}
	public String getGender() {
		return gender;
	}
	public String getDob() {
		return dob;
	}
	public String getNic() {
		return nic;
	}
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
