package Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EmployeeDAO;
import Model.EmployeeModel;


@WebServlet("/AddEmp")
public class AddEmp extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    
	    EmployeeDAO empDAO = new EmployeeDAO(connection);
		
		PrintWriter out = response.getWriter();
		
		if(request.getParameter("addemp").equals("Submit")) {
			
			EmployeeModel empModel = new EmployeeModel(0,request.getParameter("name"),request.getParameter("dob"),request.getParameter("address"),request.getParameter("mobile"),request.getParameter("email"),request.getParameter("nic"),request.getParameter("username"),request.getParameter("pass"));
			
			
			empDAO.addData(empModel);
			response.sendRedirect("addemp.jsp?msg=done");
		}else {
			response.sendRedirect("addemp.jsp?msg=failed");
		}
		doGet(request, response);
	}

}
