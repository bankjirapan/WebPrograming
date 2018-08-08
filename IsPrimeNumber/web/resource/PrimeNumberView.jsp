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



        </div>
    </body>
</html>
