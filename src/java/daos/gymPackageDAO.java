/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/

package daos;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import models.GymPackage;
import utils.dbConnection;

/**
 *
 * @author Savanutul
 */
public class gymPackageDAO {
    private Connection connection;
    private static gymPackageDAO instance;
    
    public static gymPackageDAO getInstance() {
        if (instance == null) {
            instance = new gymPackageDAO();
        }
        return instance;
    }
    
    private gymPackageDAO() {}
    
    public boolean packageExists(String pName) throws ClassNotFoundException, SQLException {
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM PACKAGES p");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if((rs.getString(1)).equals(pName)){
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
    
    public void addPackage(String name, String type, double price, String gym, String description, String imagePath, boolean available) throws SQLException, FileNotFoundException{
        connection=dbConnection.getConnection();
        try {
            File file = new File(imagePath);
            InputStream image = new FileInputStream(file);
            PreparedStatement ps = connection.prepareStatement("INSERT INTO GYMPACKAGES (NAME, TYPE, PRICE, GYM, DESCRIPTION, IMAGE, AVAILABLE)"
                    + " VALUES('"+name+"', '"+type+"', "+price+", '"+gym+"', '"+description+"', ? ,"+available+")");
            ps.setBinaryStream(6, image, (int) file.length()); ///////must be put as BLOB in pool
            ps.executeUpdate();
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public ArrayList<GymPackage> getTypePackages(String type) throws ClassNotFoundException, SQLException, IOException {
        ArrayList<String> temp=new ArrayList<>();
        ArrayList<Blob> imgTemp=new ArrayList<>();
        ArrayList<GymPackage> packages=new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM GYMPACKAGES p");
            ResultSet rs = ps.executeQuery();
            int columnsNo=rs.getMetaData().getColumnCount();
            int rowsNo=0;
            while (rs.next()){
                rowsNo++;
                for(int i=1; i<=columnsNo; i++){
                    if(i==6)
                        imgTemp.add(rs.getBlob(i));
                    else
                        temp.add(rs.getString(i));
                }
            }
            columnsNo--;
            for(int i=0; i<rowsNo; i++){
                if(type.equals(temp.get(i*columnsNo+1)) || type.equals("All")){
                    Blob blob = imgTemp.get(i);
                    InputStream binaryStream = blob.getBinaryStream(0, blob.length());
                    BufferedImage im = ImageIO.read(binaryStream);
                    packages.add(new GymPackage(temp.get(i*columnsNo), temp.get(i*columnsNo+1),
                            Double.parseDouble(temp.get(i*columnsNo+2)), temp.get(i*columnsNo+3), temp.get(i*columnsNo+4),
                            im, Boolean.parseBoolean(temp.get(i*columnsNo+5))));
                }
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return packages;
    }
    
    public ArrayList<GymPackage> getGymPackages(String gym) throws ClassNotFoundException, SQLException, IOException {
        ArrayList<String> temp=new ArrayList<>();
        ArrayList<Blob> imgTemp=new ArrayList<>();
        ArrayList<GymPackage> packages=new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM GYMPACKAGES p");
            ResultSet rs = ps.executeQuery();
            int columnsNo=rs.getMetaData().getColumnCount();
            int rowsNo=0;
            while (rs.next()){
                rowsNo++;
                for(int i=1; i<=columnsNo; i++){
                    if(i==6)
                        imgTemp.add(rs.getBlob(i));
                    else
                        temp.add(rs.getString(i));
                }
            }
            columnsNo--;
            for(int i=0; i<rowsNo; i++){
                if(gym.equals(temp.get(i*columnsNo+3)) || gym.equals("All")){
                    Blob blob = imgTemp.get(i);
                    InputStream binaryStream = blob.getBinaryStream(0, blob.length());
                    BufferedImage im = ImageIO.read(binaryStream);
                    packages.add(new GymPackage(temp.get(i*columnsNo), temp.get(i*columnsNo+1),
                            Double.parseDouble(temp.get(i*columnsNo+2)), temp.get(i*columnsNo+3), temp.get(i*columnsNo+4),
                            im, Boolean.parseBoolean(temp.get(i*columnsNo+5))));
                }
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return packages;
    }
    
    public ArrayList<GymPackage> getAllPackages() throws ClassNotFoundException, SQLException, IOException {
        ArrayList<String> temp=new ArrayList<>();
        ArrayList<Blob> imgTemp=new ArrayList<>();
        ArrayList<GymPackage> packages=new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM GYMPACKAGES p");
            ResultSet rs = ps.executeQuery();
            int columnsNo=rs.getMetaData().getColumnCount();
            int rowsNo=0;
            while (rs.next()){
                rowsNo++;
                for(int i=1; i<=columnsNo; i++){
                    if(i==6)
                        imgTemp.add(rs.getBlob(i));
                    else
                        temp.add(rs.getString(i));
                }
            }
            columnsNo--;
            for(int i=0; i<rowsNo; i++){
                Blob blob = imgTemp.get(i);
                InputStream binaryStream = blob.getBinaryStream(0, blob.length());
                BufferedImage im = ImageIO.read(binaryStream);
                packages.add(new GymPackage(temp.get(i*columnsNo), temp.get(i*columnsNo+1),
                        Double.parseDouble(temp.get(i*columnsNo+2)), temp.get(i*columnsNo+3), temp.get(i*columnsNo+4),
                        im, Boolean.parseBoolean(temp.get(i*columnsNo+5))));
            }
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return packages;
    }
}
