<%-- 
    Document   : createBlog
    Created on : 21-May-2016, 20:15:18
    Author     : Savanutul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Blog</title>
    </head>
    <body>
        <h1>Blog Creator</h1>
        <% if(request.getSession().getAttribute("user") != null) { %>
        <form action="http://localhost:8080/WADProject/createBlogController" id="linker">
            Blog Name: <input type="text" name="BlogName"> <br/>
            Blog Type: <input type="text" name="BlogType"> <br/>
            Make Blog Public: <input type="checkbox" name="Public">
            <input type="submit" value="Create">
            Blog Content: <br/>
        </form>
        <textarea name="Content" form="linker">Enter text here...</textarea>
        <% }
        else { %>
        <font size="30"> You seem to be lost </font>
        <% } %>
    </body>
</html>
