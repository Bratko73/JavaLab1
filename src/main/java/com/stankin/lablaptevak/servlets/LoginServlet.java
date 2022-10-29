package com.stankin.lablaptevak.servlets;


import com.stankin.lablaptevak.database.DataBase;
import com.stankin.lablaptevak.database.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Date;


@WebServlet(name = "LoginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {

    @Override
    public void init(){
        User admin = new User("admin", "pass");
        DataBase.addUser(admin);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Views/login-servlet.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        boolean checkPass = DataBase.checkPass(name,pass);
        if(checkPass){
            getRouted(request, response, name);
        }
        else{
            request.setAttribute("isPassValid", false);
            request.getRequestDispatcher("Views/login-servlet.jsp").forward(request, response);
        }
    }

    public void getRouted(HttpServletRequest request, HttpServletResponse response, String name) throws IOException, ServletException {
        if("admin".equals(name)){
            //request.getRequestDispatcher("Views/database.jsp").forward(request,response);
            response.sendRedirect(request.getContextPath() + "/secret-add");
        }
        else{
            Date date = new Date();
            request.setAttribute("date", date);
            request.getRequestDispatcher("Views/date-time.jsp").forward(request,response);
        }
    }

}
