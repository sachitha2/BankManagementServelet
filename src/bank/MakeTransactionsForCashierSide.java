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

@WebServlet("/MakeTransactionsForCashierSide")
public class MakeTransactionsForCashierSide extends HttpServlet {
	
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
		
		
			TransactionDAO transactionDAO = new TransactionDAO(connection);
			
			
			
				float amount = Float.parseFloat(request.getParameter("Amount"));;
		
				
				int accounntId =Integer.parseInt(request.getParameter("acc")) ;
				String d = request.getParameter("deposit");
					int type;
					if(d.equals("deposit")) {
						type = 1;
					}else {
						amount= 0 - amount;
						type = 2;
					}
					
					
				
		    	
					Transaction transaction = new Transaction(0, type, amount, "", "", accounntId, "12");
					
		    		
		    		if(transactionDAO.addData(transaction)) {
		    			response.sendRedirect("transactionWindow.jsp");
		    		}else {
		    			response.sendRedirect("transactionWindow.jsp?err=Transaction failed");
		    		}
		    		
		    	
		    
			
		
		doGet(request, response);
	}

}
