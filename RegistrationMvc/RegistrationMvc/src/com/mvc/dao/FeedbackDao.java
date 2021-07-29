package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.FeedbackBean;
import com.mvc.util.DBConnection;
 
public class FeedbackDao { 
     public String registerUser(FeedbackBean feedbackBean)
     {
    	 String userId = feedbackBean.getUserId();
         String name = feedbackBean.getName();
         String email = feedbackBean.getEmail();
         String feedback= feedbackBean.getFeedback();
         
         
         Connection con = null;
         PreparedStatement preparedStatement = null;         
         try
         {
             con = DBConnection.createConnection();
             
             String query= "insert into feedback values(?,?,?,feedid.nextval,?)";
             preparedStatement  = con.prepareStatement(query);
             preparedStatement.setString(1, userId);
             preparedStatement.setString(2, name);
             preparedStatement.setString(3, email);
             preparedStatement.setString(4, feedback);
              
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