import java.io.IOException;
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
import javax.servlet.http.HttpSession;
@WebServlet("/Customer")
public class customer extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int Q=Integer.parseInt(req.getParameter("qty"));
		
		HttpSession session=req.getSession();
		String BKID=(String) session.getAttribute("bookid"); 		
		
		System.out.println("Book id in customer servelet="+BKID);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		
		System.out.println("driver loaded for customer page");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/book_shopee","root","root");
		System.out.println("connection established");
	
		PreparedStatement ptsd=con.prepareStatement("select * from books where  Books_Id=?");
		ptsd.setString(1, BKID);
		
		ResultSet rs=ptsd.executeQuery();
		
		session.setAttribute("rs3", rs);
		session.setAttribute("Q1", Q);
		
		
		resp.sendRedirect("CustomerPage.jsp");
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
	
	
	
}
