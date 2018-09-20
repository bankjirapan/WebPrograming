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
                    <th>No</th>
                    <th>ชื่อ</th>
                    <th>โรงหนัง</th>
                    <th>เวลาฉาย</th>
                    <th>ยืนยันการสั่งซื้อ</th>
                </tr>
            </thead>
            <tbody>


                <tr>
                    <td>1</td>
                    <td>${MovieBuy.moviename}</td>
                <td>${MovieBuy.branch}</td>
                <td><fmt:formatDate value="${MovieBuy.date}" pattern="yyyy-MM-dd" /> เวลาฉาย <fmt:formatDate value="${MovieBuy.showtime}" pattern="HH:mm" /></td>
                <td><a class="btn btn-outline-success" href="ticketmanager?confirm=${MovieBuy.movieid}">ยืนยันการสั่งซื้อ</a></td>
            </tr>


        </tbody>
    </table>
</div>
