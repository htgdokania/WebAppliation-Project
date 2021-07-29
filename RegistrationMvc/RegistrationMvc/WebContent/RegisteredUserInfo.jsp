<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<html>
<div style="text-align:center"><body>
	<%
	Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-NFOSPN8:1521:XE", "elearning", "2321");
    
    Statement statement = con.createStatement();
    ResultSet resultSet =null;
	String queryCheck = "SELECT max(user_Id) from user1 ";
    resultSet = statement.executeQuery(queryCheck);
	resultSet.next();
	%>
	<h2>User Registered Successfully</h2>
	<br><b>USER ID (auto generated): </b>  <%=" "+resultSet.getString("MAX(USER_ID)") %>  </br>
	<br><b>Name:</b>  <%="	"+request.getParameter("name") %>  </br>
	<br><b>Email: </b><%="	"+request.getParameter("email") %></br>
	<br><b>Password:</b><%="***************"%></br>
	<br><b>Phone Number: </b><%="	"+request.getParameter("phoneno") %></br>
	<br><b>Address: </b><%="	"+request.getParameter("address") %></br>
	<br><b>Photo: </b><%="	"+request.getParameter("photo") %></br>
	
	<input type="submit" value="New user Registration" 
			onclick="window.location='Register.jsp'"></input>
			
	<input type="submit" value="Home" onclick="window.location='Home.jsp'"></input>
</body>
</div>
</html>
