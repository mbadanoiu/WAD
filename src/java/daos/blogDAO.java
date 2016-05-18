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
            String path= "./"+UUID.randomUUID().toString().replace("-","")+".jps";
            while(blogExists(path))
                path = "./cretedjsp/"+UUID.randomUUID().toString().replace("-","")+".jps";
            if(CreateJSP.createJSP(path, CreateJSP.createContent(name, rawInput))){
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
            int columnsNo=rs.getMetaData().getColumnCount();
            int rowsNo=0;
            while (rs.next()){
                rowsNo++;
                for(int i=1; i<=columnsNo; i++){
                    temp.add(rs.getString(i));
                }
            }
            columnsNo--;
            for(int i=0; i<rowsNo; i++){
                blogs.add(new Blog(temp.get(i*columnsNo+1), temp.get(i*columnsNo+2), temp.get(i*columnsNo+3),
                         temp.get(i*columnsNo+4), Boolean.parseBoolean(temp.get(i*columnsNo+5))));
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
            int columnsNo=rs.getMetaData().getColumnCount();
            int rowsNo=0;
            while (rs.next()){
                rowsNo++;
                for(int i=1; i<=columnsNo; i++){
                    if(rs.getBoolean("PUBLIC"))
                        temp.add(rs.getString(i));
                }
            }
            columnsNo--;
            for(int i=0; i<rowsNo; i++){///////////////temp.get(i*columnsNo+1) because temp.get(i*columnsNo) is x auto incrementor id
                blogs.add(new Blog(temp.get(i*columnsNo+1), temp.get(i*columnsNo+2), temp.get(i*columnsNo+3),
                         temp.get(i*columnsNo+4), Boolean.parseBoolean(temp.get(i*columnsNo+5))));
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
            int columnsNo=rs.getMetaData().getColumnCount();
            int rowsNo=0;
            while (rs.next()){
                rowsNo++;
                for(int i=1; i<=columnsNo; i++){
                    if(type.equals(rs.getString("BLOGTYPE")) || type.equalsIgnoreCase("All"))
                        temp.add(rs.getString(i));
                }
            }
            columnsNo--;
            for(int i=0; i<rowsNo; i++){
                blogs.add(new Blog(temp.get(i*columnsNo+1), temp.get(i*columnsNo+2), temp.get(i*columnsNo+3),
                         temp.get(i*columnsNo+4), Boolean.parseBoolean(temp.get(i*columnsNo+5))));
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return blogs;
    }
}
