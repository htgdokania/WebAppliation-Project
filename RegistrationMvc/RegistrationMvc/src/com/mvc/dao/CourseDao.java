package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean.CourseBean;
import com.mvc.util.DBConnection;
 
public class CourseDao { 
     public String registerUser(CourseBean courseBean)
     {
    	 String courseId = courseBean.getCourseId();
    	 String courseName=courseBean.getCourseName();
    	 String courseDesc=courseBean.getCourseDesc();
    	 String courseFee=courseBean.getCourseFee();
    	 String courseMat=courseBean.getCourseMat();
         
         
         Connection con = null;
         PreparedStatement preparedStatement = null;   
         try
         {
             con = DBConnection.createConnection();

             String queryCheck = "SELECT * from course WHERE course_id =? ";
             preparedStatement  = con.prepareStatement(queryCheck);
             preparedStatement.setString(1,courseId);
             int y  = preparedStatement.executeUpdate();
             if(y==1) {//if ID already exists
                 return "Failed!! Course ID already exists";
            }
             
             String query= "insert into course values(?,?,?,?,?)";
             preparedStatement  = con.prepareStatement(query);
             preparedStatement.setString(1, courseId);
             preparedStatement.setString(2, courseName);
             preparedStatement.setString(3,	courseDesc);
             preparedStatement.setString(4, courseFee);
             preparedStatement.setString(5, courseMat);

             int i= preparedStatement.executeUpdate();
             if (i!=0)  //Just to ensure data has been inserted into the database
             return "SUCCESS"; 
         }
         catch(SQLException e)
         {
            e.printStackTrace();
         }       
         return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
     }
}