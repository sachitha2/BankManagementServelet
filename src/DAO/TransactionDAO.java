package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import Model.Customer;
import Model.Transaction;
import Model.User;

public class TransactionDAO {
	Connection connection=null;
	public String table = "transaction";
    

	public TransactionDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  list() {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	public ResultSet  listLastTen() {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+" ORDER BY date and time DESC LIMIT 10";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	public ResultSet  listTransactionsOfaAccount(String accId) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+" WHERE account_id = "+accId+" ORDER BY date and time;";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	public Customer  GetACustomerById(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+"  WHERE id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	Customer customer = new Customer(rs.getInt("id"), rs.getString("email"), rs.getString("contact"), rs.getString("gender"), rs.getString("dob"), rs.getString("nic"), rs.getString("name"), rs.getString("address"));
	            return customer;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	public Customer  GetACustomerByNIC(String nic) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+"  WHERE nic LIKE '"+nic+"';";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	Customer customer = new Customer(rs.getInt("id"), rs.getString("email"), rs.getString("contact"), rs.getString("gender"), rs.getString("dob"), rs.getString("nic"), rs.getString("name"), rs.getString("address"));
	            return customer;
	        
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
	

	
	public boolean addData(Transaction transaction) {
		PreparedStatement ps=null;
	    String query="INSERT INTO transaction (t_id, t_type, amount, date, time, account_id, user_id) VALUES (NULL, '"+transaction.getT_type()+"', '"+transaction.getAmount()+"',curdate(), curtime(), '"+transaction.getAccount_id()+"', '"+transaction.getUser_id()+"');";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return false;
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
}
