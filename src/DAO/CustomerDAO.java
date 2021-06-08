package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import Model.Customer;
import Model.User;

public class CustomerDAO {
	Connection connection=null;
	public String table = "customer";
    

	public CustomerDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  customerList() {
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
	

	
	public boolean addData(Customer customer) {
		PreparedStatement ps=null;
	    String query="INSERT INTO customer (id, email, contact, gender, dob, nic, name, address) VALUES (NULL, 'maileka', '0715591137', 'male', '2021-06-10', '983142044v', 'sacchitha hirushan premarathna', 'address');";
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
