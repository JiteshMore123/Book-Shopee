import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class add extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String i=req.getParameter("id");
		String n=req.getParameter("name");
		String a=req.getParameter("author");
		String p=req.getParameter("price");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver loaded");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/book_shopee", "root","root");
			System.out.println("connection established");
		
			PreparedStatement ptsd=con.prepareStatement("insert into books(Books_Id,Books_Name,Author,Price) values(?,?,?,?");
			ptsd.setString(1, i);                       
			ptsd.setNString(2, n);
			ptsd.setString(3, a);
			
			
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
	}

}
