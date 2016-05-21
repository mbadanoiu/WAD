/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package daos;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import models.Client;
import utils.AES;
import utils.Hash;
import utils.dbConnection;

/**
 *
 * @author Savanutul
 */
public class clientDAO {
    private Connection connection;
    private static clientDAO instance;
    //telephone and card are optional
    //card number is encrypted with AES, needs also to be decrypted when used
    public static clientDAO getInstance() {
        if (instance == null) {
            instance = new clientDAO();
        }
        return instance;
    }
    
    private clientDAO() {}
    
    public boolean userExists(String username) throws ClassNotFoundException, SQLException {
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.clients");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if((rs.getString("USERNAME")).equals(username)){
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
    
    public void addUser(String name, String uname, String pass, String email, String gender, String tel, String country, boolean sub) throws SQLException{
        connection=dbConnection.getConnection();
        try {
            pass=Hash.makeHash(pass);
            PreparedStatement ps = connection.prepareStatement("INSERT INTO wadproject.clients (VIEWNAME, USERNAME, PASS, EMAIL, GENDER, TELEPHONE, COUNTRY, SUBSCRIBED)"
                    + " VALUES('"+name+"', '"+uname+"', '"+pass+"', '"+email+"', '"+gender+"', '"+tel+"', '"+country+"', "+sub+")");
            ps.executeUpdate();
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public void addUser(String name, String uname, String pass, String email, String gender, String tel, String country, boolean sub, String creditCard) throws SQLException{
        connection=dbConnection.getConnection();
        try {
            pass=Hash.makeHash(pass);
            try {
                creditCard=AES.encrypt(new Client(name, uname, email, gender, tel, country, sub), creditCard);
            } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | IllegalBlockSizeException | BadPaddingException | NoSuchProviderException | UnsupportedEncodingException ex) {
                Logger.getLogger(clientDAO.class.getName()).log(Level.SEVERE, null, ex);
                creditCard=null;
            }
            PreparedStatement ps = connection.prepareStatement("INSERT INTO wadproject.clients (VIEWNAME, USERNAME, PASS, EMAIL, GENDER, TELEPHONE, COUNTRY, SUBSCRIBED, CREDITCARD)"
                    + " VALUES('"+name+"', '"+uname+"', '"+pass+"', '"+email+"', '"+gender+"', '"+tel+"', '"+country+"', "+sub+", '"+creditCard+"')");
            ps.executeUpdate();
            ps.close();
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public boolean passwordMatch(String username, String pass) throws SQLException{
        pass=Hash.makeHash(pass);
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.clients");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if((rs.getString("USERNAME")).equals(username)){
                    String temp=rs.getString("PASS");
                    ps.close();
                    return pass.equals(temp);
                }
            }
        }
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean isAdmin(String username){
        connection=dbConnection.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM wadproject.clients");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if((rs.getString("USERNAME")).equals(username)){
                    ps.close();
                    return rs.getBoolean("ADMIN");
                }
            }
            ps.close();
        } 
        catch (SQLException ex) {
            ex.printStackTrace();
        }        
        return false;
    }
}
