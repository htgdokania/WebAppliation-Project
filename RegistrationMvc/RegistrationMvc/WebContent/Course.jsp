<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Course</title>
<script> 
function validate()
{ 
     var courseId = document.form.courseId.value; 
     var courseName = document.form.courseName.value;     
     var courseDesc = document.form.courseDesc.value; 
     var courseFee= document.form.courseFee.value;
     var courseMat= document.form.courseMat.value;
      
     if (courseName==null || courseName=="")
     { 
     alert("Course Name can't be blank"); 
     return false; 
     }

        
     else if (courseDesc==null || courseDesc=="")
     { 
         alert("Add course description"); 
         return false; 
     }
 } 
</script> 
</head>
<body style="font-size:30px;">
<center><h2>Add New Course</h2></center>
    <form name="form" action="CourseServlet" method="post" onsubmit="return validate()">
        <table align="center">       
         <tr>
         <td>Course ID</td>
         <td><input type="text" name="courseId" /></td>
         </tr>
         <tr>
         <td>Course Name</td>
         <td><input type="text" name="courseName" /></td>
         </tr>
         <tr>
         <td>Course Description</td>
         <td><textarea rows = "5" cols= "22" name="courseDesc" /></textarea></td>
         </tr>
         <tr>
         <td>Course Fee</td>
         <td><input name="courseFee" /></td>
         </tr>
         <tr>
         <td>Course Material</td>
         <td><input name="courseMat" /></td>
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