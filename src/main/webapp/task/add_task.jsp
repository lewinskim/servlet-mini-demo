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
    <title>Add Task</title>
</head>
<body>
<%@ include file="../nav.jsp" %>
<div class="container" style="background-color: white; border-radius: 10px; padding:10px;">
<form action="/task/add" method="post">
    <label for="tasktitle">TaskTitle</label>
    <input id="tasktitle" type="text" name="tasktitle"/><br/>
    <label for="taskdetails">TaskDetails</label>
    <input id="taskdetails" type="text" name="taskcontext"/>
    <br/><br/>
    <input type="submit" value="Add Task"/>
</form>
</div>
</body>
</html>
