/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/

package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import models.Blog;
import utils.dbConnection;

/**
 *
 * @author Savanutul
 */
public class likedblogDAO {
    //added when client likes a blog
    //removed when client unlikes it
    //can be seen in profile
    private Connection connection;
    private static likedblogDAO instance;
    public static likedblogDAO getInstance() {
        if (instance == null) {
            instance = new likedblogDAO();
        }
        return instance;
    }
    
    private likedblogDAO() {}
    
    public void like(String user, String blog){
        connection=dbConnection.getConnection();
        try {
            PreparedStatement psU = connection.prepareStatement("SELECT * FROM wadproject.clients"+
                                                                    " WHERE USERNAME='"+user+"' ");
            PreparedStatement psB = connection.prepareStatement("SELECT * FROM wadproject.blogs"+
                                                                    " WHERE BLOGNAME='"+blog+"' ");
            ResultSet rsU = psU.executeQuery();
            ResultSet rsB = psB.executeQuery();
            rsU.next();
            rsB.next();
            int u = rsU.getInt("x");
            int b = rsB.getInt("x");
            if((u != 0) && (b != 0)){
                PreparedStatement ps2 = connection.prepareStatement("INSERT INTO wadproject.likedblogs (BLOG, USER)"
                        + " VALUES("+ b +","+ u +")");
                ps2.executeUpdate();
                ps2.close();
            }            
            psU.close();
            psB.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public void unlike(String user, String blogURL){
        connection=dbConnection.getConnection();
        try {
            PreparedStatement psU = connection.prepareStatement("SELECT * FROM wadproject.clients"+
                                                                    " WHERE USERNAME='"+ user +"' ");
            PreparedStatement psB = connection.prepareStatement("SELECT * FROM wadproject.blogs"+
                                                                    " WHERE PATH='"+ blogURL +"' ");
            ResultSet rsU = psU.executeQuery();
            ResultSet rsB = psB.executeQuery();
            rsU.next();
            rsB.next();
            int u = rsU.getInt("x");
            int b = rsB.getInt("x");
            if((u != 0) && (b != 0)){
                PreparedStatement ps2 = connection.prepareStatement("DELETE FROM wadproject.likedblogs WHERE USER = '"+ u +"' "+
                                                                            " AND BLOG = '"+ b +"')");
                ps2.executeUpdate();
                ps2.close();
            }            
            psU.close();
            psB.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public ArrayList<Blog> getLikedBlogs(String user){
        ArrayList<Blog> likedBlogs = new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement psU = connection.prepareStatement("SELECT * FROM wadproject.clients"+
                                                                    " WHERE USERNAME= '"+user+"' ");
            ResultSet rsU = psU.executeQuery();
            rsU.next();
            int u = rsU.getInt("x");
            if(u != 0){
                PreparedStatement ps2 = connection.prepareStatement("SELECT * FROM wadproject.likedblogs WHERE USER = '"+ u +"' ");
                ResultSet rs2 = ps2.executeQuery();
                while(rs2.next()){
                    PreparedStatement ps3 = connection.prepareStatement("SELECT * FROM wadproject.blogs WHERE x = '"+ Integer.parseInt(rs2.getString("BLOG")) +"' ");
                    ResultSet rs3 = ps3.executeQuery();
                    rs3.next();
                    likedBlogs.add(new Blog(rs3.getString("BLOGNAME"), rs3.getString("AUTHOR"), rs3.getString("BLOGTYPE"),
                        rs3.getString("PATH"), Boolean.parseBoolean(rs3.getString("PUBLIC"))));
                    ps3.close();
                }
                ps2.close();
            }            
            psU.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return likedBlogs;
    }
}
