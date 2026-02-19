<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Milkyway Application</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
/* Navbar background */
.navbar {
	background: linear-gradient(90deg, #1e3c72, #2a5298);
	padding: 10px 20px;
}

/* Brand style */
.navbar-brand {
	font-size: 24px;
	font-weight: bold;
	color: #fff !important;
	letter-spacing: 1px;
}

/* Nav links */
.navbar-nav .nav-link {
	color: #ffffff !important;
	font-weight: 500;
	margin-left: 15px;
	transition: all 0.3s ease;
}

/* Hover effect */
.navbar-nav .nav-link:hover {
	color: #ffdd57 !important;
	transform: translateY(-1px);
}
</style>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container-fluid">

			<!-- Brand -->
			<a class="navbar-brand" href="<c:url value='/' />">MilkyWay Cakes & Desserts</a>

			<!-- Toggle for mobile -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navbar links -->
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav align-items-center">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/orders' />">Shop</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/feedback' />">Feedback</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/special' />">Custom Cakes</a></li>
					<li class="nav-item"><a class="nav-link"
						href="https://share.google/Twrayrj1BEtDZBo0i"
						target="_blank"> Location </a></li>


				</ul>
			</div>

		</div>
	</nav>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>