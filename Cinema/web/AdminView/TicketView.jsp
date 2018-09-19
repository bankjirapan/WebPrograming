<%-- 
    Document   : TicketView
    Created on : Sep 18, 2018, 6:09:28 PM
    Author     : bankcom
--%>

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
        <th>ชื่อ</th>
        <th>โรงหนัง</th>
        <th>เวลาฉาย</th>
      </tr>
    </thead>
    <tbody>
        

      <tr>
        <td>${MovieBuy.moviename}</td>
        <td>${MovieBuy.branch}</td>
        <td>${MovieBuy.showtime}</td>
      </tr>

     
    </tbody>
  </table>
</div>
