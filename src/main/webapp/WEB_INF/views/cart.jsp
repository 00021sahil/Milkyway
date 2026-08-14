<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Shopping Cart | Milkyway Cakes</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
body {
	background: #fff7fb;
	font-family: Poppins, sans-serif;
}

.navbar {
	background: linear-gradient(90deg, #d63384, #ff80b5);
}

.navbar-brand {
	color: white !important;
	font-size: 26px;
	font-weight: bold;
}

.cart-card {
	border: none;
	border-radius: 18px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .08);
	margin-bottom: 20px;
}

.cart-img {
	height: 150px;
	width: 150px;
	object-fit: cover;
	border-radius: 15px;
}

.summary-card {
	border: none;
	border-radius: 18px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .08);
	position: sticky;
	top: 20px;
}

.btn-pink {
	background: #d63384;
	color: white;
	font-weight: bold;
}

.btn-pink:hover {
	background: #bb276f;
	color: white;
}

.qty-btn {
	width: 35px;
	height: 35px;
	border-radius: 50%;
	font-weight: bold;
}

.price {
	font-size: 22px;
	font-weight: bold;
	color: #198754;
}

.terms {
	background: #fff;
	border-radius: 15px;
	padding: 20px;
	margin-top: 20px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, .08);
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg">

		<div class="container">

			<a class="navbar-brand" href="${pageContext.request.contextPath}/">

				🎂 Milkyway Cakes </a>

		</div>

	</nav>

	<div class="container mt-5">

		<div class="row">

			<!-- LEFT SIDE -->

			<div class="col-lg-8">

				<h3 class="mb-4">🛒 Shopping Cart</h3>

				<c:forEach var="cart" items="${cartList}">

					<div class="card cart-card">

						<div class="card-body">

							<div class="row align-items-center">

								<div class="col-md-3 text-center">

									<img
										src="${pageContext.request.contextPath}/images/${cart.product.imageUrl}"
										class="cart-img">

								</div>

								<div class="col-md-5">

									<h4>${cart.product.productName}</h4>

									<p>

										<b>Category :</b> ${cart.product.category}

									</p>

									<p>

										<b>Flavour :</b> ${cart.product.flavour}

									</p>

									<p>

										<b>Weight :</b> ${cart.product.weight}

									</p>

									<div class="price">₹ ${cart.product.price}</div>

								</div>

								<div class="col-md-4 text-center">

									<div class="mb-3">

									

										<span class="mx-3 fw-bold"> ${cart.quantity} </span>

										

									</div>

									<a
										href="${pageContext.request.contextPath}/remove-cart/${cart.cartId}"
										class="btn btn-outline-danger"> <i
										class="bi bi-trash-fill"></i> Remove

									</a>

								</div>

							</div>

						</div>

					</div>

				</c:forEach>

				<div class="terms">

					<h5 class="text-danger">Terms & Conditions</h5>

					<hr>

					<ul>

						<li>Only <b>20% advance payment</b> is required to confirm
							your order.
						</li>

						<li>The remaining <b>80% payment</b> must be completed before
							or at the time of delivery.
						</li>

						<li>Our team will call you after receiving the advance
							payment to confirm your order details.</li>

						<li>Customized cakes cannot be cancelled after confirmation.
						</li>

						<li>Please ensure your phone number is reachable for order
							confirmation.</li>

						<li>The delivery time will be finalized during the
							confirmation call.</li>

					</ul>

					<div class="form-check">

						<input class="form-check-input" type="checkbox" required>

						<label class="form-check-label"> I have read and agree to
							the Terms & Conditions. </label>

					</div>

				</div>

			</div>

			<!-- RIGHT SIDE -->

			<div class="col-lg-4">

				<div class="card summary-card">

					<div class="card-body">

						<h4 class="text-center text-danger">Order Summary</h4>

						<hr>

						<p>

							Total Amount <span class="float-end"> ₹ <%=String.format("%.2f", request.getAttribute("grandTotal"))%>

							</span>

						</p>

						<p>

							Advance (20%) <span class="float-end text-success"> ₹ <%=String.format("%.2f", request.getAttribute("advanceAmount"))%>

							</span>

						</p>

						<p>

							Remaining (80%) <span class="float-end"> ₹ <%=String.format("%.2f", request.getAttribute("remainingAmount"))%>

							</span>

						</p>

						<hr>

						<h5>

							Grand Total <span class="float-end text-danger"> ₹ <%=String.format("%.2f", request.getAttribute("grandTotal"))%>

							</span>

						</h5>

						<div class="alert alert-warning mt-4">

							<b>Important:</b> Only <b>20% advance payment</b> is required to
							confirm your order. Our team will contact you to finalize the
							cake design, delivery date, and delivery time before preparing
							your order.

						</div>

						<a href="${pageContext.request.contextPath}/customerinfo"
							class="btn btn-pink w-100 mt-3"> Proceed To Checkout </a> <a
							href="${pageContext.request.contextPath}/get-Shop"
							class="btn btn-outline-secondary w-100 mt-2"> Continue
							Shopping </a>

					</div>

				</div>

			</div>

		</div>

	</div>

	</div>

</body>
</html>