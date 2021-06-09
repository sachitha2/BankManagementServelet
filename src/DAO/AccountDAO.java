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
	public ResultSet  userById(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+"  WHERE id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
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
}
