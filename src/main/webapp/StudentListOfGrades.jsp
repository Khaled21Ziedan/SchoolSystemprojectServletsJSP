<%--
  Created by IntelliJ IDEA.
  User: Khaled
  Date: 9/26/2022
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style><%@include file="/TableDesign.css"%></style>
</head>
<body>
<div class="table-wrapper">
    <table class="fl-table">
        <caption><h2>Grades</h2></caption>
        <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Subject Name</th>
            <th>Grade</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${gradeList}">
            <tr>
                <td><c:out value="${user.firstName}" /></td>
                <td><c:out value="${user.lastName}" /></td>
                <td><c:out value="${user.subjectName}" /></td>
                <td><c:out value="${user.grade}" /></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="table-wrapper">
    <table class="fl-table">
        <caption><h2>Details</h2></caption>
        <thead>
        <tr>
            <th>Subject</th>
            <th>Minimum Grade</th>
            <th>Max Grade</th>
            <th>Average</th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td> Math </td>
                <td> <%= request.getAttribute("mathMaxGrade") %> </td>
                <td> <%= request.getAttribute("mathMinGrade") %> </td>
                <td> <%= request.getAttribute("mathAverage") %> </td>
            </tr>
            <tr>
                <td> Science </td>
                <td> <%= request.getAttribute("scienceMaxGrade") %> </td>
                <td> <%= request.getAttribute("scienceMinGrade") %> </td>
                <td> <%= request.getAttribute("scienceAverage") %> </td>
            </tr>
            <tr>
                <td> History </td>
                <td> <%= request.getAttribute("scienceMaxGrade") %> </td>
                <td> <%= request.getAttribute("scienceMinGrade") %> </td>
                <td> <%= request.getAttribute("scienceAverage") %> </td>
            </tr>
            <tr>
                <td> Sports </td>
                <td> <%= request.getAttribute("sportMaxGrade") %> </td>
                <td> <%= request.getAttribute("sportMinGrade") %> </td>
                <td> <%= request.getAttribute("sportAverage") %> </td>
            </tr>
        </tbody>

    </table>
</div>
</body>
</html>
