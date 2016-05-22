<%@page import="models.GymPackage"%>
<%@page import="daos.blogDAO"%>
<%@page import="models.Blog"%>
<%@page import="java.util.ArrayList"%>
<%@page import="daos.likedblogDAO"%>
<html>
 <head>
 <style>
      /* BODY & GENERAL RULES */
        body{  
          background-color: #FFFFF0;
          margin: 0px;
          font-family: "Arial";
          min-width: 1280px;
        }

      /* HEADER RULES */
        #header {
            width: 100%;
            padding:0px;
            margin: 0px;
            position: fixed;
            min-width: 1280px;
            z-index: 100;
        }
        
        .header_top{
          background-color: #CCFF33;
          font-size: 11px;
          color:#20B2AA;
          border-radius: 9px;
          width: 80px;
          height: 14px;
          display: inline-block;
          position: relative;
          float: right;
          margin-right: 10px;
          margin-left: 10px;
          margin-top: 62px;
          text-align: center;
          padding-top: 2px;
          padding-bottom: 2px;

        }
        .header_top:hover {
          color: #990099;

        }
        .last_header{
          margin-right: 100px;
        }
        #header_layer1{
          width: 100%;
          height: 12px;
          padding:0px;
          margin: 0px;
          padding-top: 4px;
          padding-bottom: 10px;
          margin-right: 3%;
          background-color: #FFFFF0;
          min-width: 1280px;
        }
        #header_layer2{
          background-color: #20B2AA;
          width: 100%;
          height: 80px;
          min-width: 1280px;
        }
        #header_layer1, #header_layer2{
          display: block;
        }
        
        #header_layer2 #logo img{
          height: 80px;
          position: relative;
          display: inline-table;
          margin-left: 5%;
        }
        #header_layer2 #logo{
          height: 80px;
          width: 100px;
          margin: 0px;
          margin-left: 5%;
        }

        #logo {
          display: inline-block;
          position: relative;
        }
        #business_name{
        font-family: New Century Schoolbook, serif;
        font-size: 34px;
        text-decoration: none;
        color: white;
        display: inline-block;
        width: 100px;
        height: 26px;
        margin-bottom: 10px;
      }

      .content{
        margin-top: 170px;
        width: 70%;
        margin-left:auto;
        margin-right: auto;
      }

      .formdiv{
        height:541px;
        width:200px;
        margin-left:auto;
        margin-right: auto;
      }

      #footer{
        margin-top: 50px;
        background-color: #20B2AA;
        width: 100%;
        height: 200px;
        width: 100%;
      }
      .Links{
        width: 840px;
        height: 160px;
        margin-left: auto;
        margin-right: auto;
        padding-top: 40px;
      }

      .footerDiv{
        display: inline-block;
        height: 130px;
        width: 165px;
        margin-left: 55px;
        margin-right: 55px;
      }
    
      .footerDetailTitle {
          font-size: 16px;
          font-weight: 700;
        color: #CCFF33;
        width: 70px;
        height: 30px;
      }
      .footerDetailSubtitle{
        background-color: #20B2AA;
          font-family: arial,sans-serif;
        font-size: 14px;
        text-decoration: none;
        color: white;
        height: 20px;
        margin-bottom: 10px;
        border-bottom: solid;
        border-width: 1px;
        border-color: #707070;
        text-decoration: none;
      
      } 
      a:link {
        text-decoration: none;
      }

      .footerDetailSubtitle:hover {
          color: #78B3EF;
      }
      .footerDetailSubtitle:visited {
          color: #78B3EF;
        
      }
      
      img {
          vertical-align: middle;

      }
      .login_title{
        width: 80px;
        margin-right: auto;
        margin-left: auto;
        color:black;
        font-size: 20px;
      }
      
      #writtenBlogs,
      #likedBlogs,
      #purchedPacks {
				color: #20B2AA;
				font-size: 22px;
			}
       .firstblog {
        width: 500px;
        height: 200px;
        background-color: palegreen;
        margin-bottom: 20px;
      }

    </style>
    <title>Login</title>
 </head>
 <body>
 <div id="header">
  <div id="header_layer1">
  </div>

  <div id="header_layer2">
    <!-- Logo -->
    <div id="logo">
        <img src="./images/smiley.png" alt="logo">
      </div>
    <div id="business_name">
      <span>WorthFit</span>
    </div>
    <a href="http://localhost:8080/WADProject/jsp/index.jsp"><div class="header_top last_header">Home</div></a>
    <a href="http://localhost:8080/WADProject/jsp/gymPackages.jsp"><div class="header_top last_header">Gym Packs</div></a>
    <% Object user = request.getSession().getAttribute("user");
        if(user != null) { %>
    <a href="http://localhost:8080/WADProject/jsp/blog.jsp"><div class="header_top">Blog</div></a>
    <a href="http://localhost:8080/WADProject/jsp/createBlog.jsp"><div class="header_top">Create Blog</div></a>
    <!-- menu -->
    <% } %>
  </div>
</div>
<Br>
<!-- Service div -->
<div class="content">
  <%-- ///////////////////////////////// --%>
  <% if(user != null) { 
        boolean admin = false;
        if(request.getSession().getAttribute("admin") != null)
          admin=Boolean.parseBoolean(request.getSession().getAttribute("admin").toString());%>
                <h4> <% if(admin) out.print("Admin "); %> <% out.print(user.toString()); %>'s Profile </h4>
            
  <% if(admin) { %>
    <a href="http://localhost:8080/WADProject/jsp/addPack.jsp"> Add Gym Packages </a>
  <% } %>
  
  <div id="likedBlogs"> 
      <% likedblogDAO lbd = likedblogDAO.getInstance();
        ArrayList<Blog> blogs = lbd.getLikedBlogs(user.toString());
        if(blogs != null){
            if(!blogs.isEmpty())
                for(Blog b : blogs) { %>
                <div class="firstblog">
                    <a href=" <% out.print(b.getPath()); %> "> <% out.print(b.getName()); %> </a> <br/>
                    Author: <% out.print(b.getAuthor()); %> <br/>
                    Type: <% out.print(b.getType()); %> <br/>
                </div>
                    <% }
            }
            else { %>
                <font size="30" color="#20B2AA"> We are Experiencing Technical Difficulties with the Blog Database. Please Come Back Later </font>
                <% } %>
  </div><br/><br/>
  <div id="writtenBlogs"> 
      <% blogDAO bd = blogDAO.getInstance();
        blogs = bd.getUserBlogs(user.toString());
        if(blogs != null){
            if(!blogs.isEmpty())
                for(Blog b : blogs) { %>
                <div class="firstblog">
                    <a href=" <% out.print(b.getPath()); %> "> <% out.print(b.getName()); %> </a> <br/>
                    Author: <% out.print(b.getAuthor()); %> <br/>
                    Type: <% out.print(b.getType()); %> <br/>
                </div>
                    <% }
            }
            else { %>
                <font size="30" color="#20B2AA"> We are Experiencing Technical Difficulties with the Blog Database. Please Come Back Later </font>
                <% } %>
  </div><br/><br/>
  <div id="purchedPacks">
     <% ArrayList<GymPackage> packs = (ArrayList<GymPackage>) request.getServletContext().getAttribute("packages");
        if(packs != null){
            if(!packs.isEmpty()) {
                for(GymPackage p : packs) { %>
  <img src=" <% out.print(p.getImage()); %> " alt="Java Buffer Image error"/>
            Name: <% out.print(p.getName()); %> 
            <input type="hidden" value="<% out.print(p.getName()); %>" name="Name"/> <br/>
            Price: <% out.print(p.getPrice()); %>
            <input type="hidden" value="<% out.print(p.getPrice()); %>" name="Price"/> <br/>
            Gym: <% out.print(p.getGymName()); %> <br/>
            Type: <% out.print(p.getType()); %> <br/>
            <% String description = p.getDescription();
                if(description != null)
                    if(!description.isEmpty()) { %>
            Description: <% out.print(description); %>
                    <% } 
                }
            }
            else { %>
                <h4>Seems you have yet to purchase a gym pack from us. Happy fitness, and hope you sponsor us soon. </h4>
            <% }
        }
        else { %>
            <h4> We are Experiencing Technical Difficulties with the Gym Packages Database. Please Come Back Later </h4>
        <% } %>
  </div>
  <%-- ///////////////////////////////// --%>
  
</div>
  <% } 
  else { %>
    <font size="30"> You seem to be in a hurry to get here </font>
  <% } %>

<div id="footer">
  
  <div class="Links">
  
    <div class="footerDiv">
      <div class="footerDetailTitle">Fitness</div>
      <a href="about.html"><div class="footerDetailSubtitle">About Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Join Us</div></a>
      <a href="programs.html"><div class="footerDetailSubtitle">Contact Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Prices</div></a>
      <a href="list.html"><div class="footerDetailSubtitle">Trainers</div></a>
      
    </div>
  </div>
</div>

</body>
</html>