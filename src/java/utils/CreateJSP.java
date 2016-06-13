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
                            " <style>\n" +
"      /* BODY & GENERAL RULES */\n" +
"        body{  \n" +
"          background-color: #FFFFF0;\n" +
"          margin: 0px;\n" +
"          font-family: \"Arial\";\n" +
"          min-width: 1280px;\n" +
"        }\n" +
"\n" +
"      /* HEADER RULES */\n" +
"        #header {\n" +
"            width: 100%;\n" +
"            padding:0px;\n" +
"            margin: 0px;\n" +
"            position: fixed;\n" +
"            min-width: 1280px;\n" +
"            z-index: 100;\n" +
"        }\n" +
"        \n" +
"        .header_top{\n" +
"          background-color: #CCFF33;\n" +
"          font-size: 11px;\n" +
"          color:#20B2AA;\n" +
"          border-radius: 9px;\n" +
"          width: 80px;\n" +
"          height: 14px;\n" +
"          display: inline-block;\n" +
"          position: relative;\n" +
"          float: right;\n" +
"          margin-right: 10px;\n" +
"          margin-left: 10px;\n" +
"          margin-top: 62px;\n" +
"          text-align: center;\n" +
"          padding-top: 2px;\n" +
"          padding-bottom: 2px;\n" +
"\n" +
"        }\n" +
"        .header_top:hover {\n" +
"          color: #990099;\n" +
"\n" +
"        }\n" +
"        .last_header{\n" +
"          margin-right: 100px;\n" +
"        }\n" +
"        #header_layer1{\n" +
"          width: 100%;\n" +
"          height: 12px;\n" +
"          padding:0px;\n" +
"          margin: 0px;\n" +
"          padding-top: 4px;\n" +
"          padding-bottom: 10px;\n" +
"          margin-right: 3%;\n" +
"          background-color: #FFFFF0;\n" +
"          min-width: 1280px;\n" +
"        }\n" +
"        #header_layer2{\n" +
"          background-color: #20B2AA;\n" +
"          width: 100%;\n" +
"          height: 80px;\n" +
"          min-width: 1280px;\n" +
"        }\n" +
"        #header_layer1, #header_layer2{\n" +
"          display: block;\n" +
"        }\n" +
"        \n" +
"        #header_layer2 #logo img{\n" +
"          height: 80px;\n" +
"          position: relative;\n" +
"          display: inline-table;\n" +
"          margin-left: 5%;\n" +
"        }\n" +
"        #header_layer2 #logo{\n" +
"          height: 80px;\n" +
"          width: 100px;\n" +
"          margin: 0px;\n" +
"          margin-left: 5%;\n" +
"        }\n" +
"\n" +
"        #logo {\n" +
"          display: inline-block;\n" +
"          position: relative;\n" +
"        }\n" +
"        #business_name{\n" +
"        font-family: New Century Schoolbook, serif;\n" +
"        font-size: 34px;\n" +
"        text-decoration: none;\n" +
"        color: white;\n" +
"        display: inline-block;\n" +
"        width: 100px;\n" +
"        height: 26px;\n" +
"        margin-bottom: 10px;\n" +
"      }\n" +
"\n" +
"      .content{\n" +
"        margin-top: 170px;\n" +
"        width: 70%;\n" +
"        margin-left:auto;\n" +
"        margin-right: auto;\n" +
"      }\n" +
"\n" +
"      .formdiv{\n" +
"        height:541px;\n" +
"        width:200px;\n" +
"        margin-left:auto;\n" +
"        margin-right: auto;\n" +
"      }\n" +
"\n" +
"      #footer{\n" +
"        margin-top: 50px;\n" +
"        background-color: #20B2AA;\n" +
"        width: 100%;\n" +
"        height: 200px;\n" +
"        width: 100%;\n" +
"      }\n" +
"      .Links{\n" +
"        width: 840px;\n" +
"        height: 160px;\n" +
"        margin-left: auto;\n" +
"        margin-right: auto;\n" +
"        padding-top: 40px;\n" +
"      }\n" +
"\n" +
"      .footerDiv{\n" +
"        display: inline-block;\n" +
"        height: 130px;\n" +
"        width: 165px;\n" +
"        margin-left: 55px;\n" +
"        margin-right: 55px;\n" +
"      }\n" +
"    \n" +
"      .footerDetailTitle {\n" +
"          font-size: 16px;\n" +
"          font-weight: 700;\n" +
"        color: #CCFF33;\n" +
"        width: 70px;\n" +
"        height: 30px;\n" +
"      }\n" +
"      .footerDetailSubtitle{\n" +
"        background-color: #20B2AA;\n" +
"          font-family: arial,sans-serif;\n" +
"        font-size: 14px;\n" +
"        text-decoration: none;\n" +
"        color: white;\n" +
"        height: 20px;\n" +
"        margin-bottom: 10px;\n" +
"        border-bottom: solid;\n" +
"        border-width: 1px;\n" +
"        border-color: #707070;\n" +
"        text-decoration: none;\n" +
"      \n" +
"      } \n" +
"      a:link {\n" +
"        text-decoration: none;\n" +
"      }\n" +
"\n" +
"      .footerDetailSubtitle:hover {\n" +
"          color: #78B3EF;\n" +
"      }\n" +
"      .footerDetailSubtitle:visited {\n" +
"          color: #78B3EF;\n" +
"        \n" +
"      }\n" +
"      \n" +
"      img {\n" +
"          vertical-align: middle;\n" +
"\n" +
"      }\n" +
"      .login_title{\n" +
"        width: 80px;\n" +
"        margin-right: auto;\n" +
"        margin-left: auto;\n" +
"        color:black;\n" +
"        font-size: 20px;\n" +
"      }\n" +
                            "    </style>\n"+
                            "        <title>"+title+"</title>\n" +
                            "    </head>\n" +
                            "    <body>\n"+
                            "<div id=\"header\">\n" +
                            "  <div id=\"header_layer1\">\n" +
                            "  </div>\n" +
                            "  <div id=\"header_layer2\">\n" +
                            "    <!-- Logo -->\n" +
                            "    <div id=\"logo\">\n" +
                            "        <img src=\"http://localhost:8080/WADProject/jsp/images/smiley.png\" alt=\"logo\">\n" +
                            "      </div>\n" +
                            "    <div id=\"business_name\">\n" +
                            "      <span>WorthFit</span>\n" +
                            "    </div>\n" +
                            "    <a href=\"http://localhost:8080/WADProject/jsp/gymPackages.jsp\"><div class=\"header_top last_header\">Gym Packs</div></a>\n" +
                            "    <a href=\"http://localhost:8080/WADProject/jsp/blog.jsp\"><div class=\"header_top\">Blog</div></a>\n" +
                            "    <a href=\"http://localhost:8080/WADProject/jsp/createBlog.jsp\"><div class=\"header_top\">Create Blog</div></a>\n" +
                            "    <!-- menu -->\n" +
                            "  </div>\n" +
                            "</div>\n" +
                            "<Br>\n" +
                            "<!-- Service div -->\n" +
                            "<div class=\"content\">\n" +
                            "<h2>"+title+"</h2>\n" +
                            input +
                            "\n</div>\n" +
                            "<form method=\"POST\" action=\"http://localhost:8080/WADProject/likeBlogController\">\n" +
                            "    <input type=\"hidden\" name=\"title\" value=\""+title+"\">\n" +
                            "    <input type=\"submit\" value=\"Like\">\n" +
                            "</form>\n"+
                            "<div id=\"footer\">\n" +
                            "  <div class=\"Links\">\n" +
                            "    <div class=\"footerDiv\">\n" +
                            "      <div class=\"footerDetailTitle\">Fitness</div>\n" +
                            "      <a href=\"http://localhost:8080/WADProject/jsp/aboutus.jsp\"><div class=\"footerDetailSubtitle\">About Us</div></a>\n" +
                            "    </div>\n" +
                            "    <div class=\"footerDiv\">\n" +
                            "      <a href=\"\"><div class=\"footerDetailTitle\">Join Us</div></a>\n" +
                            "      <a href=\"#\"><div class=\"footerDetailSubtitle\">Contact Us</div></a>\n" +
                            "    </div>\n" +
                            "    <div class=\"footerDiv\">\n" +
                            "      <a href=\"\"><div class=\"footerDetailTitle\">Prices</div></a>\n" +
                            "      <a href=\"http://localhost:8080/WADProject/jsp/trainers.jsp\"><div class=\"footerDetailSubtitle\">Trainers</div></a>\n" +
                            "    </div>\n" +
                            "  </div>\n" +
                            "</div>\n" +
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
           bool = f.createNewFile(); //returns true is successful, else false
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
