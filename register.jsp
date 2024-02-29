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
 h2{
   border: 2px outset lightblack;
   background-color:lightblue;
 }
 footer{
   border: 2px outset lightblack;
   background-color:lightblue;
   }
  div{
    border: 8px outset lightblack;
   }

</style>
</head>
<body align="center">
<center>
        <h2><b>IndiaBookStore</b></h2>
        Shopping Cart For Book Store</h2>
        <table >
        <div>
        <h3><i>Register</i></h3>
        <form action="./regi" method="post">
        <tr>
        <th>Your Name:</th><td><input type="text" name="name"></td>
        </tr>
        <tr>
        <th>Phone No:</th><td><input type="number" name="phno"></td>
        </tr>
        <tr>
        <th>Address:</th><td><input type="text" name="address"></td>
        </tr>
        <tr>
        <th>Email:</th><td><input type="email" name="email"></td>
        </tr>
        <tr>
        <th>Password:</th><td><input type="password" name="pass"></td>
        </tr>
        
        <tr>
        <td><input type="submit" value="Register"></td>
        <td><input type="reset" value="Reset"></td>
        </tr>
        </table>
</form>
</div>
        <p>Already have an Account?<a href="login.jsp"><i>login here-></i></a></p>
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