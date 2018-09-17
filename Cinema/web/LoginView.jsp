<%-- 
    Document   : LoginView
    Created on : Sep 17, 2018, 6:20:16 PM
    Author     : bankcom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <form action="Login" method="post">
            UserName : <input type="text" name="username">
            Password : <input type="password" name="password">
            
            <input type="submit">
        </form>
    </body>
</html>
