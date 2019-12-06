<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1" %>


<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New Account</title>
</head>
<body>
	<%
	try {

		//Get the database connection			
		String url = "jdbc:mysql://database-2.ctq2hg6xl253.us-east-2.rds.amazonaws.com:3306/DollarTreeFlights";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection(url, "asma526", "Password1");
				
		//Create a SQL statement
		Statement stmt = con.createStatement();
		
		//Get username and password 
		String Name = request.getParameter("name");
		String Username = request.getParameter("username");
		String Password = request.getParameter("password");
		String User_Type =  request.getParameter("usertype");
		
		//See if username exists 
		String check = "SELECT * FROM Person where user_name='"+Username+"'";
		ResultSet result = stmt.executeQuery(check);
		if (result.next()) {
			%>
			<script>
			if (!alert("This username already exists! Please use a different username and try again")) {
				window.location.replace("signup.jsp");
			}
			</script>
			<%
			con.close();
		}
		
		else {
		//Insert into person
		String p = "INSERT INTO Person values (?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(p);
		ps.setString(1, Username);
		ps.setString(2, Password);
		ps.setString(3, Name);
		ps.executeUpdate();
		
		//Insert into user type
		String u;
		PreparedStatement us;
		
		if (User_Type.equals("Customer Representative")) {
			u = "INSERT INTO Customer_Rep values (?)";
			us = con.prepareStatement(u);
			us.setString(1, Username);
			us.executeUpdate();
		}
		else if (User_Type.equals("Customer")) {
			u = "INSERT INTO Customer values (?)";
			us = con.prepareStatement(u);
			us.setString(1, Username);
			us.executeUpdate();
		}
		
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		
		%>
		<script>
		if (!alert("Congratulations! Account created!")) {
			window.location.replace("index.jsp");
		}
		</script>
		<%
		}
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("Insert failed :()");
	}
%>
</body>
</html>