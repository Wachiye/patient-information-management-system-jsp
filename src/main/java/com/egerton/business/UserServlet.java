package com.egerton.business;

import com.egerton.data.User;
import com.egerton.data.UserType;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "User", value = "/users")
public class UserServlet extends HttpServlet {
    public void init() throws ServletException{

    }
    /** Process the HTTP GET request */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String firstName = request.getParameter("firstName");
      String lastName = request.getParameter("lastName");
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      UserType userType = UserType.valueOf(request.getParameter("userTYpe"));

    }
    /** Process the HTTP GET request*/
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    /** Called by the servlet engine to release resources */
    public void  destroy(){}
}
