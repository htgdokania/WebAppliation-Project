<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact</title>
<script> 
function validate()
{ 
     var userId = document.form.userId.value; 
     var name = document.form.name.value;     
     var email = document.form.email.value;
     var phoneno = document.form.phoneno.value; 
     var message= document.form.message.value;
      
     if (name==null || name=="")
     { 
     alert("Full Name can't be blank"); 
     return false; 
     }
     else if (email==null || email=="")
     { 
     alert("Email can't be blank"); 
     return false; 
     }
     else if (phoneno==null || phoneno=="")
     { 
     alert("phone number can't be blank"); 
     return false; 
     } 
     else if (phoneno.length>10 ||phoneno.length<10)
     { 
     alert("Invalid Phone Number.Enter 10 digit only"); 
     return false; 
     }     
     else if (message==null || message=="")
     { 
         alert("Add some message"); 
         return false; 
     }
 } 
</script> 
</head>
<body style="font-size:30px;">
<center><h2>Contact Form </h2></center>
    <form name="form" action="ContactServlet" method="post" onsubmit="return validate()">
        <table align="center">       
         <tr>
         <td>User ID</td>
         <td><input type="text" name="userId" /></td>
         </tr>
         <tr>
         <td>Name</td>
         <td><input type="text" name="name" /></td>
         </tr>
         <tr>
         <td>Email</td>
         <td><input type="text" name="email" /></td>
         </tr>
         <tr>
         <td>Phone Number</td>
         <td><input type="text" name="phoneno" /></td>
         </tr>
         <tr>
         <td>Message</td>
         <td><textarea rows = "5" cols= "22" name="message" /></textarea></td>
         </tr>
         <tr>
         <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
         </tr>
         <tr>
         <td></td>
         <td><input type="submit" value="Submit"></input>
         <input type="reset" value="Reset"></input>
         <input type="submit" value="Home" onclick="window.location='Home.jsp'"></input>
         </td>
         </tr>
        </table>
    </form>
</body>
</html>