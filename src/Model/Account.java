package Model;

public class Account {
	int account_no;
	int account_type;
	float balance;
	float initial_deposit;
	int customer_id;
	public Account(int account_no, int account_type, float balance, float initial_deposit, int customer_id) {
		super();
		this.account_no = account_no;
		this.account_type = account_type;
		this.balance = balance;
		this.initial_deposit = initial_deposit;
		this.customer_id = customer_id;
	}
	public int getAccount_no() {
		return account_no;
	}
	public int getAccount_type() {
		return account_type;
	}
	public float getBalance() {
		return balance;
	}
	public float getInitial_deposit() {
		return initial_deposit;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setAccount_no(int account_no) {
		this.account_no = account_no;
	}
	public void setAccount_type(int account_type) {
		this.account_type = account_type;
	}
	public void setBalance(float balance) {
		this.balance = balance;
	}
	public void setInitial_deposit(float initial_deposit) {
		this.initial_deposit = initial_deposit;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	
	
}
