package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.mvc.bean.CourseBean;
import com.mvc.dao.CourseDao;
 
public class CourseServlet extends HttpServlet {
  
     public CourseServlet() {
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String courseId = request.getParameter("courseId");
         String courseName = request.getParameter("courseName");
         String courseDesc = request.getParameter("courseDesc");
         String courseFee = request.getParameter("courseFee");
         String courseMat = request.getParameter("courseMat");
          
         CourseBean courseBean = new CourseBean();
        //Using Java Beans - An easiest way to play with group of related data
         courseBean.setCourseId(courseId);
         courseBean.setCourseName(courseName);
         courseBean.setCourseDesc(courseDesc);
         courseBean.setCourseFee(courseFee);
         courseBean.setCourseMat(courseMat);
         
         
         CourseDao courseDao = new CourseDao();
          
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userRegistered = courseDao.registerUser(courseBean);
          
         if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         {
            request.getRequestDispatcher("/Success.jsp").forward(request, response);
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Course.jsp").forward(request, response);
         }
     }
}