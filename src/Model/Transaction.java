package Model;

public class Transaction {
	int t_id;
	int t_type;
	float amount;
	String date;
	String time;
	int account_id;
	public Transaction(int t_id, int t_type, float amount, String date, String time, int account_id) {
		super();
		this.t_id = t_id;
		this.t_type = t_type;
		this.amount = amount;
		this.date = date;
		this.time = time;
		this.account_id = account_id;
	}
	public int getT_id() {
		return t_id;
	}
	public int getT_type() {
		return t_type;
	}
	public float getAmount() {
		return amount;
	}
	public String getDate() {
		return date;
	}
	public String getTime() {
		return time;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setT_id(int t_id) {
		this.t_id = t_id;
	}
	public void setT_type(int t_type) {
		this.t_type = t_type;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	
	
}
