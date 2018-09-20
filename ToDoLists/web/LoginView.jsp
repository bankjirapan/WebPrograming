<%-- 
    Document   : LoginView
    Created on : Sep 20, 2018, 12:20:39 PM
    Author     : bankcom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to TodoList</title>
    </head>
    <body>
        
        
        <table border="2">
            
            <form action="Login" method="POST">
                <th>Login </th>
            <tr>
                <th>UserName</th>
                <td><input type="text" name="username"></td>
            </tr>
              <tr>
                <th>Password</th>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td> <input type="submit" value="Login"></td>
            </tr>
            
           
            </form>
        </table>
        
        ${msg}
        
        
        
    </body>
</html>
