<%--
  Created by IntelliJ IDEA.
  User: Khaled
  Date: 9/12/2022
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<style><%@include file="/ErrorPageStyle.css"%></style>
<body>
<div class="error_container">
  <div class="error_block">
    <h1>Congratulation</h1>
    <h3>Welcome to St.Joseph School </h3>
    <h3>Your Account Has Been Created Please Login Later To see Your Grades</h3>
    <form action="StudentLoginOrRegister.jsp" method="get">
      <input type="button" class="error_btn" value="Back To Login">
    </form>
  </div>
</div>

</body>
</html>
