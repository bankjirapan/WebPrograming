<%-- 
    Document   : Choosebackground
    Created on : Aug 24, 2018, 9:52:16 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Select Your Background::"></jsp:include>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <form action="ChooseBackground">
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Select Color</label>
                                <select class="form-control" name="bgColor" id="exampleFormControlSelect1">
                                <option type="radio" name="bgColor" value="red" style="background-color:red;color: white;" ${cookie.bgColor.value == "red" ? "selected" : ""}>red</option>
                                <option type="radio" name="bgColor" value="yellow" style="background-color:yellow;color: white;" ${cookie.bgColor.value == "yellow" ? "selected" : ""}>yellow</option>
                                <option type="radio" name="bgColor" value="green" style="background-color:green;color: white;" ${cookie.bgColor.value == "green" ? "selected" : ""}>green</option>
                            </select>
                            <input type="submit">
                        </div>
                    </form>
                </div>
            </div>





        </div>

    </body>
</html>
