<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - AMZ</title>
</head>
<body>

<!-- Display message if exists -->
<c:if test="${not empty msg}">
    <p style="color:green; text-align:center;">${msg}</p>
</c:if>

<!-- Simple Login Form -->
<main style="display:flex; justify-content:center; align-items:center; height:80vh;">
    <form action="/verify-login" method="post" style="display:flex; flex-direction:column; width:300px;">
        <h2 style="text-align:center;">Login</h2>
        <label for="username">Username </label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <button type="submit" style="margin-top:10px;">Login</button>

        <p style="text-align:center; margin-top:10px;">
            Don't have an account? <a href="<c:url value='/getRegister' />">Register here</a>
        </p>
    </form>
</main>

</body>
</html>
