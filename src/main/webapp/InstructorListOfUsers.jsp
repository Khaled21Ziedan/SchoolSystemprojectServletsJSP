<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <style><%@include file="/TableDesign.css"%></style>
</head>
<body>
<div style="text-align: center;">
    <h1 style="font-family: Thoma, Verdana, sans-serif">Instructor Management</h1>
    <h2 style="font-family: Thoma, Verdana, sans-serif"></h2>
    <form action ="AddNewStudentGrade.jsp" method="post">
        <button type="submit" class="button"> Add New User </button>
    </form>
</div>
<div class="table-wrapper">
    <table class="fl-table">
        <caption><h1 style="font-family: Thoma, Verdana, sans-serif">List of Users</h1></caption>
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Subject Name</th>
            <th>Grade</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.firstName}" /></td>
                <td><c:out value="${user.lastName}" /></td>
                <td><c:out value="${user.subjectName}" /></td>
                <td><c:out value="${user.grade}" /></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
