<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MilkyWay - Orders</title>

<style>
.coming-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 70vh;
	text-align: center;
}

.coming-box {
	background: linear-gradient(135deg, #fff1eb, #ace0f9);
	padding: 60px 80px;
	border-radius: 20px;
	box-shadow: 0 20px 40px rgba(0,0,0,0.15);
	animation: fadeUp 0.8s ease;
}

@keyframes fadeUp {
	from {
		opacity: 0;
		transform: translateY(30px);
	}
	to {
		opacity: 1;
		transform: translateY(0);
	}
}

.coming-box h1 {
	font-size: 40px;
	margin-bottom: 15px;
	color: #ff6f61;
}

.coming-box p {
	font-size: 16px;
	color: #555;
	margin-bottom: 25px;
}

.back-btn {
	padding: 12px 30px;
	border-radius: 30px;
	border: none;
	font-size: 16px;
	font-weight: 600;
	cursor: pointer;
	background: linear-gradient(135deg, #ff6f61, #ff9472);
	color: white;
	transition: all 0.3s ease;
	box-shadow: 0 10px 20px rgba(255,111,97,0.4);
}

.back-btn:hover {
	transform: translateY(-5px) scale(1.05);
	box-shadow: 0 20px 35px rgba(255,111,97,0.6);
}
</style>
</head>

<body>

<div class="coming-container">
	<div class="coming-box">
		<h1>🚧 Coming Soon</h1>
		<p>The Orders feature is baking in the oven.<br>
		   Stay tuned for something delicious.</p>

		<button class="back-btn"
			onclick="window.location.href='<c:url value="/" />'">
			Back to Home
		</button>
	</div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>
