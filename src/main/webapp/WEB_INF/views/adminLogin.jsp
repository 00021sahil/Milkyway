<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login | Milkyway Cakes</title>

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

.login-box {
	width: 400px;
	background: white;
	padding: 40px;
	border-radius: 18px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, .15);
}

.logo {
	font-size: 34px;
	text-align: center;
	margin-bottom: 8px;
}

.title {
	text-align: center;
	font-size: 28px;
	font-weight: 600;
	color: #d63384;
}

.subtitle {
	text-align: center;
	color: #777;
	font-size: 14px;
	margin-bottom: 30px;
}

label {
	display: block;
	font-weight: 500;
	margin-bottom: 8px;
	color: #444;
}

input {
	width: 100%;
	padding: 14px;
	border-radius: 10px;
	border: 1px solid #ccc;
	font-size: 15px;
	margin-bottom: 20px;
	outline: none;
	transition: .3s;
}

input:focus {
	border-color: #d63384;
	box-shadow: 0 0 8px rgba(214, 51, 132, .2);
}

button {
	width: 100%;
	padding: 14px;
	border: none;
	border-radius: 10px;
	background: #d63384;
	color: white;
	font-size: 16px;
	font-weight: 600;
	cursor: pointer;
	transition: .3s;
}

button:hover {
	background: #b7256e;
}

.message {
	text-align: center;
	color: red;
	margin-top: 18px;
	font-weight: 500;
}
</style>

</head>

<body>

	<div class="login-box">

		<div class="logo">🎂</div>

		<div class="title">Milkyway Cakes</div>

		<div class="subtitle">Admin Authentication</div>

		<form action="send-otp" method="post">

			<label>Admin Password</label>

			<input type="password"
				   name="password"
				   placeholder="Enter Admin Password"
				   required>

			<button type="submit">
				Send OTP
			</button>

		</form>

		<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
		%>

		<div class="message">
			<%=msg%>
		</div>

		<%
		}
		%>

	</div>

</body>
</html>