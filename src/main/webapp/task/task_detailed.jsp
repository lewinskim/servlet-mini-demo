<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: marek
  Date: 02.08.2020
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task Details</title>
</head>
<body>
<%@ include file="../nav.jsp" %>
<div class="container" style="background-color: white; border-radius: 10px; padding:10px;">
    <c:if test="${sessionScope.get(\"USER\") == null }">
        <div class="alert alert-warning" role="alert">
            You are not logged in please log in!
        </div>
        <a class="btn btn-primary" href="/login" role="button">Login</a>
    </c:if>

    <c:if test="${sessionScope.get(\"USER\") !=null}">
        <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                <div class="d-flex w-100 justify-content-between">
                    <h5 class="mb-1"><c:out value="${task.title}"/></h5>
                    <small><c:out value="${task.id}"/></small>
                </div>
                <p class="mb-1"><c:out value="${task.details}"/></p>
            </a>
        </div>
    </c:if>
</div>
</body>
</html>
