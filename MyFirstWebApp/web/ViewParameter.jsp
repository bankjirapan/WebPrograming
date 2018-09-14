<%-- 
    Document   : ViewParameter
    Created on : Aug 8, 2018, 1:57:13 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">



    </head>
    <body>
        <div class="container">
        <h1>Favorite Subject</h1>
        <form action="TestRequestParam" method="post">
            Your Student Id:
            <input type="text" name="id"/><br/>
            Your Student Name:
            <input type="text" name="name"/><br/>
            Your Favorite Subject:<br/>
            <input type="checkbox" value="Web Programming" name="subjects"/>Web Programming<br/>
            <input type="checkbox" value="Computer Network" name="subjects"/>Computer Network<br/>
            <input type="checkbox" value="Network Programming" name="subjects"/>Network Programming<br/>
            <input type="checkbox" value="Database Administrator" name="subjects"/>Database Administrator<br/>
            <input type="checkbox" value="Computer Security" name="subjects"/>Computer Security<br/>
            <input type="checkbox" value="Software Process" name="subjects"/>Software Process<br/>
            <input type="submit" class="btn btn-primary"/>
        </form>
        <hr/>
        <table>
            <tr>
                <td>Student Id</td>
                <td>${param.id}</td>
            </tr>
            <tr>
                <td>Student Name</td>
                <td>${param.name}</td>
            </tr>
            <tr>
                <td>Favorite Subject</td>
                <td>
                    <c:forEach items="${subjectList}" var="str">
                        ${str}<br/>
                    </c:forEach>
                </td>
            </tr>

        </table>
        </div>
    </body>
</html>
