<!DOCTYPE html>
<meta charset="UTF-8">
<html lang="en-US">
	<head>

	<script>
	
	</script>

	<style>
	
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
	      width: 80%;
	      margin-left:auto;
	      margin-right: auto;
      }

      .blog_button{
        width:304px;
        height:350px;
        background-color: #FFFFF0;
        display: inline-block;
        margin-left:110px;
        margin-right: 70px;
      }

      .gym_button{
        width:304px;
        height:350px;
        background-color: #FFFFF0;
        display: inline-block;
        margin-left:70px;
        margin-right: auto;
      }

      .blog_title{
        color: #20B2AA;
        width:304px;
        margin-left:120px;
      }

      .gym_title{
        color: #20B2AA;
        width:304px;
        margin-left: 70px;
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
	.img-responsive,
	.thumbnail > img,
	.thumbnail a > img,
	.carousel-inner > .item > img,
	.carousel-inner > .item > a > img {
  		display: block;
  		max-width: 100%;
  		height: auto;
	}
	.img-rounded {
 		border-radius: 6px;
	}
	.image{
  		width:304px;
  		height:170px;
  		margin-left: auto;
  		margin-right: auto;
  	}

    .sticky{
      margin-left: 950px;
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
    .tr1, .tr2, .tr3{
      width: 1000px;
      height: 200px;
      margin-bottom: 20px;
      margin-left: 100px;
    }
    .tr1_content, .tr2_content, .tr3_content{
      width: 400px;
      margin-left: 30px;
      color: #20B2AA;
      font-size: 18px;
    }
    .tr1_img, .tr1_content{
      display: inline-block;
    }
    .tr2_img, .tr2_content{
      display: inline-block;
    }
    .tr3_img, .tr3_content{
      display: inline-block;
    }
    
.tr1_img, .tr2_img, .tr3_img {
  
  -webkit-box-shadow: 5px 5px 5px #111;
          box-shadow: 5px 5px 5px #111;  
}


  </style>

  </head>

<body>

<!-- Header -->
<div id="header">
    <% Object user = request.getSession().getAttribute("user");
                if(user != null) { %>
  <div id="header_layer1">
  
                    <div class="sticky">
                    <span><b>Hello, <% out.print(user.toString()); %>!</b></span>
                    <div class="logout">
                    <a href="http://localhost:8080/WADProject/logoutController">Logout</a>
                    </div>
                    <% } %>
    </div>
  </div>

  <div id="header_layer2">
    <div id="logo">
      <img src="http://localhost:8080/WADProject/jsp/images/smiley.png">
    </div>
    <div id="business_name">
      <div>WorthFit</div>
    </div>
    <a href="http://localhost:8080/WADProject/jsp/gymPackages.jsp"><div class="header_top last_header">Gym Packs</div></a>
    <a href="http://localhost:8080/WADProject/jsp/blog.jsp"><div class="header_top">Blog</div></a>
    <a href="http://localhost:8080/WADProject/jsp/index.jsp"><div class="header_top">Home</div></a>
    <% if (user == null) { %>
    <a href="http://localhost:8080/WADProject/jsp/registration.jsp"><div class="header_top">Register</div></a>
    <a href="http://localhost:8080/WADProject/jsp/login.jsp"><div class="header_top">Login</div></a>
    <% }
    else { %>
    <a href="http://localhost:8080/WADProject/jsp/profile.jsp"><div class="header_top">Profile</div></a>
    <a href="http://localhost:8080/WADProject/jsp/createBlog.jsp"><div class="header_top">Create Blog</div></a>
    <% } %>
    <!-- menu -->
  </div>
</div>
<Br>
<!-- Service div -->
<div class="content">
  <div class="tr1">
    <div class="tr1_img">
      <img src="http://localhost:8080/WADProject/jsp/images/trainer1.png" class="img-rounded" alt="welcome" width="170" height="200">
    </div>
    <div class="tr1_content">
      <span>Meet </span><span><b>Dylan</b><span>! He is the perfect trainer if you want to have a healthy lifestyle and keep your body in shape!</span>
    </div>
  </div>
<div class="tr2">
  <div class="tr2_img">
      <img src="http://localhost:8080/WADProject/jsp/images/trainer2.png" class="img-rounded" alt="welcome" width="170" height="200">
  </div>
  <div class="tr2_content">
    <span>This is </span><span><b>Miranda</b><span>! She can teach you how to relax and bring harmony into your exercising routine.</span>
  </div>
</div>

<div class="tr3">
  <div class="tr3_img">
      <img src="http://localhost:8080/WADProject/jsp/images/trainer3.png" class="img-rounded" alt="welcome" width="170" height="200">
  </div>
  <div class="tr3_content">
    <span><b>Sheila</b></span> <span> can show you fun and interesting ways to keep active in the gym, but also outside!</span>
  </div>
</div>
</div>





</div>

<div id="footer">
  
  <div class="Links">
  
  <div class="footerDiv">
    <div class="footerDetailTitle">Fitness</div>
      <a href="http://localhost:8080/WADProject/aboutus.jsp"><div class="footerDetailSubtitle">About Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Join Us</div></a>
      <a href="http://localhost:8080/WADProject/programs.jsp"><div class="footerDetailSubtitle">Contact Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Prices</div></a>
      <a href="#"><div class="footerDetailSubtitle">Trainers</div></a>
      
    </div>
  </div>
</div>

</body>

</html>
