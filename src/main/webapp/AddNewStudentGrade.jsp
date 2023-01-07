<html>
<head>
    <style><%@include file="/AddNewUserStyle.css"%></style>
</head>
<body>
<div id="bg">
    <div class="module">


        <form class="form" action="${pageContext.request.contextPath}/AddNewStudentGradeServlet" method="post">
            <input type="text" name="username" placeholder="User Name" class="textbox" />
            <input type="text" name="firstname" placeholder="First Name" class="textbox" />
            <input type="text" name="lastname"  placeholder="Last Name" class="textbox" />
            <input type="text" name="subjectname"  placeholder="Subject Name" class="textbox" />
            <input type="text" name="grade"  placeholder="Grade" class="textbox" />
            <input type="submit" value="Save" class="button" />
        </form>
    </div>
</div>


</body>
</html>