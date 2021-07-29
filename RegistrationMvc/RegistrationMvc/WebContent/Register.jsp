<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script> 
function validate()
{ 
     var name = document.form.name.value;
     var email = document.form.email.value;
     var password = document.form.password.value;
     var phoneno = document.form.phoneno.value; 
     var address= document.form.address.value;
     var photo = document.form.photo.value; 
      
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
     else if(password.length<6)
     { 
     alert("Password must be at least 6 characters long."); 
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

     else if (address==null || address=="")
     { 
         alert("address can't be blank"); 
         return false; 
     }
 } 
</script> 
</head>
<body style="font-size:30px;">
<center><h2>New User Registration </h2></center>
    <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
        <table align="center">
         <tr>
         <td>Name</td>
         <td><input type="text" name="name" /></td>
         </tr>
         <tr>
         <td>Email</td>
         <td><input type="text" name="email" /></td>
         </tr>
         <tr>
         <td>Password</td>
         <td><input type="password" name="password" /></td>
         </tr>
         <tr>
         <td>Phone Number</td>
         <td><input type="text" name="phoneno" /></td>
         </tr>
         <tr>
         <td>Address</td>
         <td><input type="text" name="address" /></td>
         </tr>
         <tr>
         <td>Photo</td>
         <td><input type="text" name="photo" /></td>
         </tr>
         <tr>
         <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
         </tr>
         <tr>
         <td></td>
         <td><input type="submit" value="Register"></input>
         <input type="reset" value="Reset"></input>
         <input type="submit" value="Home" onclick="window.location='Home.jsp'">
         </input></td>
         </tr>
        </table>
    </form>
</body>
</html>