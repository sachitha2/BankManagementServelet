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

import DAO.UserDAO;
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
		
		
			UserDAO userDAO = new UserDAO(connection);
			
			
			User user = new User(0,"MALE","2021-01-01",request.getParameter("email"),request.getParameter("fname")+request.getParameter("lname"),"98",request.getParameter("pwd"),1);
		    Customer customer = new Customer(0, getServletInfo(), getServletInfo(), getServletInfo(), getServletInfo(), getServletInfo(), getServletName(), getServletInfo());
			if(userDAO.addData(user)){
		    	out.println("parameters ok");
				response.sendRedirect("manager/cashiers.jsp");
		    }else {
		    	response.sendRedirect("manager/cashiers.jsp?err=Registration failed");
		    }
			
		
		doGet(request, response);
	}

}
