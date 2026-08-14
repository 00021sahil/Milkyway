<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Customer Reviews | Milkyway Cakes</title>

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
	background: linear-gradient(135deg, #fff6fa, #ffe8f1);
	min-height: 100vh;
}

.navbar {
	background: linear-gradient(90deg, #d63384, #ff80b5);
}

.navbar-brand {
	color: white !important;
	font-size: 28px;
	font-weight: bold;
}

.hero {
	background: linear-gradient(135deg, #ffd6e8, #fff0f7);
	padding: 60px 20px;
	text-align: center;
	margin-bottom: 50px;
}

.hero h1 {
	color: #d63384;
	font-weight: 700;
	font-size: 45px;
}

.hero p {
	color: #555;
	font-size: 18px;
}

.review-card {
	border: none;
	border-radius: 22px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .10);
	transition: .35s;
	height: 100%;
	overflow: hidden;
}

.review-card:hover {
	transform: translateY(-10px);
	box-shadow: 0 20px 35px rgba(0, 0, 0, .15);
}

.review-header {
	background: #fff3f8;
	padding: 25px;
	text-align: center;
}

.avatar {
	width: 70px;
	height: 70px;
	border-radius: 50%;
	background: #d63384;
	color: white;
	font-size: 28px;
	font-weight: bold;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: auto;
}

.customer {
	margin-top: 15px;
	font-size: 18px;
	font-weight: 600;
	color: #d63384;
}

.review-body {
	padding: 25px;
}

.review-text {
	color: #666;
	min-height: 110px;
}

.stars {
	color: #ffc107;
	font-size: 22px;
	margin-top: 15px;
}

.btn-review {
	background: #d63384;
	color: white;
	font-weight: bold;
	padding: 12px 30px;
	border-radius: 12px;
}

.btn-review:hover {
	background: #bb276f;
	color: white;
}

.footer-box {
	background: #fff;
	border-radius: 20px;
	padding: 40px;
	text-align: center;
	box-shadow: 0 8px 20px rgba(0, 0, 0, .08);
	margin-top: 60px;
}

.footer-box h3 {
	color: #d63384;
	font-weight: bold;
}

.footer-box p {
	color: #666;
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
					class="btn btn-light fw-bold"> <i class="bi bi-house-fill"></i>

					Home

				</a>

			</div>

		</div>

	</nav>

	<div class="hero">

		<h1>❤️ Customer Reviews ❤️</h1>

		<p>Our customers make every celebration sweeter.</p>

	</div>

	<div class="container">

		<div class="row g-4">

			<!-- Review 1 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">P</div>

						<div class="customer">Priya S.</div>

					</div>

					<div class="review-body">

						<div class="review-text">The Chocolate Truffle Cake was
							absolutely delicious. Fresh, creamy and beautifully decorated.</div>

						<div class="stars">★★★★★</div>

					</div>

				</div>

			</div>

			<!-- Review 2 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">R</div>

						<div class="customer">Rahul K.</div>

					</div>

					<div class="review-body">

						<div class="review-text">Excellent birthday cake. Timely
							delivery and everyone loved the taste.</div>

						<div class="stars">★★★★★</div>

					</div>

				</div>

			</div>

			<!-- Review 3 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">S</div>

						<div class="customer">Sneha M.</div>

					</div>

					<div class="review-body">

						<div class="review-text">Red Velvet Cake was soft, rich and
							delicious. Highly recommended.</div>

						<div class="stars">★★★★★</div>

					</div>

				</div>

			</div>

			<!-- Review 4 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">A</div>

						<div class="customer">Amit P.</div>

					</div>

					<div class="review-body">

						<div class="review-text">Beautiful cake design. Fresh
							ingredients and professional service.</div>

						<div class="stars">★★★★☆</div>

					</div>

				</div>

			</div>

			<!-- Review 5 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">N</div>

						<div class="customer">Neha R.</div>

					</div>

					<div class="review-body">

						<div class="review-text">Customized Anniversary Cake looked
							exactly the way we wanted.</div>

						<div class="stars">★★★★★</div>

					</div>

				</div>

			</div>

			<!-- Review 6 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">V</div>

						<div class="customer">Vikram J.</div>

					</div>

					<div class="review-body">

						<div class="review-text">Quick delivery, affordable prices
							and excellent customer service.</div>

						<div class="stars">★★★★★</div>

					</div>

				</div>

			</div>

			<!-- Review 7 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">P</div>

						<div class="customer">Pooja D.</div>

					</div>

					<div class="review-body">

						<div class="review-text">Fruit Cake was incredibly fresh and
							perfect for our family celebration.</div>

						<div class="stars">★★★★★</div>

					</div>

				</div>

			</div>

			<!-- Review 8 -->

			<div class="col-lg-3 col-md-6">

				<div class="card review-card">

					<div class="review-header">

						<div class="avatar">A</div>

						<div class="customer">Arjun T.</div>

					</div>

					<div class="review-body">

						<div class="review-text">One of the best online cake shops.
							Quality, freshness and taste were outstanding.</div>

						<div class="stars">★★★★★</div>

					</div>

				</div>

			</div>

		</div>

		<div class="footer-box">

			<h3>Loved Our Cakes?</h3>

			<p>Your feedback helps us improve and makes every celebration
				even sweeter.</p>

			<a href="${pageContext.request.contextPath}/feedback"
				class="btn btn-review"> <i class="bi bi-chat-heart-fill"></i>

				Write Your Review

			</a>

		</div>

	</div>

	<br>
	<br>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>