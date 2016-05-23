<!DOCTYPE html>
<meta charset="UTF-8">
<html lang="en-US">
	<head>


	<style>
	
		body{
          height: 800px;  
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
	      height:541px;
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
  	.dropdown-content {
    display: none;
    position: absolute;
    background-color: #20B2AA;
    max-width: 304px;
    box-shadow: 0px 4px 8px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    font-size: 14px;
}

.dropdown-content a:hover {background-color: #d8d8d8}

.blog_button:hover .dropdown-content {
    display: block;
}
.gym_button:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #006699;
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



	</style>
		<title>WorthFit</title>
	</head>

<body>

<!-- Header -->
<div id="header">
	<div id="header_layer1">
	<div class="sticky">
        <span><b>Hello, user!</b></span>
        <div class="logout">
        <a href="http://localhost:8080/WADProject/controllers/logoutController.java">Logout</a>
        </div>
    </div>
	</div>

	<div id="header_layer2">
		<div id="logo">
                    <img src="http://localhost:8080/WADProject/jsp/images/smiley.png" alt="logo">
		</div>
		<div id="business_name">
			<div>WorthFit</div>
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
		<a href="http://localhost:8080/WADProject/jsp/createBlog.jsp"><div class="header_top">Create Blog</div></a>
                        <% } %>
		<!-- menu -->
	</div>
</div>
<Br>

<div class="content">
	<div class="content_div">
		<div class="blog_button">
			<div class="blog_title">
				<h2>Blog</h2>
			</div>
			<a href="http://localhost:8080/WADProject/jsp/blog.jsp"><div class="image">
				<img src="http://localhost:8080/WADProject/jsp/images/blog.png" class="img-rounded" alt="blogs" width="304" height="170">
			</div></a>
			<div class="dropdown-content">
    				<a href="#"><b>Click on the image to find out more about our articles!</b></a>
  			</div>
		</div>
		<div class="gym_button">
			<div class="gym_title">
				<h2>Gym Packages</h2>
			</div>
			<a href="http://localhost:8080/WADProject/jsp/gymPackages.jsp"><div class="image">
				<img src="http://localhost:8080/WADProject/jsp/images/fitlog.png" class="img-rounded" alt="packs" width="304" height="170">
			</div></a>
			<div class="dropdown-content">
    				<a href="#"><b>Click on the image to join a gym programme today!</b></a>
  			</div>
		</div>
	</div>
</div>

<div id="footer">
	
	<div class="Links">
	
	<div class="footerDiv">
      <div class="footerDetailTitle">Fitness</div>
      <a href="aboutus.jsp"><div class="footerDetailSubtitle">About Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Join Us</div></a>
      <a href="contactus.jsp"><div class="footerDetailSubtitle">Contact Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Details</div></a>
      <a href="trainers.jsp"><div class="footerDetailSubtitle">Trainers</div></a>
			
		</div>
	</div>
</div>

</body>

</html>

