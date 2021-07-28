<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<html>
<div style="text-align:center"><body>
	<h2>User Registered Successfully</h2>
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
