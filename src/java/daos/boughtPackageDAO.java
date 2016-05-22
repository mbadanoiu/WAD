/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package daos;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.imageio.ImageIO;
import models.GymPackage;
import utils.dbConnection;

/**
 *
 * @author Savanutul
 */
public class boughtPackageDAO {
    //added when client makes a purchase
    //read by client in blogProfile -> bought packages
    private Connection connection;
    private static boughtPackageDAO instance;
    public static boughtPackageDAO getInstance() {
        if (instance == null) {
            instance = new boughtPackageDAO();
        }
        return instance;
    }
    
    private boughtPackageDAO() {}
    
    public void buyPack(String user, String pack){
        connection=dbConnection.getConnection();
        try {
            PreparedStatement psU = connection.prepareStatement("SELECT * FROM wadproject.clients"+
                                                                    " WHERE USERNAME='"+user+"' ");
            PreparedStatement psP = connection.prepareStatement("SELECT * FROM wadproject.gympackages"+
                                                                    " WHERE PACKNAME='"+pack+"' ");
            ResultSet rsU = psU.executeQuery();
            ResultSet rsP = psP.executeQuery();
            rsU.next();
            rsP.next();
            int u = rsU.getInt("x");
            int p = rsP.getInt("x");
            if((u != 0) && (p != 0)){
                PreparedStatement ps2 = connection.prepareStatement("INSERT INTO wadproject.boughtpackages (GYMPACK, USER)"
                        + " VALUES("+ p +","+ u +")");
                ps2.executeUpdate();
                ps2.close();
            }            
            psU.close();
            psP.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public ArrayList<GymPackage> getBoughtPacks(String user) throws IOException{
        ArrayList<GymPackage> boughtPacks = new ArrayList<>();
        connection=dbConnection.getConnection();
        try {
            PreparedStatement psU = connection.prepareStatement("SELECT * FROM wadproject.clients"+
                                                                    " WHERE USERNAME= '"+user+"' ");
            ResultSet rsU = psU.executeQuery();
            rsU.next();
            int u = rsU.getInt("x");
            if(u != 0){
                PreparedStatement ps2 = connection.prepareStatement("SELECT * FROM wadproject.boughtpackages WHERE USER = '"+ u +"' ");
                ResultSet rs2 = ps2.executeQuery();
                while(rs2.next()){
                    PreparedStatement ps3 = connection.prepareStatement("SELECT * FROM wadproject.gympackages WHERE x = '"+ Integer.parseInt(rs2.getString("BLOG")) +"' ");
                    ResultSet rs3 = ps3.executeQuery();
                    rs3.next();
                    Blob blob = rs3.getBlob("IMAGE");
                    InputStream binaryStream = blob.getBinaryStream(0, blob.length());
                    BufferedImage im = ImageIO.read(binaryStream);
                    boughtPacks.add(new GymPackage(rs3.getString("PACKNAME"), rs3.getString("PACKTYPE"), 
                            Double.parseDouble(rs3.getString("PRICE")), rs3.getString("GYMNAME"),
                            rs3.getString("DESCRIPTION"), im, Boolean.parseBoolean(rs3.getString("AVAILABLE"))));
                    ps3.close();
                }
                ps2.close();
            }            
            psU.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return boughtPacks;
    }
}
