<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>MilkyWay Cakes</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Segoe UI', sans-serif;
}

/* Navbar */
.navbar {
	background: linear-gradient(90deg, #ff4f94, #ff80ab);
	padding: 14px 40px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, .12);
	position: sticky;
	top: 0;
	z-index: 999;
}
/* Logo */
.navbar-brand {
	display: flex;
	align-items: center;
	padding: 0;
	margin-right: 20px;
}

.navbar-brand img {
	width: 180px; /* Adjust as needed */
	height: 70px;
	object-fit: contain;
	border: none; /* Remove white border */
	border-radius: 0; /* Rectangle */
	padding: 0; /* Remove white space */
	margin: 0;
	background: transparent;
	box-shadow: none;
}

.navbar-brand:hover img {
	transform: scale(1.03);
	transition: 0.3s ease;
}

/* Nav Links */
.navbar-nav .nav-link {
	color: white !important;
	font-size: 17px;
	font-weight: 600;
	margin: 0 10px;
	transition: .3s;
	position: relative;
}

.navbar-nav .nav-link:hover {
	color: #fff4c4 !important;
}

.navbar-nav .nav-link::after {
	content: "";
	position: absolute;
	left: 0;
	bottom: -5px;
	width: 0;
	height: 3px;
	background: white;
	transition: .3s;
	border-radius: 20px;
}

.navbar-nav .nav-link:hover::after {
	width: 100%;
}

/* Search */
.search-box {
	width: 260px;
	position: relative;
	margin-right: 20px;
}

.search-box input {
	width: 100%;
	padding: 10px 40px 10px 15px;
	border: none;
	border-radius: 30px;
	outline: none;
}

.search-box i {
	position: absolute;
	right: 15px;
	top: 11px;
	color: #ff4f94;
}

/* Icons */
.nav-icons a {
	color: white;
	font-size: 22px;
	margin-left: 18px;
	transition: .3s;
}

.nav-icons a:hover {
	transform: scale(1.2);
	color: #fff4c4;
}

.btn-login {
	background: white;
	color: #ff4f94 !important;
	padding: 8px 20px;
	border-radius: 30px;
	font-weight: bold;
	margin-left: 15px;
	text-decoration: none;
	transition: .3s;
}

.btn-login:hover {
	background: #ffe4ef;
}

@media ( max-width :992px) {
	.search-box {
		width: 100%;
		margin: 20px 0;
	}
	.nav-icons {
		margin-top: 15px;
	}
}
</style>

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark">

		<div class="container-fluid">

			<a class="navbar-brand" href="<c:url value='/'/>"> <img
				src="<c:url value='/images/mwcake.jpg'/>" alt="MilkyWay">
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">

				<span class="navbar-toggler-icon"></span>

			</button>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">

				<div class="search-box">

					<input type="text" placeholder="Search Cakes..."> <i
						class="bi bi-search"></i>

				</div>

				<ul class="navbar-nav align-items-center">

					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/get-Shop'/>"> Shop </a></li>

					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/feedback'/>"> Reviews </a></li>

					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/special'/>"> Custom Cakes </a></li>

					<li class="nav-item"><a class="nav-link"
						href="https://share.google/Twrayrj1BEtDZBo0i" target="_blank">
							Location </a></li>

				</ul>

				<div class="nav-icons d-flex align-items-center">

					<a href="#"> <i class="bi bi-heart"></i>
					</a> <a href="#"> <i class="bi bi-cart3"></i>
					</a> <a href="#"> <i class="bi bi-person-circle"></i>
					</a> <a href="<c:url value='/admin-login'/>" class="btn-login">

						Admin </a>

				</div>

			</div>

		</div>

	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>