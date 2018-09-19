<%-- 
    Document   : Header
    Created on : Sep 17, 2018, 4:35:14 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>SIT - ${param.titleName }</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">SITCinema</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="MoviesList">MovieList </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="BuyTicket">Buy Ticket</a>
                    </li>
                    <c:if test="${sessionScope.loggedIn != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="ticketmanager">Manager</a>
                    </li>
                    </c:if>
                </ul>

                <div class="form-inline my-2 my-lg-0">
                    <c:if test="${sessionScope.loggedIn == null}">
                        <a href="Login" class="btn btn-outline-info">เข้าสู่ระบบ</a>
                    </c:if>

                    <c:if test="${sessionScope.loggedIn != null}">

                        <a href="Login" class="btn btn-outline-success">สวัสดี : ${sessionScope.loggedIn.name}</a> &nbsp;
                        <a href="#" class="btn btn-outline-danger">ออกจากระบบ</a>

                    </c:if>
                </div>
            </div>
        </nav>


