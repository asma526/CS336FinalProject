<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Dollar Tree Flights</title>
</head>
<body>
<center><b><font size ="20">Welcome to Dollar Tree Flights</font></b></center>
<br>							  
<br>

<font size ="4">Enter Username and Password to sign in:</font>
<br>
	<form method="post" action="loginp.jsp">
	<table>
	<tr>    
	<td>Username</td><td><input type="text" name="username"></td>
	</tr>
	<tr>
	<td>Password</td><td><input type="text" name="password"></td>
	</tr>
	</table>
	<input type="submit" value="Sign in">
	</form>
<br>



<font size ="4">or Sign up if you don't already have an account:</font>
<br>
	<form method= "post" action="signup.jsp">
		<input type="submit" value="Sign Up">
	</form>
<br>

</body>
</html>