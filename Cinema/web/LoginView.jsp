<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="Header.jsp?titleName=Login"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<div class="container">
    <div align="center"><h1>Login Page</h1></div>
    <div class="card">
        <div class="card-body">
            <form action="Login" method="POST">
                <div class="form-group">
                    <label for="exampleInputEmail1">UserID</label>
                    <input type="text" class="form-control" aria-describedby="emailHelp" name="userid" placeholder="User ID" required>
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password" required>
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
    <br>
    
    <c:if test="${message != null}">
    <div class="alert alert-${message == "Username or Password invalid" ? 'danger' : 'success'}" role="alert">
        ${message}
    </div>
    </c:if>
    
    
            
</div>
</body>
</html>
