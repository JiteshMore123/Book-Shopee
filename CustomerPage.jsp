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
h1{
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
   <h1>Shopping Cart For Book Store</h1>
     <form action="./customer_Regi">
     Customer Name:<input type="text" name="name">        <br><br>
     Address:<input type="text" name="address">              <br><br>   
     Phone No:<input type="number" name="phno">             <br><br>
     DoB:<input type="date" name="date"><br><br>
     
     <% try{
             ResultSet  rs = (ResultSet) session.getAttribute("rs3");
             	       int   Q =  (int) session.getAttribute("Q1");
             	       int p;
               while(rs.next()){
            	   p=rs.getInt("Price");
        %> 
        
     Your Order Details:-
     <table border="5">
     <tr><th>Book Name     </th>
     <th>Author          </th>
     <th>Price           </th>
     <th>Quantity       </th>
     <th>Total Price       </th>
     </tr>
     
     <tr><td>  <%=rs.getString("Books_name") %>   </td>
         <td>  <%=rs.getString("Author") %>   </td>
         <td>   <%=rs.getInt("Price") %>  </td>
         <td>   <%out.println(Q);  %>  </td>
         <td>   <% out.println(p*Q);   %>  </td>
     
     
 </table>   
  <%
               }       
       }catch(Exception e){
    	   e.printStackTrace();
       }
       %> 
     <input type="submit" value="Submit" name="Confirm">
     </form>
     <form action="WellCome.jsp">
         <input type="submit" value="Cancel" name="Cancel">
      </form>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<footer align="center">
<a href="amazon.in">Amazon</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href=instagram.com>InstaGram</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="Twiter.com">Twitter</a>
<br>
<b>c 2010-2023 IndiaBookStore.in |</b>  <a href="">Privacy Policy. |<a href="">Tearm Of Use |</a></a></b>
</footer>
    
   


  </center>    
</body>
</html>