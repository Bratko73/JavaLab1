package com.stankin.lablaptevak.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Date;

@WebServlet(name = "DateTimeServlet",value = "/date-time")
public class DateTimeServlet extends HttpServlet {
    private Date date;

    @Override
    public void init() throws ServletException {
        super.init();
        date = new Date();
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setAttribute("date", date.toString());
        request.getRequestDispatcher("Views/date-time.jsp").forward(request, response);
    }

}
