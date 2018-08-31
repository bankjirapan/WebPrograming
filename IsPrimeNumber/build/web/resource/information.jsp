<%-- 
    Document   : information
    Created on : Aug 24, 2018, 11:12:59 AM
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
        
         Session ID : ${cookie.JSESSIONID.value}    
         ${cookie.bgColor.value}
    </body>
</html>
