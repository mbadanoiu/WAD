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

      .sticky{
      margin-left: 900px;
      color: #20B2AA;
      display: inline-block;
    }
    .logout{
      text-decoration: underline;
      display: inline-block;
      margin-left: 20px;
      color: #20B2AA;
    }
    .logout, a:link{
      color: #20B2AA;
    }
    .home{
      text-decoration: underline;
      display: inline-block;
      margin-left: 20px;
      color: #20B2AA;
    }
    .home, a:link{
      color: #20B2AA;
    }

    </style>
    <title>Login</title>
 </head>
 <body>
 <div id="header">
  <div id="header_layer1">
  <div class="sticky">
        <span><b>Hello, user!</b></span>
        <div class="logout">
        <a href="http://localhost:8080/WADProject/controllers/logoutController.java">Logout</a>
        </div>
        <div class="home">
        <a href="index.jsp">Home</a>
        </div>
    </div>
  </div>

  <div id="header_layer2">
    <!-- Logo -->
    <div id="logo">
        <img src="./images/smiley.png" alt="logo">
      </div>
    <div id="business_name">
      <span>WorthFit</span>
    </div>
    <a href="http://localhost:8080/WADProject/jsp/gymPackages.jsp"><div class="header_top last_header">Gym Packs</div></a>
    <a href="http://localhost:8080/WADProject/jsp/blog.jsp"><div class="header_top">Blog</div></a>
    <% Object user = request.getSession().getAttribute("user");
                        if(user == null) { %>
    <a href="http://localhost:8080/WADProject/jsp/registration.jsp"><div class="header_top">Register</div></a>
    <a href="http://localhost:8080/WADProject/jsp/login.jsp"><div class="header_top">Login</div></a>
                        <% } 
                        else { %>
    <a href="http://localhost:8080/WADProject/jsp/profile.jsp"><div class="header_top">Profile</div></a>
                        <% } %>
    <!-- menu -->
  </div>
</div>
<Br>
<!-- Service div -->
<div class="content">
    <% if(user == null) { %>
        <font size="30"> What are you even doing here? </font>
        <%}
    else { %>
  <div class="login_title">
  <span><b>Login</b></span>
  </div><br><br>
  
        <font size="20" color="black">  Purchase Fail: In Order To Purchase Packs You Need to Submit 
        Your Credit Card Number and Input a Valid Telephone Number in Order For Us to Contact You</font>
  
        <% Object temp = request.getAttribute("tfail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                    <font size="30" color="red"> Invalid Telephone </font>
                <% } %>
            <% temp = request.getAttribute("credfail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                    <font size="30" color="red"> Invalid Credit Card Number </font>
                <% } %>
        
  <div class="formdiv">
      <form name="Form" method="POST"  action="http://localhost:8080/WADProject/CTController">
      Telephone:<br>
      <input type="tel" name="Telephone" required><br>
      Credit Card Number:<br>
      <input type="text" name="CreditCard" required><br><br>
      <input type="submit" value="Submit">
    </form> 

  </div>
</div>
                <% } %>
<div id="footer">
  
  <div class="Links">
  
    <div class="footerDiv">
      <div class="footerDetailTitle">Fitness</div>
      <a href="aboutus.jsp"><div class="footerDetailSubtitle">About Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Join Us</div></a>
      <a href="programs.html"><div class="footerDetailSubtitle">Contact Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Details</div></a>
      <a href="trainers.jsp"><div class="footerDetailSubtitle">Trainers</div></a>
      
    </div>
  </div>
</div>


</body>
</html>