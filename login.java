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

@WebServlet("/login")
public class login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
		//Long PN=Long.parseLong(req.getParameter("phno"));
		String E=req.getParameter("email");
		String P=req.getParameter("pass");
		
		System.out.println(" "+E+" "+P);
		
	    
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver loaded login");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/book_shopee","root","root");
			System.out.println("connection established");
			
			PreparedStatement ptsd=con.prepareStatement("select * from register");
			
			
			ResultSet rs=ptsd.executeQuery();
			//Long phone;
			String email=null;
			String pass=null;
			String name=null;
			
			while(rs.next()) {
				//phone=rs.getLong("phone");
				email=rs.getString("email");
				pass=rs.getString("password");
				name=rs.getString("name");
				
			}
			
			if(E.equals(email) && P.equals(pass)) {
				
				System.out.println("wellcome:"+name);
				resp.sendRedirect("WellCome.jsp");
			}  
			else {
				
				System.out.println("error");
				resp.sendRedirect("login.jsp");
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
