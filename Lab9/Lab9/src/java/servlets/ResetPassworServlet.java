/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;
import services.AccountService;

/**
 *
 * @author Jason
 */
public class ResetPassworServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getRequestURL().toString();
        String uuid = request.getParameter("uuid");

        if (uuid != null) {
            getServletContext().getRequestDispatcher("/WEB-INF/restNewPassword.jsp").forward(request, response);
        }

        getServletContext().getRequestDispatcher("/WEB-INF/reset.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF");
        String url = request.getRequestURL().toString();
        String email = request.getParameter("email");
        

        AccountService as = new AccountService();
        

        as.resetPassword(email, path, url);

    }

}
