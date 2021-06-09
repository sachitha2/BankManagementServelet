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

@WebServlet("/AddCustomer")
public class AddCustomer extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
		
		
		PrintWriter out = response.getWriter();
		
		
			CustomerDAO customerDAO = new CustomerDAO(connection);
			AccountDAO accountDAO = new AccountDAO(connection);
			
			
			
			Customer customer = new Customer(0, request.getParameter("email"), "0000000000",request.getParameter("gender"), request.getParameter("dob"),request.getParameter("id"), request.getParameter("fname")+request.getParameter("lname"), request.getParameter("address"));
			float amount = Float.parseFloat(request.getParameter("initialdeposit"));;
		
			Account account = new Account(0, request.getParameter("actype"), amount, amount, request.getParameter("id"));
			if(customerDAO.addData(customer)){
		    	out.println("parameters ok");
		    	//Create new account after adding new customer
		    	if(accountDAO.addData(account)) {
		    		response.sendRedirect("manager/index.jsp");
		    	}else {
		    		response.sendRedirect("manager/index.jsp?err=Account create failed");
		    	}
		    	
				
		    }else {
		    	response.sendRedirect("manager/index.jsp?err=Customer adding failed");
		    }
			
		
		doGet(request, response);
	}

}
