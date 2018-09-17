<jsp:include page="Header.jsp?titleName=Login"></jsp:include>
<br>
<div class="container">
    <div align="center"><h1>Login Page</h1></div>
    <div class="card">
        <div class="card-body">
            <form action="Login" method="POST">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="text" class="form-control" aria-describedby="emailHelp" name="username" placeholder="Enter UserName">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <br>
                <div align="center">
                <button type="submit" class="btn btn-info btn-lg">Sign in</button>
                <a href="Register" class="btn btn-primary btn-lg">Register</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
