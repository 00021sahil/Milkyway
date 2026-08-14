<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="header.jsp" />

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Milkyway Cakes | Shop</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
body {
	background: #fff8fb;
	font-family: 'Poppins', sans-serif;
}

.hero {
	background: linear-gradient(135deg, #ffdde9, #ffd6e8);
	padding: 60px 20px;
	text-align: center;
	margin-bottom: 40px;
}

.hero h1 {
	color: #d63384;
	font-weight: bold;
	font-size: 45px;
}

.hero p {
	color: #555;
	font-size: 18px;
}

.product-card {
	border: none;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 10px 20px rgba(0, 0, 0, .08);
	transition: .35s;
	height: 100%;
}

.product-card:hover {
	transform: translateY(-8px);
}

.product-card img {
	height: 270px;
	object-fit: cover;
}

.card-body h4 {
	font-weight: bold;
	color: #333;
}

.price {
	font-size: 26px;
	font-weight: bold;
	color: #198754;
}

.weight {
	color: #666;
	font-weight: 500;
}

.flavour {
	color: #d63384;
	font-weight: bold;
}

.description {
	height: 65px;
	overflow: hidden;
	color: #666;
}

.card-footer {
	background: white;
	border-top: none;
}

.btn-cart {
	background: #d63384;
	color: white;
	font-weight: bold;
}

.btn-cart:hover {
	background: #bb276f;
	color: white;
}

.btn-details {
	border: 2px solid #d63384;
	color: #d63384;
	font-weight: bold;
}

.btn-details:hover {
	background: #d63384;
	color: white;
}

.empty {
	text-align: center;
	padding: 80px;
	color: #888;
	font-size: 25px;
}
</style>

</head>

<body>

	<div class="hero">

		<h1>🍰 Our Delicious Cakes</h1>

		<p>Freshly baked cakes made with love.</p>

	</div>

	<div class="container">

		<div class="row">

			<c:forEach var="product" items="${productList}">

				<div class="col-lg-4 col-md-6 mb-4">

					<div class="card product-card">

						<img
							src="${pageContext.request.contextPath}/images/${product.imageUrl}"
							alt="${product.productName}">

						<div class="card-body">

							<span class="badge bg-danger"> ${product.category} </span>

							<h4 class="mt-3">${product.productName}</h4>

							<p class="flavour">🍫 ${product.flavour}</p>

							<p class="weight">⚖ ${product.weight}</p>

							<p class="description">${product.description}</p>

							<div class="price">₹ ${product.price}</div>

						</div>

						<div class="card-footer">

							<div class="d-grid gap-2">


								<form action="${pageContext.request.contextPath}/add-to-cart"
									method="post">

									<input type="hidden" name="pid" value="${product.pid}">

									<input type="hidden" name="quantity" value="1"> <a
										href="${pageContext.request.contextPath}/add-to-cart/${product.pid}"
										class="btn btn-danger"> <i class="bi bi-cart-plus-fill"></i>

										Add To Cart

									</a>

								</form>

							</div>

						</div>

					</div>

				</div>

			</c:forEach>

			<c:if test="${empty productList}">

				<div class="empty">

					🎂 <br> <br> No Cakes Available Right Now

				</div>

			</c:if>

		</div>

	</div>

	<br>
	<br>

	<jsp:include page="footer.jsp" />

</body>
</html>