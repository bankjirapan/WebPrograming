<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       
    </head>
    <body id="LoginForm">
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Authentication::"></jsp:include>
            <h1 class="form-heading">login Form</h1>
            <div class="login-form">
                <div class="main-div">
                    <div class="panel">
                        <p>Please enter your username and password</p>
                    </div>
                    <form action="Login" method="post">
                        <div class="form-group">
                            <input type="text" name="userName" class="form-control" id="inputEmail" placeholder="Username" required>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
            </div></div></div>
</body>
</html>
