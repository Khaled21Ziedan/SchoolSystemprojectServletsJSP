<%--
  Created by IntelliJ IDEA.
  User: Khaled
  Date: 9/23/2022
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>SignUp/Login</title>
</head>
<style><%@include file="/PageStyle.css"%></style>
<body>
<div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
    <div class="login-form">
      <div class="sign-in-htm">
        <div class="group">
          <form action="InstructorLoginOrRegister.jsp" method="post">
          <input type="submit" class="button" value = "instructor">
          </form>
        </div>
        <div class="group">
        <form action="StudentLoginOrRegister.jsp" method="post">
          <input type="submit" class="button" value= "Student">
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
