package bank;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AccountDAO;
import DAO.CustomerDAO;
import DAO.UserDAO;
import Model.Account;
import Model.Customer;
import Model.User;

@WebServlet("/GetCustomerFromNIC")
public class GetCustomerFromNIC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    
	    CustomerDAO customerDAO = new CustomerDAO(connection);
	    
	    String id = request.getParameter("id");
	    Customer customer =customerDAO.GetACustomerByNIC(id);
	    
	    if(customer != null) {
	    	out.println(customer.getName());
	    }else {
	    	out.println("Err");
	    }
	    
	    
	    
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		
		doGet(request, response);
	}

}
