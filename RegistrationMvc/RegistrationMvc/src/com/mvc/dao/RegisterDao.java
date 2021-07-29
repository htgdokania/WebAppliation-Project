package com.mvc.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;
 
public class RegisterDao { 
     public String registerUser(RegisterBean registerBean)
     {
         String name = registerBean.getName();
         String email = registerBean.getEmail();
         String password = registerBean.getPassword();
         String phoneno =registerBean.getPhoneno();
         String address= registerBean.getAddress();
         String photo = registerBean.getPhoto();
         
         
         Connection con = null;
         PreparedStatement preparedStatement = null;         
         try
         {
             con = DBConnection.createConnection();
             String query= "insert into user1(user_id,name,phone_no,email,address,reg_date,password,upload_photo) values(userid2.nextval,?,?,?,?,CURRENT_DATE,?,?)";
             //String query = "insert into user1 (SlNo,fullName,Email,userName,password) values (NULL,?,?,?,?)"; //Insert user details into the table 'USERS'
             preparedStatement  = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
             preparedStatement.setString(1, name);
             preparedStatement.setString(2, phoneno);
             preparedStatement.setString(3, email);
             preparedStatement.setString(4, address);
             preparedStatement.setString(5, password);
             preparedStatement.setString(6, photo);
              
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