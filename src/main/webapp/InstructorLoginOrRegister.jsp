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
            <form action="${pageContext.request.contextPath}/InstructorValidationServlet" method ="post">
            <div class="sign-in-htm">
                <div class="group">
                    <label class="label">Username</label>
                    <input name="username" type="text" class="input">
                </div>
                <div class="group">
                    <label class="label">Password</label>
                    <input name="password" type="password" class="input" data-type="password">
                </div>
                <div class="group">
                    <input id="check" type="checkbox" class="check" checked>
                    <label for="check"><span class="icon"></span> Keep me Signed in</label>
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Sign In">
                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <a href="#forgot">Forgot Password?</a>
                </div>
            </div>
            </form>
            <div class="sign-up-htm">
                <form action="${pageContext.request.contextPath}/InstructorRegistrationServlet" method="post">
                <div class="group">
                    <label class="label">First Name</label>
                    <input name="firstname" type="text" class="input">
                </div>
                <div class="group">
                    <label class="label">Last Name</label>
                    <input name="lastname" type="text" class="input">
                </div>
                <div class="group">
                    <label class="label">Username</label>
                    <input name="username" type="text" class="input">
                </div>
                <div class="group">
                    <label class="label">Email Address</label>
                    <input name="email" type="text" class="input">
                </div>
                <div class="group">
                    <label class="label">Password</label>
                    <input name="password" type="password" class="input" data-type="password">
                </div>
                <div class="group">
                    <label class="label">Subject</label>
                    <input name="subject" type="text" class="input">
                </div>
                <div class="group">
                    <input type="submit" class="button" value="Sign Up">
                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <label for="tab-1">Already Member?</label>
                </div>
                </form>
            </div>
        </div>
    </div>

</div>
</body>
</html>
