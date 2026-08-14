<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Customer Feedback | Milkyway Cakes</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<style>
* {
	font-family: 'Poppins', sans-serif;
}

body {
	background: linear-gradient(135deg, #fff5f8, #ffe3ef);
	min-height: 100vh;
}

.navbar {
	background: linear-gradient(90deg, #d63384, #ff7eb3);
}

.navbar-brand {
	color: white !important;
	font-size: 28px;
	font-weight: bold;
}

.feedback-card {
	background: white;
	border: none;
	border-radius: 22px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, .12);
	padding: 35px;
}

.title {
	text-align: center;
	color: #d63384;
	font-weight: 700;
	margin-bottom: 10px;
}

.subtitle {
	text-align: center;
	color: #666;
	margin-bottom: 30px;
}

.form-label {
	font-weight: 600;
	color: #555;
}

.form-control {
	border-radius: 12px;
	padding: 12px;
}

.form-control:focus {
	border-color: #d63384;
	box-shadow: 0 0 8px rgba(214, 51, 132, .25);
}

.btn-pink {
	background: #d63384;
	color: white;
	font-weight: bold;
	border-radius: 10px;
	padding: 12px;
}

.btn-pink:hover {
	background: #bb276f;
	color: white;
}

.btn-warning {
	font-weight: bold;
}

.btn-info {
	font-weight: bold;
	color: white;
}

#tick {
	display: none;
	color: green;
	font-size: 18px;
	font-weight: bold;
}

.timer {
	font-weight: bold;
	color: red;
}

.upload-box {
	border: 2px dashed #d63384;
	padding: 20px;
	border-radius: 15px;
	text-align: center;
	background: #fff7fb;
}

.footer-note {
	font-size: 13px;
	color: #777;
	text-align: center;
	margin-top: 25px;
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg">

		<div class="container">

			<a class="navbar-brand" href="${pageContext.request.contextPath}/">

				🎂 Milkyway Cakes </a>

			<div class="ms-auto">

				<a href="${pageContext.request.contextPath}/"
					class="btn btn-light fw-bold"> <i class="bi bi-house-door-fill"></i>

					Home

				</a>

			</div>

		</div>

	</nav>

	<div class="container py-5">

		<div class="row justify-content-center">

			<div class="col-lg-7">

				<div class="feedback-card">

					<h2 class="title">Customer Feedback</h2>

					<p class="subtitle">We'd love to hear your experience with
						Milkyway Cakes ❤️</p>

					<form action="<c:url value='/finalSubmit'/>" method="post"
						enctype="multipart/form-data">

						<div class="mb-3">

							<label class="form-label"> Full Name </label> <input type="text"
								id="name" name="name" class="form-control" required>

						</div>

						<div class="mb-3">

							<label class="form-label"> Email Address </label> <input
								type="email" id="email" name="email" class="form-control"
								required>

						</div>

						<div class="mb-3">

							<label class="form-label"> Your Feedback </label>

							<textarea id="message" name="message" rows="5"
								class="form-control" required></textarea>

						</div>

						<div class="mb-4">

							<label class="form-label"> Upload Cake Photo (Optional) </label>

							<div class="upload-box">

								<input type="file" name="photo" class="form-control">

							</div>

						</div>

						<button type="button" id="otpBtn"
							class="btn btn-warning w-100 mb-3" onclick="sendOtp()">

							<i class="bi bi-envelope-fill"></i> Send OTP

						</button>

						<div class="row">

							<div class="col-md-8">

								<input type="text" id="otpInput" class="form-control"
									placeholder="Enter OTP">

							</div>

							<div class="col-md-4">

								<button type="button" class="btn btn-info w-100"
									onclick="verifyOtp()">Verify</button>

							</div>

						</div>

						<div class="mt-3">

							<span id="tick"> ✔ OTP Verified Successfully </span>

						</div>

						<div id="timer" class="timer mt-2"></div>

						<button type="submit" id="submitBtn"
							class="btn btn-pink w-100 mt-4" disabled>

							<i class="bi bi-send-fill"></i> Submit Feedback

						</button>

					</form>

					<div class="footer-note">

						Thank you for choosing <b>Milkyway Cakes</b>. Your valuable
						feedback helps us serve you better.

					</div>

				</div>

			</div>

		</div>

	</div>

	<script>

let timerInterval;
let timeLeft = 120;

function startTimer(){

clearInterval(timerInterval);

timeLeft=120;

timerInterval=setInterval(function(){

let minutes=Math.floor(timeLeft/60);

let seconds=timeLeft%60;

document.getElementById("timer").innerHTML=
"OTP expires in : "+minutes+":"+(seconds<10?"0":"")+seconds;

timeLeft--;

if(timeLeft<0){

clearInterval(timerInterval);

document.getElementById("timer").innerHTML="OTP Expired";

document.getElementById("submitBtn").disabled=true;

}

},1000);

}

function sendOtp(){

const formData=new FormData();

formData.append("name",document.getElementById("name").value);

formData.append("email",document.getElementById("email").value);

formData.append("message",document.getElementById("message").value);

fetch("<c:url value='/sendOtp'/>",{

method:"POST",

body:formData,

credentials:"same-origin"

})

.then(res=>res.text())

.then(data=>{

if(data.trim()=="OTP_SENT"){

alert("OTP Sent Successfully");

document.getElementById("otpBtn").disabled=true;

startTimer();

}

});

}

function verifyOtp(){

const formData=new FormData();

formData.append("enteredOtp",document.getElementById("otpInput").value);

fetch("<c:url value='/verifyOtp'/>",{

method:"POST",

body:formData,

credentials:"same-origin"

})

.then(res=>res.text())

.then(data=>{

if(data.trim()=="VALID"){

document.getElementById("tick").style.display="block";

document.getElementById("submitBtn").disabled=false;

clearInterval(timerInterval);

}

else if(data.trim()=="EXPIRED"){

alert("OTP Expired");

}

else{

alert("Invalid OTP");

}

});

}

</script>

</body>
</html>