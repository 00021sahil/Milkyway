<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product | Milkyway Cakes</title>

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

.card {
	border: none;
	border-radius: 18px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, .1);
}

.card-header {
	background: #d63384;
	color: white;
	font-size: 24px;
	font-weight: bold;
	text-align: center;
	padding: 20px;
}

.btn-save {
	background: #d63384;
	color: white;
	font-weight: bold;
}

.btn-save:hover {
	background: #b6246d;
	color: white;
}

.form-label {
	font-weight: 600;
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg">

		<div class="container">

			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/admin-dashboard"> 🎂
				Milkyway Admin </a>

			<div class="ms-auto">

				<a href="${pageContext.request.contextPath}/"
					class="btn btn-light fw-bold me-2"> <i
					class="bi bi-house-door-fill"></i> Home
				</a> <a href="${pageContext.request.contextPath}/admin-dashboard"
					class="btn btn-outline-light fw-bold"> <i
					class="bi bi-speedometer2"></i> Dashboard
				</a>

			</div>

		</div>

	</nav>

	<div class="container mt-5">

		<div class="row justify-content-center">

			<div class="col-lg-8">

				<div class="card">

					<div class="card-header">Add New Cake</div>

					<div class="card-body">

						<form action="${pageContext.request.contextPath}/add-Product"
							method="post" enctype="multipart/form-data">

							<div class="mb-3">

								<label class="form-label">Category</label> <input type="text"
									name="category" class="form-control" required>

							</div>

							<div class="mb-3">

								<label class="form-label">Cake Name</label> <input type="text"
									name="productName" class="form-control" required>

							</div>

							<div class="mb-3">

								<label class="form-label">Flavour</label> <input type="text"
									name="flavour" class="form-control"
									placeholder="Chocolate, Vanilla, Red Velvet..." required>

							</div>

							<div class="mb-3">

								<label class="form-label">Weight</label> <select name="weight"
									class="form-select" required>

									<option value="">Select Weight</option>
									<option value="500g">200 g</option>
									<option value="500g">500 g</option>
									<option value="1kg">1 Kg</option>
									<option value="1.5kg">1.5 Kg</option>
									<option value="2kg">2 Kg</option>
									<option value="3kg">3 Kg</option>

								</select>

							</div>

							<div class="mb-3">

								<label class="form-label">Price (₹)</label> <input type="number"
									step="0.01" name="price" class="form-control" required>

							</div>
							<div class="mb-3">

								<label class="form-label">Cake Description</label>

								<textarea name="description" class="form-control" rows="5"
									placeholder="Describe the cake, ingredients, taste, occasions, freshness, etc."
									required></textarea>

							</div>
							<div class="mb-3">

								<label class="form-label"> Product Image </label> <input
									type="file" name="imageFile" class="form-control"
									accept="image/*" required>

							</div>

							<div class="text-center">

								<button type="submit" class="btn btn-save px-5">

									<i class="bi bi-plus-circle-fill"></i> Save Product

								</button>

							</div>

						</form>

						<%
						String msg = (String) request.getAttribute("msg");

						if (msg != null) {
						%>

						<div class="alert alert-success mt-4 text-center">

							<%=msg%>

						</div>

						<%
						}
						%>

					</div>

				</div>

			</div>

		</div>

	</div>

</body>
</html>