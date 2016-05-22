/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package daos;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;
import models.Blog;
import utils.CreateJSP;
import utils.dbConnection;

/**
 *
 * @author Savanutul
 */
public class blogDAO {
    private Connection connection;
    private static blogDAO instance;
    
    public static blogDAO getInstance() {
        if (instance == null) {
            instance = new blogDAO();
        }
        return instance;
    }
    
    private blogDAO() {}
    
    public boolean blogExists(String path) throws ClassNotFoundException, SQLException {
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.blogs");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if((rs.getString("PATH")).equals(path)){
                    ps.close();
                    return true;
                }
            }
            ps.close();
        } 
        catch (SQLException ex) {
            ex.printStackTrace();
        }        
        return false;
    }
    
    public void addBlog(String name, String author, String type, boolean isPublic, String rawInput) throws SQLException, FileNotFoundException, ClassNotFoundException{
        connection=dbConnection.getConnection();
        try {
            String path= "../createdjsp/"+UUID.randomUUID().toString().replace("-","")+".jsp"; //if push comes to shove C:\Users\Savanutul\Documents\NetBeansProjects\WADProject\web\createdjsp
            while(blogExists(path))
                path = "../createdjsp/"+UUID.randomUUID().toString().replace("-","")+".jsp";
            if(CreateJSP.createJSP("C:\\Users\\Savanutul\\Documents\\NetBeansProjects\\WADProject\\web\\"+path.substring(2),
                    CreateJSP.createContent(name, rawInput))){
                PreparedStatement ps = connection.prepareStatement("INSERT INTO wadproject.blogs (BLOGNAME, AUTHOR, BLOGTYPE, PATH, PUBLIC)"
                        + " VALUES('"+name+"', '"+author+"', '"+type+"', '"+path+"', "+isPublic+")");
                ps.executeUpdate();
                ps.close();
            }
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public ArrayList<Blog> getAllBlogs() throws ClassNotFoundException, SQLException, IOException {
        ArrayList<String> temp=new ArrayList<>();
        ArrayList<Blog> blogs=new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.blogs");
            ResultSet rs = ps.executeQuery();
            int rowsNo=0;
            while (rs.next()){
                rowsNo++;
                temp.add(rs.getString("BLOGNAME"));
                temp.add(rs.getString("AUTHOR"));
                temp.add(rs.getString("BLOGTYPE"));
                temp.add(rs.getString("PATH"));
                temp.add(rs.getString("PUBLIC"));
            }
            int elements = 5;
            for(int i=0; i<rowsNo*elements; i+=elements){
                blogs.add(new Blog(temp.get(i), temp.get(i+1), temp.get(i+2),
                         temp.get(i+3), Boolean.parseBoolean(temp.get(i+4))));
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return blogs;
    }
    
    public ArrayList<Blog> getPublicBlogs() throws ClassNotFoundException, SQLException, IOException {
        ArrayList<String> temp=new ArrayList<>();
        ArrayList<Blog> blogs=new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.blogs");
            ResultSet rs = ps.executeQuery();
            int rowsNo=0;
            while (rs.next()){
                if(rs.getBoolean("PUBLIC")){
                    rowsNo++;
                    temp.add(rs.getString("BLOGNAME"));
                    temp.add(rs.getString("AUTHOR"));
                    temp.add(rs.getString("BLOGTYPE"));
                    temp.add(rs.getString("PATH"));
                    temp.add(rs.getString("PUBLIC"));
                }
            }
            int elements = 5;
            for(int i=0; i<rowsNo*elements; i+=elements){
                blogs.add(new Blog(temp.get(i), temp.get(i+1), temp.get(i+2),
                         temp.get(i+3), Boolean.parseBoolean(temp.get(i+4))));
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return blogs;
    }
    
    public ArrayList<Blog> getTypeBlogs(String type) throws ClassNotFoundException, SQLException, IOException {
        ArrayList<String> temp=new ArrayList<>();
        ArrayList<Blog> blogs=new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.blogs");
            ResultSet rs = ps.executeQuery();
            int rowsNo=0;
            while (rs.next()){
                if(type.equals(rs.getString("BLOGTYPE")) || type.equalsIgnoreCase("All")){
                    rowsNo++;
                    temp.add(rs.getString("BLOGNAME"));
                    temp.add(rs.getString("AUTHOR"));
                    temp.add(rs.getString("BLOGTYPE"));
                    temp.add(rs.getString("PATH"));
                    temp.add(rs.getString("PUBLIC"));
                }
            }
            int elements = 5;
            for(int i=0; i<rowsNo*elements; i+=elements){
                blogs.add(new Blog(temp.get(i), temp.get(i+1), temp.get(i+2),
                         temp.get(i+3), Boolean.parseBoolean(temp.get(i+4))));
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return blogs;
    }
    
    public ArrayList<Blog> getUserBlogs(String user) throws ClassNotFoundException, SQLException, IOException {
        ArrayList<String> temp=new ArrayList<>();
        ArrayList<Blog> blogs=new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.blogs");
            ResultSet rs = ps.executeQuery();
            int rowsNo=0;
            while (rs.next()){                
                if(user.equals(rs.getString("AUTHOR"))){
                    rowsNo++;
                    temp.add(rs.getString("BLOGNAME"));
                    temp.add(rs.getString("AUTHOR"));
                    temp.add(rs.getString("BLOGTYPE"));
                    temp.add(rs.getString("PATH"));
                    temp.add(rs.getString("PUBLIC"));
                }
            }
            int elements = 5;
            for(int i=0; i<rowsNo*elements; i+=elements){
                blogs.add(new Blog(temp.get(i), temp.get(i+1), temp.get(i+2),
                         temp.get(i+3), Boolean.parseBoolean(temp.get(i+4))));
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return blogs;
    }
    
    public Blog getBlog(String blog) throws ClassNotFoundException, SQLException {
        connection=dbConnection.getConnection();
        Blog b = null;
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.blogs"+
                                                                    " WHERE BLOGNAME= '"+blog+"' ");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                b = new Blog(rs.getString("BLOGNAME"), rs.getString("AUTHOR"), rs.getString("BLOGTYPE"),
                        rs.getString("PATH"), rs.getBoolean("PUBLIC"));
                ps.close();
            }
            ps.close();
        } 
        catch (SQLException ex) {
            ex.printStackTrace();
        }        
        return b;
    }
}
