/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package listeners;

import daos.blogDAO;
import daos.gymPackageDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import models.Blog;
import models.GymPackage;

/**
 * Web application lifecycle listener.
 *
 * @author Savanutul
 */
public class contexListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            blogDAO bd = blogDAO.getInstance();
            ArrayList<Blog> blogs = bd.getPublicBlogs();
            gymPackageDAO gp = gymPackageDAO.getInstance();
            ArrayList<GymPackage> packages = gp.getAllPackages();
            sce.getServletContext().setAttribute("blogs", blogs);
            sce.getServletContext().setAttribute("packages", packages);
        } catch (ClassNotFoundException | SQLException | IOException ex) {
            Logger.getLogger(contexListener.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
}
