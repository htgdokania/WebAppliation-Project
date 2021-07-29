package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.ContactBean;
import com.mvc.util.DBConnection;
 
public class ContactDao { 
     public String registerUser(ContactBean contactBean)
     {
    	 String userId = contactBean.getUserId();
         String name = contactBean.getName();
         String email = contactBean.getEmail();
         String phoneno =contactBean.getPhoneno();
         String message= contactBean.getMessage();
         
         
         Connection con = null;
         PreparedStatement preparedStatement = null;         
         try
         {
             con = DBConnection.createConnection();
             
             String query= "insert into contact values(?,?,?,?,?,contactid.nextval)";
             preparedStatement  = con.prepareStatement(query);
             preparedStatement.setString(1, userId);
             preparedStatement.setString(2, name);
             preparedStatement.setString(3, email);
             preparedStatement.setString(4, phoneno);
             preparedStatement.setString(5, message);
              
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