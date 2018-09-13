<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:22:22 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/IsPrimeNumber/resource/PrimeNumberView.jsp">CheckPrime</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="TestRequestParameterServlet">TestRequest</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ProductList">ProductList</a>
            </li>
        </ul>


        <form class="form-inline my-2 my-lg-0">
      
        
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  สวัสดี ${sessionScope.user.contactfirstname}
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
          
     
            <a href="ShowCart" target="_blank">
                <button  type="button" class="btn btn-primary">
                    จำนวนสินค้า <span class="badge badge-light">${cart.totalQuantity}</span>
                    <span class="sr-only">unread messages</span>
                </button>
            </a>
        </form>
    </div>
</nav>           
<br>

