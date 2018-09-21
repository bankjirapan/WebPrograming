<%-- 
    Document   : TicketView
    Created on : Sep 18, 2018, 6:09:28 PM
    Author     : bankcom
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Header.jsp?titleName=TiketManager"></jsp:include>

    <br><br>
    <div class="container">
        <h2>Manages Ticket</h2>
        <p>Manages Ticket</p>            
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ชื่อหนัง</th>
                    <th>สาขา</th>
                    <th>โรงที่</th>

                </tr>
            </thead>
            <tbody>

            <c:forEach items="${BuyAtLists}" var="Show">
                <tr>
                    <td>${Show.movieName}</td>
                    <td>${Show.branch}</td>
                    <td>${Show.theater}</td>

                </tr>
            </c:forEach>


        </tbody>
    </table>
</div>
