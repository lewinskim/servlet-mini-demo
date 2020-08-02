<%--
  Created by IntelliJ IDEA.
  User: marek
  Date: 02.08.2020
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Error Page</title>
</head>
<body>
<%@ include file="nav.jsp" %>
<div class="container" style="background-color: white; border-radius: 10px; padding:10px;">
    <div class="alert alert-danger" role="alert">
        <c:out value="Error occured: ${error}"/>
    </div>
</div>
</body>
</html>
