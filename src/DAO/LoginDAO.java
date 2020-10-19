package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.EmployeeModel;
import Model.LeaveModel;
import Model.LeavetypeModel;
import Model.UserModel;

public class LoginDAO {
	Connection connection=null;
	public String table = "user";
    

	public LoginDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  userList() {
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
	
	
	public boolean addData(UserModel uModel) {
		PreparedStatement ps=null;
	    String query="INSERT INTO user (username, password,type) VALUES ('"+uModel.getUsername()+"', '"+uModel.getPassword()+"', '"+uModel.getType()+"');";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return false;
	}
	public boolean del(String id) {
		PreparedStatement ps=null;
	    String query="DELETE FROM user WHERE user.id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return false;
		
	}
		//TODO EDIT
		//TODO Take a data from passing id
    
}
