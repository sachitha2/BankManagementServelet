package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import Model.Account;
import Model.User;

public class AccountDAO {
	Connection connection=null;
	public String table = "account";
    

	public AccountDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  list(String c) {
		PreparedStatement ps=null;
		String query = "";
		if(c == "") {
			 query="SELECT * FROM account INNER JOIN customer ON account.customer_nic=customer.nic";
		}else {
			 query="SELECT * FROM account INNER JOIN customer ON account.customer_nic=customer.nic WHERE customer.name LIKE '%"+c+"%' or customer.nic LIKE '%"+c+"%' or account.account_no LIKE '%"+c+"%'";
		}
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	public Account  accountByAccId(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+"  WHERE account_no = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        rs.next();
	        int account_no =rs.getInt("account_no");  
	        String account_type = rs.getString("account_type");
	    	float balance = rs.getFloat("balance");
	    	float initial_deposit = rs.getFloat("initial_deposit");
	    	String customer_nic = rs.getString("customer_nic");
	        
	    	Account account = new Account(account_no, account_type, balance, initial_deposit, customer_nic);
	        return account;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	
	public int GetTotCount() {
		int c = 0;
		PreparedStatement ps=null;
	    String query="SELECT COUNT(*) AS rowcount FROM "+table+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("rowcount");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
	
	public int addData(Account account) {
		PreparedStatement ps=null;
	    String query="INSERT INTO account (account_no, account_type, balance, initial_deposit, customer_nic) VALUES (NULL, '"+account.getAccount_type()+"', '"+account.getBalance()+"', '"+account.getBalance()+"', '"+account.getCustomer_nic()+"');";
	    try {
	    	
	        String autogenColumns[] = {"account_no"};
	   	    ps=connection.prepareStatement(query, autogenColumns);
	        ps.executeUpdate();
	        ResultSet rs = ps.getGeneratedKeys();
    	    rs.next();
    	    return rs.getInt(1);
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return 0;
	}
	
	public int userType(String email,String pass) {
		int c = 0;
		PreparedStatement ps=null;
	    String query="SELECT type  FROM "+table+" WHERE email LIKE '"+email+"' AND password LIKE '"+pass+"';";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("type");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	

	
	public boolean del(String name) {
		PreparedStatement ps=null;
	    String query="DELETE FROM user WHERE user.id = "+name+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return false;
		
	}
	
	public int statdep() {
		int c=0;
		PreparedStatement ps=null;
	    String query="SELECT SUM(amount)as a FROM transaction WHERE date=CURRENT_DATE() AND t_type=1"; //TODO
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("a");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
	public int statwith() {
		int c=0;
		PreparedStatement ps=null;
	    String query="SELECT SUM(amount)as a FROM transaction WHERE date=CURRENT_DATE() AND t_type=2";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("a");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
	
	
}
