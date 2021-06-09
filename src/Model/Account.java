package Model;

public class Account {
	int account_no;
	String account_type;
	float balance;
	float initial_deposit;
	String customer_nic;
	public Account(int account_no, String account_type, float balance, float initial_deposit, String customer_nic) {
		super();
		this.account_no = account_no;
		this.account_type = account_type;
		this.balance = balance;
		this.initial_deposit = initial_deposit;
		this.customer_nic = customer_nic;
	}
	public int getAccount_no() {
		return account_no;
	}
	public String getAccount_type() {
		return account_type;
	}
	public float getBalance() {
		return balance;
	}
	public float getInitial_deposit() {
		return initial_deposit;
	}
	public String getCustomer_nic() {
		return customer_nic;
	}
	public void setAccount_no(int account_no) {
		this.account_no = account_no;
	}
	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	public void setInitial_deposit(float initial_deposit) {
		this.initial_deposit = initial_deposit;
	}
	public void setCustomer_nic(String customer_nic) {
		this.customer_nic = customer_nic;
	}
	
	
}
