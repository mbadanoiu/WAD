/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controllers;

import daos.gymPackageDAO;
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
public class addPackController extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("Name").trim();
            String type = request.getParameter("Type").trim();
            String price = request.getParameter("Price").trim();
            String gym = request.getParameter("Gym").trim();
            String imagepath = request.getParameter("Image").trim();
            if(name.isEmpty() || type.isEmpty() || price.isEmpty() || gym.isEmpty() || imagepath.isEmpty()){
                request.setAttribute("fail", true);
                RequestDispatcher rd = request.getRequestDispatcher("jsp/addPack.jsp");
                rd.forward(request, response);
            }
            else{
                if(!imagepath.endsWith(".jpg") && !imagepath.endsWith(".png") && !imagepath.endsWith(".jpeg")){
                    request.setAttribute("ffail", true);
                    RequestDispatcher rd = request.getRequestDispatcher("jsp/addPack.jsp");
                    rd.forward(request, response);
                }
                gymPackageDAO gpd = gymPackageDAO.getInstance();
                if(gpd.packageExists(name)){
                    request.setAttribute("pfail", true);
                    RequestDispatcher rd = request.getRequestDispatcher("jsp/addPack.jsp");
                    rd.forward(request, response);
                }
                boolean av=false;
                    if(request.getParameter("Available") != null)
                        if(request.getParameter("Available").equals("on"))
                            av=true;
                gpd.addPackage(name, type, Double.parseDouble(price), gym, request.getParameter("Description"),
                        imagepath, av);
                request.getServletContext().setAttribute("packages", gpd.getAllPackages());
                response.sendRedirect("jsp/profile.jsp");
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
            try {
                processRequest(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(addPackController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(addPackController.class.getName()).log(Level.SEVERE, null, ex);
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
            try {
                processRequest(request, response);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(addPackController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(addPackController.class.getName()).log(Level.SEVERE, null, ex);
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
