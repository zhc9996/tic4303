

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
			try {
				PrintWriter out = response.getWriter();
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minidb", "root", "root");
				String name=request.getParameter("txtName");				
				String password=request.getParameter("txtPwd");
				String statement = "select * from login where uname='" + request.getParameter("txtName") + "' and password='" + request.getParameter("txtPwd") + "'";
				PreparedStatement ps=con.prepareStatement(statement );
				
				//PreparedStatement ps=con.prepareStatement("select * from login where uname=? and password=?");
				//ps.setString(1, name);
				//ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				int attrNo = 0;
				String uname ="";
				if(rs.next()) {	
					++attrNo;
					uname = rs.getString("uname");
					request.setAttribute("name"+attrNo, rs.getString("name"));
					request.setAttribute("email"+attrNo, rs.getString("email"));
					request.setAttribute("phoneNo"+attrNo, rs.getInt("phoneNumber"));
					request.setAttribute("gender"+attrNo, rs.getString("gender")); 
					request.setAttribute("country"+attrNo, rs.getString("country"));
					request.setAttribute("qualification"+attrNo, rs.getString("qualification"));
					while(rs.next()) {
						++attrNo;
						request.setAttribute("name"+attrNo, rs.getString("name"));
						request.setAttribute("email"+attrNo, rs.getString("email"));
						request.setAttribute("phoneNo"+attrNo, rs.getInt("phoneNumber"));
						request.setAttribute("gender"+attrNo, rs.getString("gender"));
						request.setAttribute("country"+attrNo, rs.getString("country"));
						request.setAttribute("qualification"+attrNo, rs.getString("qualification"));
					}
					int rowTatal = attrNo;
					request.setAttribute("rowTatal", rowTatal + 1);
					request.setAttribute("uname", uname);
					request.getRequestDispatcher("welcome.jsp").forward(request, response);
				}else {
					request.setAttribute("error", "incorrect cerdentials");
					request.getRequestDispatcher("Index.jsp").forward(request, response);								
				}						
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.setAttribute("test", request.getParameter("txtSearch"));
		//request.getRequestDispatcher("Index.jsp").forward(request, response);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/minidb", "root", "root");
			String statement = "insert into test values('" + request.getParameter("txtAdd") + "')";
			PreparedStatement ps=con.prepareStatement(statement);
			ps.executeUpdate();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
//		PrintWriter myResponse = response.getWriter();
//        String message = "This is your response from a GET call. <br> The response is a Java Servlet !";
//             
//     
//        myResponse.println( "\n" +"<title> Example of using Java Servlet with GET Call Method !</title>\n" +
//             "\n" +
//             "<h2 align=center>" + message + "</h2>\n" +
//             "<ul>\n" +
//             "  <li><b>You entered the name </b>: "       + request.getParameter("txtSearch") + "\n" +
//             "  </li><li><b>You entered the telephone# </b>: " + request.getParameter("telephone") + "\n" +
//             "</li></ul>\n" +
//             "");
    
	}
}
