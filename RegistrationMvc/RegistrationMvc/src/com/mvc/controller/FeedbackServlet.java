package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.mvc.bean.FeedbackBean;
import com.mvc.dao.FeedbackDao;
 
public class FeedbackServlet extends HttpServlet {
  
     public FeedbackServlet() {
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String userId = request.getParameter("userId");
         String name = request.getParameter("name");
         String email = request.getParameter("email");
         String phoneno = request.getParameter("phoneno");
         String feedback = request.getParameter("feedback");
          
         FeedbackBean feedbackBean = new FeedbackBean();
        //Using Java Beans - An easiest way to play with group of related data
         feedbackBean.setUserId(userId);
         feedbackBean.setName(name);
         feedbackBean.setEmail(email);
         feedbackBean.setFeedback(feedback);
         
         FeedbackDao feedbackDao = new FeedbackDao();
          
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userRegistered = feedbackDao.registerUser(feedbackBean);
          
         if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         {
            request.getRequestDispatcher("/Success.jsp").forward(request, response);
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/Feedback.jsp").forward(request, response);
         }
     }
}