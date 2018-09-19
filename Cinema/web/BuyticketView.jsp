<%-- 
    Document   : BuyticketView
    Created on : Sep 18, 2018, 6:13:17 PM
    Author     : bankcom
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp?titleName=BuyTicket"></jsp:include>


<br><br>

<div class="container">

    <div class="row">
    <c:forEach items="${AttrMovies}" var="listMovies">
        <div class="col-md-4">  
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="http://www.majorcineplex.com/uploads/movie/2253/thumb_2253.jpg"  alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">${listMovies.moviename}</h5>
                    <p class="card-text">
                        ประเภทหนัง : ${listMovies.category}
                        <br>
                        Description : ${listMovies.description}
                        <br>
                        สาขาฉาย : ${listMovies.branch}
                    </p>
                    <a href="BuyTicket?MoviesID=${listMovies.movieid}" class="btn btn-primary">Buy</a>
                </div>
            </div>
        </div>
    </c:forEach>


    </div>


</div>