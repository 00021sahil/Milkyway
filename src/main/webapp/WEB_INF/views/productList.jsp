<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products | Milkyway Admin</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
body {
	background: #f8f9fa;
	font-family: Poppins, sans-serif;
}

.navbar {
	background: linear-gradient(90deg, #d63384, #ff7eb3);
}

.navbar-brand {
	color: white !important;
	font-size: 24px;
	font-weight: bold;
}

.table img {
	width: 90px;
	height: 90px;
	object-fit: cover;
	border-radius: 10px;
}

.card {
	border: none;
	border-radius: 15px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .1);
}

.card-header {
	background: #d63384;
	color: white;
	font-size: 24px;
	font-weight: bold;
}

.btn-home {
	background: white;
	color: #d63384;
	font-weight: bold;
}

.btn-home:hover {
	background: #f2f2f2;
}

.badge {
	font-size: 14px;
	padding: 8px 12px;
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg">

		<div class="container">

			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/admin-dashboard"> 🎂
				Milkyway Admin </a>

			<div>

				<a href="${pageContext.request.contextPath}/admin-dashboard"
					class="btn btn-home me-2"> <i class="bi bi-speedometer2"></i>

					Dashboard

				</a> <a href="${pageContext.request.contextPath}/add-Product"
					class="btn btn-warning"> <i class="bi bi-plus-circle-fill"></i>

					Add Product

				</a>

			</div>

		</div>

	</nav>

	<div class="container mt-5">

		<div class="card">

			<div class="card-header">All Products</div>

			<div class="card-body">

				<table class="table table-bordered table-hover align-middle">

					<thead class="table-dark">

						<tr>

							<th>ID</th>

							<th>Image</th>

							<th>Product</th>

							<th>Category</th>

							<th>Flavour</th>

							<th>Weight</th>

							<th>Price</th>

							<th>Description</th>

						</tr>

					</thead>

					<tbody>

						<c:forEach items="${productList}" var="product">

							<tr>

								<td>${product.pid}</td>

								<td><img
									src="${pageContext.request.contextPath}/images/${product.imageUrl}"
									alt="Cake"></td>

								<td><b>${product.productName}</b></td>

								<td><span class="badge bg-primary">

										${product.category} </span></td>

								<td>${product.flavour}</td>

								<td>${product.weight}</td>

								<td><b class="text-success"> ₹ ${product.price} </b></td>

								<td style="max-width: 300px">${product.description}</td>

							</tr>

						</c:forEach>

					</tbody>

				</table>

				<c:if test="${empty productList}">

					<div class="alert alert-warning text-center">No products
						found.</div>

				</c:if>

			</div>

		</div>

	</div>

</body>
</html>