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
import Model.User;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	
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
		out.println("<h1>Add user</h1>");
		
		if((request.getParameter("email") != null) &&  (request.getParameter("fname") != null)  &&  (request.getParameter("lname") != null ) &&  (request.getParameter("pwd") != null ) &&  (request.getParameter("pwda") != null )&&  (request.getParameter("mobile") != null )) {
			
			out.println("<h1>Add user</h1>");
			
			UserDAO userDAO = new UserDAO(connection);
			
			
			User user = new User(0,"MALE","2021-01-01",request.getParameter("email"),request.getParameter("fname")+request.getParameter("lname"),"98",request.getParameter("pwd"),1);
		    if(userDAO.addData(user)){
		    	out.println("parameters ok");
				response.sendRedirect("manager/cashiers.jsp");
		    }else {
		    	response.sendRedirect("manager/cashiers.jsp?err=Registration failed");
		    }
			
		}else {
			out.println("parameters wrong");
		}
		doGet(request, response);
	}

}
