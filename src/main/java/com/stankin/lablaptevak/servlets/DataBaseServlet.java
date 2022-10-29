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

@WebServlet(name = "DataBaseServlet", value = "/secret-add")
public class DataBaseServlet extends HttpServlet {
    @Override
    public void init(){
        User admin = new User("admin", "pass");
        DataBase.addUser(admin);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Views/database.jsp");
        requestDispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        boolean isUserAdded = DataBase.addUser(new User(name,pass));
        request.setAttribute("isUserAdded", isUserAdded);
        request.getRequestDispatcher("Views/database.jsp").forward(request,response);
    }
}
