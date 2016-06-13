/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utils;

import daos.gymPackageDAO;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import models.Client;
import models.GymPackage;

/**
 *
 * @author Savanutul
 */
public class AES {
    
    private static final String salt="cr@ck-@-l@ck1ng!!!";
    
    public static String encrypt(Client c, String plainText) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException, NoSuchProviderException, UnsupportedEncodingException{
        String client = makeKey(c, salt);
        byte[] clientKey = client.getBytes("UTF-8");
        MessageDigest sha = MessageDigest.getInstance("SHA-1");
        clientKey = Arrays.copyOf(sha.digest(clientKey), 16);
        SecretKey SecKey = new SecretKeySpec(clientKey, "AES");
        
        Cipher AesCipher = Cipher.getInstance("AES");

        byte[] byteText = plainText.getBytes();
        
        AesCipher.init(Cipher.ENCRYPT_MODE, SecKey);
        byte[] byteCipherText = AesCipher.doFinal(byteText);
        
//        System.out.println(Hex.asHex(byteCipherText));
//        System.out.println("Plain Text "+plainText);
        return Hex.asHex(byteCipherText);
    }
    
    public static String decrypt(Client c, String hexText) throws IllegalBlockSizeException, InvalidKeyException, NoSuchAlgorithmException, NoSuchProviderException, NoSuchPaddingException, BadPaddingException, UnsupportedEncodingException{
        byte[] cipherText = Hex.asBytes(hexText);
        String client = makeKey(c, salt);
        byte[] clientKey = client.getBytes("UTF-8");
        MessageDigest sha = MessageDigest.getInstance("SHA-1");
        clientKey = Arrays.copyOf(sha.digest(clientKey), 16);
        SecretKey SecKey = new SecretKeySpec(clientKey, "AES");
        
//        System.out.println(hexText);//////////////////////////
        
        Cipher AesCipher = Cipher.getInstance("AES");
        
        AesCipher.init(Cipher.DECRYPT_MODE, SecKey);
        byte[] bytePlainText = AesCipher.doFinal(cipherText);
        
//        System.out.println(new String(bytePlainText));//////////////////////
        return new String(bytePlainText);
    }
    
    private static String makeKey(Client c, String salt){
        return c.getName()+c.getUname()+c.getGender()+salt;
    }
    
//    public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException, NoSuchProviderException, UnsupportedEncodingException, ClassNotFoundException, SQLException, IOException{
//        Client Ron = new Client("Ron", "Swatson", "rs@as.ro", "Male", "012931", "dormania", true);
//        Client Rom = new Client("Rom", "Swanson", "rs@as.ro", "Male", "012931", "dormania", true);
//        decrypt(Ron, encrypt(Ron, "123"));
//        decrypt(Rom, encrypt(Rom, "123"));
//        gymPackageDAO gpd = gymPackageDAO.getInstance();
//        ArrayList<GymPackage> packs = gpd.getAllPackages();//(ArrayList<GymPackage>) request.getServletContext().getAttribute("packages");
//        if(packs != null)
//            if(!packs.isEmpty())
//                for(GymPackage p : packs) {
//                    System.out.println(p.getImage());
//                }
//    }
}
