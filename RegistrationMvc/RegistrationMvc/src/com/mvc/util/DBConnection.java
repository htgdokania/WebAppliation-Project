package com.mvc.util;
 
import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBConnection {
 public static Connection createConnection()
 {
     Connection con = null;
     String url = "jdbc:oracle:thin:@DESKTOP-NFOSPN8:1521:XE"; //oracle URL
     String username = "elearning"; // username
     String password = "2321"; // password
     System.out.println("In DBConnection.java class ");
      
     try
     {
         try
         {
            Class.forName("oracle.jdbc.driver.OracleDriver"); //loading MySQL drivers. This differs for database servers 
         } 
         catch (ClassNotFoundException e)
         {
            e.printStackTrace();
         }       
         con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
         System.out.println("Printing connection object "+con);
     } 
     catch (Exception e) 
     {
        e.printStackTrace();
     }   
     return con; 
 }
}