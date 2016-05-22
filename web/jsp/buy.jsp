<%-- 
    Document   : buy
    Created on : 22-May-2016, 13:49:13
    Author     : Savanutul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Congrats</title>
    </head>
    <body>
        <% Object buy = request.getAttribute("buy");
        Object user = request.getSession().getAttribute("user"); 
        if(user != null){
            if(buy != null) { %>
            <h4> <% out.print(buy.toString()); %> </h4>
            <% } 
            else { %>
            <h4> Seems you arrived before your command. Go back for now. </h4>
            <% }
        }
        else { %>
        <h4> You seem to be tenacious, but unfortunately you have no power here! </h4>
        <% } %>
    </body>
</html>
