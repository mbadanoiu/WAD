<%-- 
    Document   : addPack
    Created on : 22-May-2016, 14:04:06
    Author     : Savanutul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin's Add Pack</title>
    </head>
    <body>
        <% Object temp = request.getAttribute("ffail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                        <font size="30" color="red"> Are you tying to trojan me mate? </font>
                    <% }
           temp = request.getAttribute("pfail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                        <font size="30" color="red"> Add Fail: Package Name is Taken </font>
                    <% }
           temp = request.getAttribute("fail");
                if(temp != null)
                    if(Boolean.parseBoolean(temp.toString())) { %>
                        <font> Let's try that again, shall we? </font>
                    <% } %>
        <% Object admin = request.getSession().getAttribute("admin");
            if(request.getSession().getAttribute("user") != null) {
                if(admin != null)
                    if(Boolean.parseBoolean(admin.toString())) { %>
        <h1>Add a Gym Package</h1>
        <form name="Form" method="POST" action="http://localhost:8080/WADProject/addPackController" id="linker">
        First Name:
        <input type="text" name="Name" required><br>
        Type:
        <input type="text" name="Type" required><br>
        Price:
        <input type="number" name="Price" step="0.01" min="0" required><br>
        Gym:
        <input type="text" name="Gym" required><br>
        Image:
        <input type="text" name="Image" required><br>
        Available:
        <input type="checkbox" name="Available" checked><br><br>
        Description: <br/>
        <textarea name="Description" form="linker">Enter Description here...</textarea> <br><br>
        <input type="submit" value="Add">
        <input type="reset" value="Reset">
      </form>
                    <% }
                    else { %>
                        <font size="20"> I'm sorry, but you don't meet the required ... height, to be an admin. </font>
                    <% } 
            } 
            else { %>
        <font size="20"> Why do you do this? To me, to yourself, to everybody? Why? Just why? </font>
            <% } %>
    </body>
</html>
