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
<center><b><font size ="20">Most Active Flights</font></b></center>

	<%		
		try {
			//Get the database connection			
			String url = "jdbc:mysql://database-2.ctq2hg6xl253.us-east-2.rds.amazonaws.com:3306/DollarTreeFlights";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection(url, "asma526", "Password1");
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			
			//Set up query for getting flights that are most active
			String q = "";
			ResultSet result = stmt.executeQuery(q);
			
			//Check if result table is empty
			if (result.next()) {

			}
			else {

			}
			
			//close the connection.
			con.close();

		} catch (Exception e) {
		System.out.println(e.toString());
		}
	%>

</body>
</html>