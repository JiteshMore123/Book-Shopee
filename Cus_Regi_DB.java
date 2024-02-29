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
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;



@WebServlet("/customer_Regi")
public class Cus_Regi_DB extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String n=req.getParameter("name");
		String a=req.getParameter("address");
		long l=Long.parseLong( req.getParameter("phno"));
		
		
		HttpSession session=req.getSession();
		int   Q =  (int) session.getAttribute("Q1");
		String BI=(String) session.getAttribute("bookid");
		
		
		System.out.println(n+" "+a+" "+l+" "+Q+" "+BI);

		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver loaded");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/book_shopee", "root","root");
			System.out.println("connection established");
			
			PreparedStatement ptsd=con.prepareStatement("insert into customer_details(customer_name,phone,address,qyt,book_id,order_date) values(?,?,?,?,?,CURDATE())");
			ptsd.setString(1, n);                       
			ptsd.setLong(2, l);
			ptsd.setString(3, a);
			ptsd.setInt(4, Q);
			ptsd.setString(5, BI);
			
			
			int i=ptsd.executeUpdate();
			if(i!=0) {
				System.out.println("success");
				resp.sendRedirect("thankyou.jsp");
			}
			else {
				System.out.println("error");
				resp.sendRedirect("Customer.java");
			}
			
			
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
			
	}
}
