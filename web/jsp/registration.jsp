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
        width:300px;
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
        width: 200px;
        margin-right: auto;
        margin-left: auto;
        color:black;
        font-size: 20px;
      }

    </style>
    <title>Registration</title>
 </head>
 <body>
 <div id="header">
  <div id="header_layer1">
  </div>
 
  <div id="header_layer2">
    <!-- Logo -->
    <div id="logo">
        <img src="http://localhost:8080/WADProject/jsp/images/smiley.png" alt="logo">
      </div>
    <div id="business_name">
      <span>WorthFit</span>
    </div>
    <a href="http://localhost:8080/WADProject/jsp/gymPackages.jsp"><div class="header_top last_header">Gym Packs</div></a>
    <a href="http://localhost:8080/WADProject/jsp/blog.jsp"><div class="header_top">Blog</div></a>
    <a href="#"><div class="header_top">Register</div></a>
    <a href="http://localhost:8080/WADProject/jsp/login.jsp"><div class="header_top">Login</div></a>
    <!-- menu -->
  </div>
</div>
<Br>
<!-- Service div -->
<% if(request.getSession().getAttribute("user") != null) { %>
    <font size="30"> How did you end up here? </font>
<% } 
else { %>
<div class="content">
    
    <%--//////////////////////////////////////--%>
            <% Object temp = request.getAttribute("ufail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                    <font size="30" color="red"> Registration Fail: Username Already Exists </font>
                <% } %>
            <% temp = request.getAttribute("cfail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                    <font size="30" color="red"> Registration Fail: A Valid Country Must Be Selected </font>
                <% } %>
            <% temp = request.getAttribute("pfail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                    <font size="30" color="red"> Registration Fail: Password Repeat Mismatches Password </font>
                <% } %>
            <% temp = request.getAttribute("rsuccess");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                    <font size="30" color="green"> Register Success: Client Registration Success </font>
                <% } %>
    <%--//////////////////////////////////////--%>
    
  <div class="formdiv">
    <div class="login_title">
      <span><b>Register</b></span>
    </div><br><br>  
    <form name="Form" method="POST" onsubmit="return validateForm()" action="http://localhost:8080/WADProject/registrationController">
      First Name:<br>
      <input type="text" name="fname" required><br>
      Last Name:<br>
      <input type="text" name="lname" required><br>
      Username:<br>
      <input type="text" name="uname" required><br>
      Password:<br>
      <input type="password" name="password" required><br>
      Repeat Password:<br>
      <input type="password" name="rpassword" required><br><br>
      Gender:
      <input type="radio" name="gender" value="male" checked> Male
      <input type="radio" name="gender" value="female"> Female<br><br>
      Email:<br>
      <input type="email" name="email" required><br>
      Telephone:<br>
      <input type="tel" name="usrtel"><br><br>
      Country:
      <select name="country">
          <option value="null">Select Country</option>
          <option value="romania">Romania</option>
          <option value="indonesia">Indonesia</option>
          <option value="france">France</option>
          <option value="newzealand">New Zealand</option>
        </select> <br><br>
      Subscription:
      <input type="checkbox" name="subscription"><br><br>
      <input type="submit" value="Register">
      <input type="reset" value="Reset">
    </form> 

  </div>
</div>

    <% } %>
    
<div id="footer">
  
  <div class="Links">
  
    <div class="footerDiv">
      <div class="footerDetailTitle">Fitness</div>
      <a href="http://localhost:8080/WADProject/jsp/aboutus.jsp"><div class="footerDetailSubtitle">About Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Join Us</div></a>
      <a href="programs.html"><div class="footerDetailSubtitle">Contact Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Prices</div></a>
      <a href="http://localhost:8080/WADProject/jsp/trainers.jsp"><div class="footerDetailSubtitle">Trainers</div></a>
      
    </div>
  </div>
</div>

</body>
</html>