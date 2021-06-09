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
import DAO.TransactionDAO;
import DAO.UserDAO;
import Model.Account;
import Model.Customer;
import Model.Transaction;
import Model.User;

@WebServlet("/CreateNewAccount")
public class CreateNewAccount extends HttpServlet {
	
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
			TransactionDAO transactionDAO = new TransactionDAO(connection);
			
			
			
				float amount = Float.parseFloat(request.getParameter("initialdeposit"));;
		
				Account account = new Account(0, request.getParameter("actype"), amount, amount, request.getParameter("customernic"));
				
				int accounntId = accountDAO.addData(account);
		    	 
		    	//Create new account 
		    	if(accounntId != 0) {
		    		Transaction transaction = new Transaction(0, 1, amount, "", "", accounntId, "12");
		    		
		    		if(transactionDAO.addData(transaction)) {
		    			response.sendRedirect("manager/index.jsp");
		    		}else {
		    			response.sendRedirect("manager/index.jsp?err=Transaction failed");
		    		}
		    		
		    	}else {
		    		response.sendRedirect("manager/index.jsp?err=Account create failed");
		    	}
		    
			
		
		doGet(request, response);
	}

}
