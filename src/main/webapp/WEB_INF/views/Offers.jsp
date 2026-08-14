<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Offers</title>

<style>
.offer-box {
	border: 1px solid #eee;
}

.offer-box h2 {
	font-weight: 700;
}

.offer-box .btn {
	padding: 0.8rem 1.5rem;
	border-radius: 50px;
}

.navbar-brand {
	display: flex;
	justify-content: center;
	margin-bottom: 20px;
}

.navbar-brand img {
	width: 120px;
	height: auto;
	border-radius: 10px;
}

.carousel-control-prev-icon {
	background-image:
		url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23ff0000' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E");
}

.carousel-control-next-icon {
	background-image:
		url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23ff0000' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E");
}

.copy-container {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 10px;
	margin-bottom: 20px;
}

.copy-container input {
	width: 180px;
	text-align: center;
	font-weight: bold;
}

#copyMessage {
	font-weight: bold;
	color: green;
	margin-bottom: 20px;
}
</style>

</head>
<body>

	<div id="offerCarousel" class="carousel slide carousel-dark"
		data-bs-ride="carousel">

		<div class="carousel-inner">

			<!-- Offer 1 -->
			<div class="carousel-item active" data-bs-interval="10000">

				<section class="py-5 bg-light">

					<div class="container">

						<div class="offer-box text-center p-5 shadow rounded bg-white">

							<a class="navbar-brand" href="<c:url value='/'/>"> <img
								src="<c:url value='/images/mwcake.jpg'/>" alt="MilkyWay">
							</a> <span class="badge bg-danger mb-3"> Special Offer </span>

							<h2 class="mb-3">Get 5% OFF</h2>

							<p class="mb-4 text-muted">Use the coupon below and get 30%
								discount on your first order.</p>

							<div class="copy-container">

								<div class="copy-container">

									<input type="text" id="couponCode1" class="form-control"
										value="WELCOME05" readonly>

									<button type="button" class="btn btn-primary"
										onclick="copyCoupon('couponCode1','copyMessage1')">
										Copy</button>

								</div>
				</section>

			</div>

			<!-- Offer 2 -->

			<div class="carousel-item active" data-bs-interval="10000">

				<section class="py-5 bg-light">

					<div class="container">

						<div class="offer-box text-center p-5 shadow rounded bg-white">

							<a class="navbar-brand" href="<c:url value='/'/>"> <img
								src="<c:url value='/images/mwcake.jpg'/>" alt="MilkyWay">
							</a> <span class="badge bg-danger mb-3"> Special Offer </span>

							<h2 class="mb-3">Free Delivery</h2>

							<p class="mb-4 text-muted">Use the coupon below and get free
								delivery on your first order.</p>

							<div class="copy-container">

								<div class="copy-container">

									<input type="text" id="couponCode2" class="form-control"
										value="FREEDELIVERYMW" readonly>

									<button type="button" class="btn btn-primary"
										onclick="copyCoupon('couponCode2','copyMessage2')">
										Copy</button>


						</div>
					</div>
				</section>

			</div>

		</div>

		<button class="carousel-control-prev" type="button"
			data-bs-target="#offerCarousel" data-bs-slide="prev">

			<span class="carousel-control-prev-icon"></span>

		</button>

		<button class="carousel-control-next" type="button"
			data-bs-target="#offerCarousel" data-bs-slide="next">

			<span class="carousel-control-next-icon"></span>

		</button>

	</div>

	<script>
	function copyCoupon(couponId, messageId) {

		const coupon = document.getElementById(couponId);
		const message = document.getElementById(messageId);

		navigator.clipboard.writeText(coupon.value)
			.then(function() {

				message.innerHTML = "✅ Coupon copied successfully!";
				message.style.color = "green";

				setTimeout(function() {
					message.innerHTML = "";
				}, 2000);

			})
			.catch(function() {
				alert("Unable to copy coupon.");
			});
	}
</script>

</body>
</html>