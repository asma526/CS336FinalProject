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
<%
String reportType = request.getParameter("type");
%>
<div class="content">
<%		
		try {
			//Get the database connection			
			String url = "jdbc:mysql://database-2.ctq2hg6xl253.us-east-2.rds.amazonaws.com:3306/DollarTreeFlights";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection(url, "asma526", "Password1");
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			
			if (reportType.equals("flightNum")) {
				
				%>
				<form action="">
					Flight Number: <input type="text" name="flightNumber" value=""><br>
					<input type="submit" value="Submit">
				</form>
				<%
				
				//Set up query for getting reservations by flight number
				
				/* String q = "";
				ResultSet result = stmt.executeQuery(q);
				if (result.next()){
					
				} */
			}
			if (reportType.equals("name")) {
				%>
				<form action="">
					First name: <input type="text" name="FirstName" value=""><br>
					Last name: <input type="text" name="LastName" value=""><br>
					<input type="submit" value="Submit">
				</form>
				<%
				
				//Set up query for getting reservations by customer name
				
				/* String q = "";
				ResultSet result = stmt.executeQuery(q);
				if (result.next()){
					
				} */
			}
			
			
			//close the connection.
			con.close();

		} catch (Exception e) {
		System.out.println(e.toString());
		}
	%>
</div>

<br>

</body>
</html>