<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">

 body {
   border: 5px outset black;
   background-color:HoneyDew;
}
header{
   border: 2px outset lightblack;
   background-color:lightGrey;
 }
 div{
   border: 2px outset lightblack;
   background-color:lightblue;
 }
 footer{
   border: 2px outset lightblack;
   background-color:lightblue;
 }

</style>
</head>
<body>

       <center>
       <div>
       <h1>India Book Store</a></h1>
       
       <header background="https://designmodo.com/demo/emailtemplate/images/footer.jpg" >
        <a href="WellCome.jsp">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;
       <a href="login.jsp">Login</a> &nbsp;&nbsp;&nbsp;&nbsp;
       <a href="register.jsp">Register</a>  &nbsp;&nbsp;&nbsp;&nbsp;
       <a href="#">About</a>&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="#">Contact</a>&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="admin.jsp">Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;
       </div>
       </header>
    
       <h2>Shopping Cart For Book Store</h2>
       
       <h3>Well Come</h3>
       <i ><marquee direction="left" >Special Discounts <u><a href="#">grab here</a></u></marquee></i>
       <p>IndiaBookStore is the Fastest Way To Compare</p>
       <p> Book Prices and Buy Books from Online book</p>
       <p> sellers in India.</p>
       
       <table border="5" >
             <tr>
                 <th>Book Name</th>
                 <th>Author</th>
                 <th>Price</th>
             </tr>
       <% 
       try{
               ResultSet rs=(ResultSet)session.getAttribute("rs1");
               if(!rs.next()){response.sendRedirect("./wellcomeservelet");}
               while(rs.next()) {
				
       %>
             <tr>
                 <td><a href="Book.jsp?BKID=<%=rs.getString("Books_Id")%>"><%=rs.getString("Books_name")%></a></td>
                 <td><%=rs.getString("Author")%></td>
                 <td><%=rs.getString("Price")%></td>
             </tr>
       <%
           }
           }
           catch(Exception e){
        	   e.printStackTrace();
           }
        %>   
             
       
       
       </table>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</center>
<footer align="center">
<a href="amazon.in">Amazon</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=instagram.com>InstaGram</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="Twiter.com">Twitter</a>
<br>
<b>c 2010-2023 IndiaBookStore.in |</b>  <a href="">Privacy Policy. |<a href="">Tearm Of Use |</a></a></b>
</footer>
</body>
</html>