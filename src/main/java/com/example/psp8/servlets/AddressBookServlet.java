package com.example.psp8.servlets;

import com.example.psp8.dao.Dao;
import com.example.psp8.dao.DaoImpl;
import com.example.psp8.model.AddressBook;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "addressbookServlet", value = "/addressBook")
public class AddressBookServlet extends HttpServlet {
    private Dao addressBookDao;

    public void init() {
        addressBookDao = new DaoImpl();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setAttribute("addressBook", addressBookDao.getAll());
        getServletContext().getRequestDispatcher("/addressbooks.jsp").forward(req, resp);
    }
}
