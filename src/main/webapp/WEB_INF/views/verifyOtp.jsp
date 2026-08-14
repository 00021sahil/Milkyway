<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify OTP | Crème Pop</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	height: 100vh;
	background: linear-gradient(135deg, #fff5f7, #ffe4ec);
	display: flex;
	justify-content: center;
	align-items: center;
}

.card {
	width: 430px;
	background: #fff;
	padding: 40px;
	border-radius: 18px;
	box-shadow: 0 15px 40px rgba(0,0,0,.15);
	text-align: center;
}

.logo{
	font-size:40px;
	margin-bottom:10px;
}

h2{
	color:#d63384;
	margin-bottom:10px;
}

.info{
	color:#666;
	margin-bottom:25px;
	line-height:1.6;
}

.email{
	color:#d63384;
	font-weight:bold;
}

input{
	width:100%;
	padding:14px;
	border:1px solid #ccc;
	border-radius:10px;
	font-size:16px;
	margin-bottom:20px;
	text-align:center;
	letter-spacing:4px;
}

input:focus{
	outline:none;
	border-color:#d63384;
	box-shadow:0 0 8px rgba(214,51,132,.25);
}

button{
	width:100%;
	padding:14px;
	border:none;
	border-radius:10px;
	background:#d63384;
	color:white;
	font-size:16px;
	font-weight:600;
	cursor:pointer;
}

button:hover{
	background:#b82570;
}

.error{
	color:red;
	margin-top:15px;
	font-weight:600;
}
</style>

</head>
<body>

<div class="card">

<div class="logo">🔐</div>

<h2>OTP Verification</h2>

<p class="info">
OTP has been sent to
<br><br>
<span class="email">${email}</span>
</p>

<form action="${pageContext.request.contextPath}/verify-otp" method="post">

<input
	type="text"
	name="otp"
	placeholder="Enter 6 Digit OTP"
	maxlength="6"
	required>

<button type="submit">
Verify OTP
</button>

</form>

<%
String msg=(String)request.getAttribute("msg");
if(msg!=null){
%>

<div class="error">
<%=msg %>
</div>

<%
}
%>

</div>

</body>
</html>