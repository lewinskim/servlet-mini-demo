<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: marek
  Date: 02.08.2020
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Tasks Dashboard</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<div class="container" style="background-color: white; border-radius: 10px; padding:10px;">

    <c:if test="${sessionScope.get(\"USER\") == null }">
        <div class="alert alert-warning" role="alert">
            You are not logged in please log in!
        </div>
        <%--        <a class="btn btn-primary" href="/login" role="button">Login</a>--%>
    </c:if>
    <c:if test="${sessionScope.get(\"USER\") !=null}">
        <c:if test="${tasks.isEmpty()}">
            <div class="alert alert-warning" role="alert">
                There are no tasks. Please add new task.
            </div>
        </c:if>

        <c:if test="${tasks !=null && tasks.isEmpty() == false}">
            <table class="table">
                <tr>
                    <th>TaskId</th>
                    <th>TaskTitle</th>
                </tr>
                <c:forEach items="${tasks}" var="task">
                    <tr>
                        <td><b><c:out value="${task.id}"/></b></td>
                        <td>
                            <a href=<c:out value="task/details?task=${task.id}"/>><c:out value='${task.title}'/></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </c:if>

</div>
</body>
</html>