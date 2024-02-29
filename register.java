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

@WebServlet("/regi")
public class register extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
		String n=req.getParameter("name");
		long ph=Long.parseLong(req.getParameter("phno"));
		String a=req.getParameter("address");
		String e=req.getParameter("email");
		String p=req.getParameter("pass");
		
		System.out.println(n+" "+ph+" "+a+" "+e+" "+p);
		
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("connection success register");

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/book_shopee","root","root");
			System.out.println("connection success");
			
			PreparedStatement ptsd=con.prepareStatement("insert into register(name,phone,address,email,password) values(?,?,?,?,?)");
			ptsd.setString(1, n);
			ptsd.setLong(2, ph);
			ptsd.setString(3, a);
			ptsd.setString(4, e);
			ptsd.setString(5, p);
			
			int i=ptsd.executeUpdate();
			if(i!=0) {
				System.out.println("success");
				resp.sendRedirect("login.jsp");
			}
			else {
				System.out.println("error");
				resp.sendRedirect("register.jsp");
			}
			
			
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("connection success register");
		
	}
	
}
