<%-- 
    Document   : TaskView
    Created on : Sep 20, 2018, 12:43:07 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello ${sessionScope.LoggedIn.username}</h1>



        <form action="Task" method="post">

            NewTask : <input type="text" name="newtask"><br>
            <input type="submit">

        </form>

        <table>
            <th>Date</th>
            <th>Task</th>
            <th>Status</th>
                <c:forEach items="${todoList}" var="task">
                <tr>
                    <td>${task.createdate}</td>
                    <td>${task.task}</td>
                    <td>${task.status}</td>
                </tr>
                </c:forEach>
        </table>
    </body>
</html>
