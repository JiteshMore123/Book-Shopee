import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin")
public class admin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String n=req.getParameter("name");
		String p=req.getParameter("pass");
		
		System.out.println(n+" "+p);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver loaded");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/book_shopee", "root","root");
			System.out.println("connection established");
			
			PreparedStatement ptsd=con.prepareStatement("select * from admin_regi");
			ResultSet rs=ptsd.executeQuery();
			
			
			Statement stm=con.createStatement();
			ResultSet rs1=stm.executeQuery("select * from books");
			HttpSession session=req.getSession(); 
			session.setAttribute("rs8", rs1);
			
			
			
			String pass=null;
			String name=null;
			while(rs.next()) {
				pass=rs.getString("password");
				name=rs.getString("name");
			}
			
			if(n.equals(name)&&(p.equals(pass))) {
				System.out.println("wellcome"+name);
				resp.sendRedirect("wellcome_admin.jsp");
			}
			else {
				System.out.println("error");
				resp.sendRedirect("admin.jsp");
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
