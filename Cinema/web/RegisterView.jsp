
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="Header.jsp?titleName=Register"></jsp:include>

<br>
<br>
<div class="container">
    <div class="card">
        <div class="card-body">
            <form action="Register" method="POST">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" name="inputEmail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="texr" name="bame" class="form-control" id="name" placeholder="Name">
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>
