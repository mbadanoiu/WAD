<%@page import="models.Blog"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<html lang="en-US">
	<head>
		
		<style>
			/* BODY & GENERAL RULES */
				body{
					/*height: 1400px;	*/
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


			#footer{
				margin-top: 50px;
				background-color: #20B2AA;
				width: 100%;
				height: 200px;
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
			.firstblog,
			.secondblog,
			.thirdblog {
				width: 500px;
				height: 200px;
				background-color: palegreen;
				margin-bottom: 20px;
			}
			.free_blogs{
				color: #20B2AA;
				font-size: 22px;
			}
			.login_blogs{
				color: #20B2AA;
				font-size: 22px;
			}
		
		</style>
                <title>Blogs</title>
	</head>
<body>

<!-- Header -->
<div id="header">
	<div id="header_layer1">
	</div>

	<div id="header_layer2">
		<div id="logo">
			<img src="./images/smiley.png" alt="logo">
		</div>
		<div id="business_name">
			<span>WorthFit</span>
		</div>
		<a href="http://localhost:8080/WADProject/jsp/gymPackages.jsp"><div class="header_top last_header">Gym Packs</div></a>
		<a href="#"><div class="header_top">Blog</div></a>
                    <% Object user = request.getSession().getAttribute("user");
                        if(user == null) {%>
		<a href="http://localhost:8080/WADProject/jsp/registration.jsp"><div class="header_top">Register</div></a>
		<a href="http://localhost:8080/WADProject/jsp/login.jsp"><div class="header_top">Login</div></a>
                        <% } %>
		
	</div>
</div>
<Br>
>
<div class="content">
	<div class="free_blogs">
            <% if(user == null) {%>
		<h4><b>Public blogs</b></h4>
            <% } 
            else { %>
                <h4><b>Blogs</b></h4>
            <% } %>
	</div><br>
        <% ArrayList<Blog> blogs = (ArrayList<Blog>) request.getServletContext().getAttribute("blogs");
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
                <font size="30" color="#20B2AA"> We are Experiencing Technical Difficulties with the Blog Database. Please Come Back Later <font>
                <%}%>
	<div><br/>
	<div class="login_blogs">
            <% if(user == null) {%>
		<h4><b>Enthusiastic's blogs</b></h4>
		<h6>Register and Login for more blogs, if you want to know more about the fitness world!</h6>
        <% } %>
	
</div>

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