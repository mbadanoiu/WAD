/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import daos.boughtPackageDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Savanutul
 */
public class buyController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Object user = request.getSession().getAttribute("user");
            if(user != null){
                boughtPackageDAO bpd = boughtPackageDAO.getInstance();
                String name = request.getParameter("Name");
                String price = request.getParameter("Price");
                if(name != null && price != null){
                    bpd.buyPack(user.toString(), name);
                    request.setAttribute("buy", "Congratulations "+user+"! You have succesfully bought the "+name+" pack for "+price+" lei");
                    RequestDispatcher rd = request.getRequestDispatcher("jsp/buy.jsp");
                    rd.forward(request, response);
                }
                else {
                    request.setAttribute("buy", "We appologise, "+user+", but there seems to have been an error while processing your request. \n"+
                            "Try again in a short while");
                    RequestDispatcher rd = request.getRequestDispatcher("jsp/buy.jsp");
                    rd.forward(request, response);
                }
            }
            else {
                response.sendRedirect("jsp/logOrRegister.jsp");
            }
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
