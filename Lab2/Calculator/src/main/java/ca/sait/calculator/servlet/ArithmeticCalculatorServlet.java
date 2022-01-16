/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.sait.calculator.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jason
 */
public class ArithmeticCalculatorServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/arithmaticcalculator.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String result = "---";
        String firString = request.getParameter("first");
        String secString = request.getParameter("second");

        if (firString == "" && secString == "") {
            result = "---";
        } else if (firString != null && secString != null) {
            try {
                int first = Integer.parseInt(firString);
                int second = Integer.parseInt(secString);
                int intResult = 0;

                switch (request.getParameter("btn")) {
                    case "add":
                        intResult = first + second;
                        break;
                    case "sub":
                        intResult = first - second;
                        break;
                    case "mul":
                        intResult = first * second;
                        break;
                    case "mod":
                        intResult = first / second;
                        break;
                }
                result = String.valueOf(intResult);
            } catch (Exception e) {
                result = "invalid";
            }

        } else {
            result = "invalid";
        }

        request.setAttribute("result", result);
        getServletContext().getRequestDispatcher("/WEB-INF/arithmaticcalculator.jsp").forward(request, response);

    }
}
