/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.attendance.controller;

import java.io.IOException;
//import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.attendance.service.LoginService;
import org.atendance.model.LoginModel;
import org.attendance.dao.LoginDao;

/**
 *
 * @author raben
 */
//@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    
    public LoginServlet(){    
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        
        LoginModel loginModel = new LoginModel(); //creating object for LoginModel class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
 
        loginModel.setUserName(userName); //setting the username and password through the loginModel object then only you can get it in future.
        loginModel.setPassword(password);
        
        LoginDao loginDao = new LoginDao(); //creating object for LoginDao. This class contains main logic of the application. 
        String userValidate = loginDao.authenticateUser(loginModel); //Calling authenticateUser function
        
        if(userValidate.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
        {
            request.setAttribute("userName", userName); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
            request.getRequestDispatcher("Welcome/Index.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
        }
        else
        {
            request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
            request.getRequestDispatcher("/Error.jsp").forward(request, response);//forwarding the request
        }
    }
}
