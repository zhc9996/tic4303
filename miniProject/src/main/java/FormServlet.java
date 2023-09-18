

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		try {
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minidb", "root", "root");
			String name=request.getParameter("txtName");				
			String password=request.getParameter("txtPwd");
			String statement = "update login set name = '" + request.getParameter("txtName") + "', email = '" + request.getParameter("txtEmail") + "', phoneNumber = '" + request.getParameter("txtNumber") +  "', gender = '" + request.getParameter("txtGender") +  "', country = '" + request.getParameter("txtCountry") +  "', qualification = '"+ request.getParameter("txtQual") +  "' where uname = '" +  request.getParameter("txtUname") + "'";                                                 
			PreparedStatement ps=con.prepareStatement(statement);
			int i = ps.executeUpdate();			
			if (i > 0) {
				request.getRequestDispatcher("thanksPage.jsp").forward(request, response);
	        } 			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
