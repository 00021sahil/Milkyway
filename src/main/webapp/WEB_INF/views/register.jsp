<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register - Milkyway</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f8f9fa;
}

.form-container {
	max-width: 450px;
	margin: 60px auto;
	padding: 30px;
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}
</style>
</head>

<body>

	<jsp:include page="header.jsp" />

	<main>
		<section class="form-container">
			<h3 class="text-center mb-4">Create Your Milkyway Account</h3>

			<form action="/add-client" method="post">

				<!-- Full Name -->
				<div class="mb-3">
					<label class="form-label">Full Name</label> <input type="text"
						name="name" class="form-control" required>
				</div>

				<!-- Email -->
				<div class="mb-3">
					<label class="form-label">Email</label> <input type="email"
						name="email" class="form-control" required>
				</div>

				<!-- Mobile -->
				<div class="mb-3">
					<label class="form-label">Mobile Number</label> <input type="tel"
						name="mobileNumber" class="form-control" pattern="[0-9]{10}"
						maxlength="10" placeholder="10-digit number" required>
				</div>

				<!-- Username -->
				<div class="mb-3">
					<label class="form-label">Username</label> <input type="text"
						name="username" class="form-control" required>
				</div>

				<!-- Password -->
				<div class="mb-4">
					<label class="form-label">Password</label> <input type="password"
						name="password" class="form-control" required>
				</div>

				<div class="d-grid">
					<button type="submit" class="btn btn-dark">Register</button>
				</div>
			</form>

			<div class="text-center mt-3">
				<small> Already have an account? <a href="/login">Login
						here</a>
				</small>
			</div>
		</section>
	</main>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
