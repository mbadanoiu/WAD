<%-- 
    Document   : logOrRegister
    Created on : 21-May-2016, 21:15:09
    Author     : Savanutul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Decision</title>
    </head>
    <body>
        <%-- sa nu aiba hrefuri in bara de sus, doar logo si bara albastra
        triggered when user presses on gympack and is not logged in, has 2 href buttons 1 redirects to login.jsp the other to 
        extendedRegistration.jsp--%>
        <h1>You cannot access gympacks unless you are logged in</h1>
        <form action="http://localhost:8080/WADProject/jsp/extendedRegistration.jsp">
        If you do not have an account: <input type="submit" value=" Register "/>
        </form>
        <%-- ///////////////////////////////// --%>
  <% Object temp = request.getAttribute("fail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                    <font size="20" color="red"> Login Fail: Username or Password Mismatch </font>
            <% } %>
  <%-- ///////////////////////////////// --%>
    <div class="formdiv">
      <form name="Form" method="POST" action="http://localhost:8080/WADProject/login2Controller">
      Username:<br>
      <input type="text" name="Username"><br>
      Password:<br>
      <input type="password" name="Password"><br><br>
      <input type="submit" value="Login">
    </form> 
    </div>
    </body>
</html>
