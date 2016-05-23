<%@page import="daos.gymPackageDAO"%>
<%@page import="daos.clientDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.GymPackage"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<html lang="en-US">
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

  			.firstpack,
			.secondpack,
			.thirdpack {
				width: 500px;
				height: 200px;
				background-color: palegreen;
				margin-bottom: 20px;
			}
			.free_packs{
				color: #20B2AA;
				font-size: 22px;
			}
			.login_pack{
				color: #20B2AA;
				font-size: 22px;
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
                <title>Gym Packs</title>
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
        <div class="home">
        <a href="index.jsp">Home</a>
        </div>
    </div>
	</div>

	<div id="header_layer2">
		<div id="logo">
			<img src="./images/smiley.png" alt="logo">
		</div>
		<div id="business_name">
			<span>WorthFit</span>
		</div>
		<a href="#"><div class="header_top last_header">Gym Packs</div></a>
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
		
	</div>
</div>
<Br>

<div class="content">
	<div class="free_packs">
		<h4><b>All packs</b></h4>
        <% gymPackageDAO gpd = gymPackageDAO.getInstance();
        ArrayList<GymPackage> packs = gpd.getAllPackages();//(ArrayList<GymPackage>) request.getServletContext().getAttribute("packages");
        if(packs != null){
            if(!packs.isEmpty())
                for(GymPackage p : packs) { %>
	</div><br>
	<div class="firstpack">
            <% clientDAO cd = clientDAO.getInstance();
                    if(user != null) {
                        if(cd.hasCard(user.toString())) { %>
            <form name="Form" method="POST" action="http://localhost:8080/WADProject/buyController">
                        <% } 
                        else { %>
            <form name="Form" method="GET" action="http://localhost:8080/WADProject/jsp/cardAndTel.jsp">
                <%-- see if get is the correct method to use here --%>
                        <% }
                    }
                    else { %>
            <form name="Form" method="GET" action="http://localhost:8080/WADProject/jsp/logOrRegister.jsp">
                    <% } %>
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
                    <% } %>
            <input type="submit" value="Buy">
            </form>
	</div>
	<% }
        }
        else { %>
            <font size="30"> We are Experiencing Technical Difficulties with the Gym Packages Database. Please Come Back Later <font>
        <%}%>
</div>

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