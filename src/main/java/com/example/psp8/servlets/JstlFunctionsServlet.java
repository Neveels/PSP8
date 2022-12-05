package com.example.psp8.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(name = "jstlFunctionsServlet", value = "/jstl-functions")
public class JstlFunctionsServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setAttribute("lorem", TEXT);
//        req.setAttribute("lorem_length", TEXT.length());
        getServletContext().getRequestDispatcher("/jstl-functions.jsp").forward(req, resp);
    }
}
