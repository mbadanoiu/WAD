/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utils;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Savanutul
 */
public class CreateJSP {
    public static String createContent(String title, String input){ /////////need to change in head and body with generic info in blog.jsp (scripts, css, nav with hrefs)
        String output="<%@page contentType=\"text/html\" pageEncoding=\"UTF-8\"%>\n" +
                            "<!DOCTYPE html>\n" +
                            "<html>\n" +
                            "    <head>\n" +
                            "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
                            "        <title>"+title+"</title>\n" +
                            "    </head>\n" +
                            "    <body>\n"+
                            "       <div>"+
                            input +
                            "       </div>"+
                            "    </body>\n" +
                            "</html>";
        return output;
    } 
    
    public static boolean createJSP(String path, String content){
        boolean bool=false;
        try{
           // create new file
           File f = new File(path);

           // tries to create new file in the system
           bool =f.createNewFile(); //returns true is successful, else false
           System.out.println("File created: "+bool);
           if(bool){
                PrintWriter writer = new PrintWriter(f, "UTF-8");
                writer.println(content);
                writer.close();
           }
        }        
        catch(IOException e){
           e.printStackTrace();
        }
        return bool;
    }
}
