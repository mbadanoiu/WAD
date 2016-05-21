/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import daos.clientDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Savanutul
 */
public class xRegistrationController extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            clientDAO cd = clientDAO.getInstance();
            if(cd.userExists(request.getParameter("uname"))){
                request.setAttribute("ufail", true);
                RequestDispatcher rd = request.getRequestDispatcher("jsp/extendedRegistration.jsp");
                rd.forward(request, response);
            }
            if(request.getParameter("country").equals("null")){
                request.setAttribute("cfail", true);
                RequestDispatcher rd = request.getRequestDispatcher("jsp/extendedRegistration.jsp");
                rd.forward(request, response);
            }
            String cc = request.getParameter("creditcard").trim();
            if(cc.isEmpty()){
                request.setAttribute("credfail", true);
                RequestDispatcher rd = request.getRequestDispatcher("jsp/extendedRegistration.jsp");
                rd.forward(request, response);
            }
            else{
                if(!request.getParameter("password").equals(request.getParameter("rpassword"))) {
                    request.setAttribute("pfail", true);
                    RequestDispatcher rd = request.getRequestDispatcher("jsp/extendedRegistration.jsp");
                    rd.forward(request, response);
                }
                else{
                    boolean spam=false;
                    if(request.getParameter("subscription") != null)
                        if(request.getParameter("subscription").equals("on"))
                            spam=true;
                    cd.addUser(request.getParameter("fname")+" "+request.getParameter("lname"), request.getParameter("uname"),
                            request.getParameter("password"), request.getParameter("email"), request.getParameter("gender"),
                            request.getParameter("usrtel"), request.getParameter("country"), spam, cc);
                    request.setAttribute("rsuccess", true);
                    RequestDispatcher rd = request.getRequestDispatcher("jsp/extendedRegistration.jsp");
                    rd.forward(request, response);
                }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registrationController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registrationController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registrationController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(registrationController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
