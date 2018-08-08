<%-- 
    Document   : PrimeNumberView
    Created on : Aug 8, 2018, 9:53:49 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IsPreimeNumber</title>
    </head>
    <body>
        <div class="box-check">
            <h1>Enter your Number</h1>
        <form action="IsPrimeNumberController" method="POST">
            <input type="text" name="InputNumber">
            <button type="submit">Check</button>
        </form>
        </div>
    </body>
</html>
