<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>purchase</title>
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
       <h2>Selected Book Details are Displayed</h2>
       
       <% try{
             ResultSet  rs = (ResultSet) session.getAttribute("rs2");
             	   
               while(rs.next()){
            	   
        %> 
       
       <form action="./Customer">
         	   
          Book Name:<%=rs.getString("Books_name") %>       <br><br>
          Author:<%=rs.getString("Author") %>                 <br><br>
          Price:<%=rs.getInt("Price") %>                  <br><br>
          Quantity:<input type="number" name="qty"><br><br>
          
       
       <%
               }       
       }catch(Exception e){
    	   e.printStackTrace();
       }
       %>
          
          <input type="submit" value="Purchase"> 
       </form>
          <form action="Index.jsp">
              <input type="submit" value="Cancel">
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
