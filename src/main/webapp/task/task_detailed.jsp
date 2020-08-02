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

<div class="container" style="background-color: white; border-radius: 10px; padding:10px;">
    <c:if test="${sessionScope.get(\"USER\") == null }">
        <div class="alert alert-warning" role="alert">
            You are not logged in please log in!
        </div>
        <a class="btn btn-primary" href="/login" role="button">Login</a>
    </c:if>
    <c:if test="${sessionScope.get(\"USER\") !=null}">
        <c:out value="${task.id}"/>
        <c:out value="${task.title}"/>
        <c:out value="${task.details}"/>
    </c:if>
</div>
</body>
</html>
