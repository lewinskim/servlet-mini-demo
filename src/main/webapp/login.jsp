<%--
  Created by IntelliJ IDEA.
  User: NBGRZYWACZ
  Date: 26.07.2020
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login Page</title>
</head>
<body>
<div class="container" style="background-color: white; border-radius: 10px; padding:10px;">

    <form action="/login" method="post">
        <label for="username">Username</label>
        <input id="username" type="text" name="username"/>
        <br/><br/>
        <label for="password">Password</label>
        <input id="password" type="password" name="password"/>
        <br/><br/>
        <input type="submit" value="Login"/>
    </form>
</div>
</body>
</html>
