<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard | Crème Pop</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
* {
	font-family: 'Poppins', sans-serif;
}

body {
	background: #f8f9fa;
}

/* Navbar */
.navbar {
	background: linear-gradient(90deg, #d63384, #ff7eb3);
}

.navbar-brand {
	font-weight: bold;
	font-size: 24px;
	color: white !important;
}

.nav-link {
	color: white !important;
	font-weight: 500;
}

.logout-btn {
	background: white;
	color: #d63384;
	font-weight: bold;
	border-radius: 8px;
	padding: 6px 18px;
	text-decoration: none;
}

.logout-btn:hover {
	background: #f1f1f1;
}

/* Welcome */
.welcome {
	margin: 35px 0;
	text-align: center;
}

.welcome h2 {
	font-weight: bold;
	color: #d63384;
}

.welcome p {
	color: #666;
}

/* Cards */
.card-box {
	background: white;
	border-radius: 15px;
	padding: 30px;
	text-align: center;
	box-shadow: 0 8px 20px rgba(0,0,0,.08);
	transition: .3s;
	height: 100%;
}

.card-box:hover {
	transform: translateY(-8px);
}

.card-box i {
	font-size: 55px;
	color: #d63384;
	margin-bottom: 15px;
}

.card-box h4 {
	font-weight: bold;
	margin-bottom: 10px;
}

.card-box p {
	color: gray;
	font-size: 14px;
}

.card-box a {
	display: inline-block;
	margin-top: 15px;
	background: #d63384;
	color: white;
	padding: 10px 25px;
	border-radius: 8px;
	text-decoration: none;
}

.card-box a:hover {
	background: #b6246d;
}
</style>

</head>

<body>

<nav class="navbar navbar-expand-lg">

<div class="container">

<a class="navbar-brand" href="#">
🎂 Crème Pop Admin
</a>

<a href="${pageContext.request.contextPath}/logout"
	class="logout-btn">
	Logout
</a>

</div>

</nav>

<div class="container">

<div class="welcome">

<h2>
Welcome Admin 👋
</h2>

<p>
Manage your cake shop from one place.
</p>

</div>

<div class="row g-4">

<div class="col-md-4">

<div class="card-box">

<i class="bi bi-plus-circle-fill"></i>

<h4>Add Product</h4>

<p>
Add new cakes, pastries and desserts.
</p>

<a href="${pageContext.request.contextPath}/add-Product">
Open
</a>

</div>

</div>

<div class="col-md-4">

<div class="card-box">

<i class="bi bi-box-seam-fill"></i>

<h4>View Products</h4>

<p>
View, edit or delete products.
</p>

<a href="${pageContext.request.contextPath}/get-all-Products">
Open
</a>

</div>

</div>

<div class="col-md-4">

<div class="card-box">

<i class="bi bi-cart-check-fill"></i>

<h4>Orders</h4>

<p>
Check customer orders.
</p>

<a href="${pageContext.request.contextPath}/orders">
Open
</a>

</div>

</div>

</div>

<br><br>

<div class="row g-4">

<div class="col-md-4">

<div class="card-box">

<i class="bi bi-chat-left-heart-fill"></i>

<h4>Feedback</h4>

<p>
View customer feedback.
</p>

<a href="#">
Coming Soon
</a>

</div>

</div>

<div class="col-md-4">

<div class="card-box">

<i class="bi bi-graph-up-arrow"></i>

<h4>Sales Report</h4>

<p>
Track cake sales and revenue.
</p>

<a href="#">
Coming Soon
</a>

</div>

</div>

<div class="col-md-4">

<div class="card-box">

<i class="bi bi-gear-fill"></i>

<h4>Settings</h4>

<p>
Manage admin account.
</p>

<a href="#">
Coming Soon
</a>

</div>

</div>

</div>

</div>

</body>
</html>