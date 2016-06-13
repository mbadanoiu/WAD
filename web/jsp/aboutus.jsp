<!DOCTYPE html>
<meta charset="UTF-8">
<html lang="en-US">
	<head>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script>
  $(document).ready(function(){
    $(".nav-text1").click(function(){
        $(".p1").show(1000);
    });
});
  $(document).ready(function(){
    $(".nav-text2").click(function(){
        $(".p2").show(1000);
    });
});
  $(document).ready(function(){
    $(".nav-text3").click(function(){
        $(".p3").show(1000);
    });
});
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
	      margin-top: 90px;
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



    /*dsnclkdl*/

@import url(font1.css);

@import url(font2.css);
.fa-2x {
font-size: 2em;
font-family: 'Titillium Web', sans-serif;
}
.fa {
position: relative;
display: table-cell;
width: 130px;
height: 70px;
text-align: center;
vertical-align: middle;
font-size:20px;
}


.main-menu:hover,nav.main-menu.expanded {
width:360px;
overflow:visible;
margin-right: 10px;
}

.main-menu {
background:mintcream;
border-right:1px solid #e5e5e5;
top:0;
bottom:0;
height:210px;
left:0;
width:130px;
overflow:hidden;
-webkit-transition:width .05s linear;
transition:width .05s linear;
-webkit-transform:translateZ(0) scale(1,1);
z-index:1;
margin-right: 240px;
}

.main-menu ul {
margin:7px 0;
height: 200px;
}

.main-menu li {
position:relative;
display:block;
width:400px;
}

.main-menu li>a {
position:relative;
display:table;
border-collapse:collapse;
border-spacing:0;
color:#20B2AA;
 font-family: arial;
font-size: 14px;
text-decoration:none;
-webkit-transform:translateZ(0) scale(1,1);
-webkit-transition:all .1s linear;
transition:all .1s linear;
  
}

.main-menu .nav-icon {
position:relative;
display:table-cell;
width:60px;
height:36px;
text-align:center;
vertical-align:middle;
font-size:18px;
}

.main-menu .nav-text {
position:relative;
display:table-cell;
vertical-align:middle;
width:230px;
font-family: 'Titillium Web', sans-serif;
}

.no-touch .scrollable.hover {
overflow-y:hidden;
}

.no-touch .scrollable.hover:hover {
overflow-y:auto;
overflow:visible;
}

a:hover,a:focus {
text-decoration:none;
}

nav {
-webkit-user-select:none;
-moz-user-select:none;
-ms-user-select:none;
-o-user-select:none;
user-select:none;
}

nav ul,nav li {
outline:0;
margin:0;
padding:0;
}
.main-menu li:hover>a,nav.main-menu li.active>a,.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus,.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus,.no-touch .dashboard-page nav.dashboard-menu ul li:hover a,.dashboard-page nav.dashboard-menu ul li.active a {
color:#fff;
background-color:#20B2AA;
}
.area {
background: #e2e2e2;
width: 100%;
height: 100%;
}
@font-face {
  font-family: 'Titillium Web';
  font-style: normal;
  font-weight: 300;
  src: local('Titillium WebLight'), local('TitilliumWeb-Light'), url(http://themes.googleusercontent.com/static/fonts/titilliumweb/v2/anMUvcNT0H1YN4FII8wpr24bNCNEoFTpS2BTjF6FB5E.woff) format('woff');
}
.facility_div{
  width: 400px;
  height: 100px;
  background-color: #FFFFF0;
  display: inline-block;
  margin-left: 150px;
  margin-bottom: 30px;
  margin-top: 20px;
}

.schedule_div{
  width:400px;
  height:300px;
  background-color: #FFFFF0;
  margin-left: 5px;
  margin-bottom: 20px;
  display: inline-block;
}
.equipment_div{
  width: 400px;
  height: 100px;
  background-color: #FFFFF0;
  margin-left: 120px;
  margin-bottom: 10px;
  display: inline-block;
}


.scalable_menu{
  display: inline-block;
}

.a_div{
  color: #20B2AA;
}
.a_div:hover{
  background-color: #20B2AA;
  color:#fff;
  width: 360px;
}
.p1, .p3{
  color: #20B2AA;
}
.p2{
  width: 400px;
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
                <% if(user == null) { %>
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
<div class="scalable_menu">
<nav class="main-menu">
            <ul>
                <li>
                    <div class="a_div">
                        <div class="fa fa-home fa-2x">
                          <div class="letters"><b>Facility</b>
                          </div>
                        </div>
                        
                        <span class="nav-text"><span class="nav-text1">
                            Find out more about our gym!
                        </span></span>
                        </div>

                  
                  
                </li>
                <li class="has-subnav">
                    <div class="a_div">
                        <div class="fa fa-laptop fa-2x">
                          <div class="letters"><b>Schedule</b>
                          </div>
                        </div>
                        <span class="nav-text"><span class="nav-text2">
                            Find out when you can exercise! 
                        </span></span>
                    <div>
                    
                </li>
                <li class="has-subnav">
                    <div class="a_div">
                       <div class="fa fa-list fa-2x">
                        <div class="letters"><b>Equipment</b>
                        </div>
                       </div>
                        <span class="nav-text"><span class="nav-text3">
                            Discover what kind of equipment you can use.
                        </span></span>
                    </div>
                    
                </li>
                </ul>
        </nav>
        </div>
<div class="facility_div">
<div>
<p style="display: none" class="p1"><b>Our highly qualified facility can help you get the best out of your time at the CSE through induction sessions, coaching, personal training, consultations, and advice on managing medical conditions through fitness.</b></p>
</div>
</div>
<div class="together">
<div class="schedule_div">
<img src="http://localhost:8080/WADProject/jsp/images/schedule.png" style="display: none" class="p2" width="400" height="300">
</div>
<div class="equipment_div">
<p style="display: none" class="p3"><b>Find equipment such as exercise bikes, treadmills and even cross trainers to get your heart pumping and to build up a sweat. Discover a range of gym equipment, all here, with us!</b></p>
</div></div>

</div>

<div id="footer">
  
  <div class="Links">
  
  <div class="footerDiv">
      <div class="footerDetailTitle">Fitness</div>
      <a href="#"><div class="footerDetailSubtitle">About Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Join Us</div></a>
      <a href="http://localhost:8080/WADProject/jsp/contactus.jsp"><div class="footerDetailSubtitle">Contact Us</div></a>
    </div>

    <div class="footerDiv">
      <a href=""><div class="footerDetailTitle">Prices</div></a>
      <a href="http://localhost:8080/WADProject/jsp/trainers.jsp"><div class="footerDetailSubtitle">Trainers</div></a>
      
    </div>
  </div>
</div>

</body>

</html>
