<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Sales Report</title>
</head>
<body>
<center><b><font size ="20">Reservations</font></b></center>
<br>							  
<br>

<div class="content">
	<h2>How would you like to produce reservations?</h2>
	<ul>
       <li><a href="reservationsHandler.jsp?type=flightNum">By Flight Number</a></li>
       <li><a href="reservationsHandler.jsp?type=name">By Customer Name</a></li>            
	</ul>
 </div>

<br>

</body>
</html>