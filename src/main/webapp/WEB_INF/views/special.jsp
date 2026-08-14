<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Cake Request | Milkyway Cakes</title>
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
	background: linear-gradient(135deg, #fff6fa, #ffe4ef);
}

.navbar {
	background: linear-gradient(90deg, #d63384, #ff7eb3);
}

.navbar-brand {
	color: #fff !important;
	font-size: 28px;
	font-weight: bold;
}

.card {
	border: none;
	border-radius: 22px;
	box-shadow: 0 12px 30px rgba(0, 0, 0, .12);
}

.card-header {
	background: #d63384;
	color: #fff;
	font-size: 28px;
	font-weight: 700;
	text-align: center;
	padding: 20px;
}

.btn-pink {
	background: #d63384;
	color: #fff;
	font-weight: 600;
}

.btn-pink:hover {
	background: #bb276f;
	color: #fff;
}

#tick {
	display: none;
	color: green;
	font-weight: bold;
	font-size: 18px;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">🎂
				Milkyway Cakes</a>
		</div>
	</nav>

	<div class="container py-5">
		<div class="row justify-content-center">
			<div class="col-lg-8">

				<div class="card">
					<div class="card-header">Custom Cake Request</div>
					<div class="card-body">

						<form action="<c:url value='/finalSubmit'/>" method="post"
							enctype="multipart/form-data">

							<div class="row">
								<div class="col-md-6 mb-3">
									<label>Name</label> <input type="text" id="name" name="name"
										class="form-control" required>
								</div>

								<div class="col-md-6 mb-3">
									<label>Mobile Number</label> <input type="text" name="mobile"
										class="form-control" required>
								</div>
							</div>

							<div class="mb-3">
								<label>Email</label> <input type="email" id="email" name="email"
									class="form-control" required>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label>Occasion</label> <select name="occasion"
										class="form-select">
										<option>Birthday</option>
										<option>Anniversary</option>
										<option>Wedding</option>
										<option>Baby Shower</option>
										<option>Engagement</option>
										<option>Other</option>
									</select>
								</div>

								<div class="col-md-6 mb-3">
									<label>Flavour</label> <select name="flavour"
										class="form-select">
										<option>Chocolate</option>
										<option>Vanilla</option>
										<option>Black Forest</option>
										<option>Butterscotch</option>
										<option>Red Velvet</option>
										<option>Strawberry</option>
										<option>Fruit Cake</option>
									</select>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 mb-3">
									<label>Weight</label> <select name="weight" class="form-select">
										<option>500 g</option>
										<option>1 Kg</option>
										<option>1.5 Kg</option>
										<option>2 Kg</option>
										<option>3 Kg</option>
									</select>
								</div>

								<div class="col-md-6 mb-3">
									<label>Delivery Date</label> <input type="date"
										name="deliveryDate" class="form-control">
								</div>
							</div>

							<div class="mb-3">
								<label>Message on Cake</label> <input type="text"
									name="cakeMessage" class="form-control"
									placeholder="Happy Birthday...">
							</div>

							<div class="mb-3">
								<label>Special Instructions</label>
								<textarea id="message" name="message" rows="4"
									class="form-control" placeholder="Describe your custom cake..."
									required></textarea>
							</div>

							<div class="mb-3">
								<label>Reference Design Image</label> <input type="file"
									name="photo" class="form-control">
							</div>

							<button type="button" id="otpBtn"
								class="btn btn-warning w-100 mb-3" onclick="sendOtp()">Send
								OTP</button>

							<input type="text" id="otpInput" class="form-control mb-2"
								placeholder="Enter OTP">

							<button type="button" class="btn btn-info w-100 mb-2"
								onclick="verifyOtp()">Verify OTP</button>

							<div id="tick">✔ OTP Verified Successfully</div>

							<p id="timer" class="text-danger mt-2"></p>

							<button type="submit" id="submitBtn"
								class="btn btn-pink w-100 mt-3" disabled>Submit Custom
								Request</button>

						</form>

					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
let timerInterval,timeLeft=120;
function startTimer(){
clearInterval(timerInterval);timeLeft=120;
timerInterval=setInterval(function(){
let m=Math.floor(timeLeft/60),s=timeLeft%60;
document.getElementById("timer").innerHTML="Time Remaining : "+m+":"+(s<10?"0":"")+s;
timeLeft--;
if(timeLeft<0){
clearInterval(timerInterval);
document.getElementById("timer").innerHTML="OTP Expired";
document.getElementById("submitBtn").disabled=true;
document.getElementById("otpBtn").disabled=false;
}
},1000);
}
function sendOtp(){
const fd=new FormData();
fd.append("name",document.getElementById("name").value);
fd.append("email",document.getElementById("email").value);
fd.append("message",document.getElementById("message").value);
fetch("<c:url value='/sendOtp'/>",{method:"POST",body:fd,credentials:"same-origin"})
.then(r=>r.text()).then(d=>{
if(d.trim()=="OTP_SENT"){
alert("OTP Sent Successfully");
document.getElementById("otpBtn").disabled=true;
startTimer();
}});
}
function verifyOtp(){
const fd=new FormData();
fd.append("enteredOtp",document.getElementById("otpInput").value);
fetch("<c:url value='/verifyOtp'/>",{method:"POST",body:fd,credentials:"same-origin"})
.then(r=>r.text()).then(d=>{
if(d.trim()=="VALID"){
document.getElementById("tick").style.display="block";
document.getElementById("submitBtn").disabled=false;
clearInterval(timerInterval);
}else if(d.trim()=="EXPIRED"){
alert("OTP Expired");
}else{
alert("Invalid OTP");
}});
}
</script>

</body>
</html>
