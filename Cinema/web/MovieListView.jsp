
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="Header.jsp?titleName=MovieList"></jsp:include>
    
<div align="center"><h1>MoviesList</h1></div>
    <div class="container">

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>MovieID</th>
                    <th>MovieName</th>
                    <th>Branch</th>
                    <th>Date&Time</th>
                </tr>
            </thead>
            <tbody>

            <c:forEach var="getMovie" items="${Moviedata}">

                <tr>
                    <td>${getMovie.movieid}</td>
                    <td>${getMovie.moviename}</td>
                    <td>${getMovie.branch}</td>
                    <td>${getMovie.date}  ${getMovie.showtime}</td>
                </tr>

            </c:forEach>

        </tbody>
    </table>

</div>

</body>
</html>