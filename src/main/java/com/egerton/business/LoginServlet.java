package com.egerton.business;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    String loginRoute = "login.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(loginRoute);
        dispatcher.forward( request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String message = "Unknown error occurred while authenticating.";
        String messageType = "error";

        //get username and password
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //validate username and password
        if( username == null || password == null){
            message = "Username/Password is missing.";
            messageType = "error";
        } else{
            request.setAttribute("username", username);
            // try login
            if(username != "username@gmail.com" && !password.equals("pass")){
                message = "Login failed. Invalid credentials";
                messageType = "error";
            } else{
                message = "Login was successful.";
                messageType = "success";
            }
        }
        request.setAttribute("message", message);
        request.setAttribute("messageType", messageType);

        RequestDispatcher dispatcher = request.getRequestDispatcher(loginRoute);
        dispatcher.forward( request, response);
    }
}
