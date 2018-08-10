<%-- 
    Document   : ViewPamJsp
    Created on : Aug 8, 2018, 1:57:43 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
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
                        <a class="nav-link" href="#">TestRequest</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="ProductList">ProductList</a>
                    </li>
                </ul>
                   
                
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        <br>
        <div class="container">
        <h1>Favorite Subject : </h1>
        <form action="TestRequestParameterServlet" method="POST">
            <label>Student ID :</label>
            <input class="form-control" type="text" name="id">
            <label>Name</label>
            <input class="form-control"  type="text" name="name">
            <h1>Subject</h1>
     
            <input  class="form-check form-check-inline" type="checkbox" name="subjects" value="JavaApplication">JavaApplication
            <input  class="form-check form-check-inline" type="checkbox" name="subjects" value="Angular">Angular
            <input  class="form-check form-check-inline" type="checkbox" name="subjects" value="React">React
            <input  class="form-check form-check-inline" type="checkbox" name="subjects" value="Vue">Vue
            <input  class="form-check form-check-inline" type="checkbox" name="subjects" value="Laravel">Laravel
            <input  class="form-check form-check-inline" type="checkbox" name="subjects" value="Codeigniter">Codeigniter
            <input  class="form-check form-check-inline" type="checkbox" name="subjects" value="PHP">PHP
            <br><br>
            <input type="submit" class="btn btn-success btn-lg" value="Save">
            <input type="reset" class="btn btn-danger btn-lg" value="Reset">

        </form>
        <br><br>
        <h2>List</h2>
          <table class="table table-dark table-striped">
    <thead>
      <tr>
        <th>Student ID</th>
        <th>StudentName</th>
         <th>Favorite</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${param.id}</td>
        <td>${param.name}</td>
        <td> <c:forEach items="${subjectList}" var="str">
            ${str}<br>
        </c:forEach>
        </td>
      </tr>
    </tbody>
  </table>
      
       
    </div>

    </body>
</html>