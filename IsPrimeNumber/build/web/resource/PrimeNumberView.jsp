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
                        <a class="nav-link" href="../TestRequestParameterServlet">TestRequest</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="../ProductList">ProductList</a>
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
         <div class="card border-primary">
                 <div class="card-header">Check</div>
                <div class="card-body">
                    <div class="box-check">
                        <h1>Enter your Number</h1>
                        <hr>
                        <form action="/IsPrimeNumber/IsPrimeNumberController" method="POST">
                            Number:
                            <input class="form-control" type="text" name="InputNumber"><br>
                            <button class="btn btn-info btn-lg" type="submit">Check</button>
                        </form>
                    </div>
                </div>
              <div class="card-footer bg-transparent border-primary">
                    Number : ${pn.numberInput} ${pn.prime}</div>
            </div>
            
            ${pn}


        </div>
    </body>
</html>
