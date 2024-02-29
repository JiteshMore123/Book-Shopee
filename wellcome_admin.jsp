<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<h1>ADMIN PAGE</h1>
 <header background="https://designmodo.com/demo/emailtemplate/images/footer.jpg" >
        <a href="WellCome.jsp">Home</a> &nbsp;&nbsp;&nbsp;&nbsp;
       <a href="login.jsp">Login</a> &nbsp;&nbsp;&nbsp;&nbsp;
       <a href="register.jsp">Register</a>  &nbsp;&nbsp;&nbsp;&nbsp;
       <a href="add.jsp">Add</a>&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="remove.jsp">Remove</a>&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="update.jsp">Update</a>&nbsp;&nbsp;&nbsp;&nbsp;
       </div>
       </header>
       &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<table border="5" >
             <tr>
                 <th>Book Name</th>
                 <th>Author</th>
                 <th>Price</th>
             </tr>
       <% 
       try{
               ResultSet rs=(ResultSet)session.getAttribute("rs8");
               
               while(rs.next()) {
				
       %>
             <tr>
                 <td><a href="Book.jsp?BKID=<%=rs.getString("Books_Id")%>"> <%=rs.getString("Books_name")%></a></td>
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
</center>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
</body>
</html>