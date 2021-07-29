<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Form</title>
<script> 
function validate()
{ 
     var userId = document.form.userId.value; 
     var name = document.form.name.value;     
     var email = document.form.email.value; 
     var feedback= document.form.feedback.value;
      
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
        
     else if (feedback==null || feedback=="")
     { 
         alert("Add feedback"); 
         return false; 
     }
 } 
</script> 
</head>
<body style="font-size:30px;">
<center><h2>Feedback Form </h2></center>
    <form name="form" action="FeedbackServlet" method="post" onsubmit="return validate()">
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
         <td>Feedback</td>
         <td><textarea rows = "5" cols= "22" name="feedback" /></textarea></td>
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