<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:12:37 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table class="table" style="background-color: ${cookie.bgColor.value};">
    <tr>
        <td><a href="index.html" title="Back to home"><img class="rounded" src="https://medien-bildung.ch/wp-content/uploads/2015/06/logo-256-transp.png" width="120px"/></a></td>
        <td><h1>${param.title}</h1></td>
        <td>
            <c:if test="${cart!=null}">
                <a href="ShowCart">
                    <button type="button" class="btn btn-default btn-sm">
                        <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart : ${cart.totalQuantity}
                    </button> 
                </a>
            </c:if>
            &nbsp;&nbsp;&nbsp;
            <c:choose>
                <c:when test="${sessionScope.user!=null}">
                    Hello <a href="Logout"> ${sessionScope.user.contactfirstname}</a>
                </c:when>
                <c:otherwise>
                    Hello <a href="Login"> Guest</a>
                </c:otherwise>
            </c:choose>
        </td>
    </tr>
</table>
Session Id:${cookie.JSESSIONID.value}
<hr/>
