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
</style>
</head>
<body>

<center>
<h1>Add Books</h1>
<form action="./update" method="post">
<table border=2>
    <tr>
       <th>Book id:</th><td><input type="text"></td>
    </tr>   
    <tr>
       <th>Book Name:</th><td><input type="text"></td>
    </tr>
    <tr>
       <th>Author Name:</th><td><input type="text"></td>
    </tr>
    <tr>
       <th>Book Price:</th><td><input type="text"></td>
    </tr>
</table>
<input type="submit" name="Update" value="Update">

</form>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
</center>
</body>
</html>