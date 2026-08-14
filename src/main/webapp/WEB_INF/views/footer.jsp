<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Milkyway Footer</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

</head>

<body>

	<footer class="bg-orange text-black mt-5">

		<div class="container py-5">

			<div class="row gy-4">

				<!-- Column 1: Logo + About -->
				<div class="col-md-3">
					<img src="/images/mwcake.jpg" alt="Milkyway Logo"
						style="height: 70px;" class="mb-3">

					<p>Milkyway is your one-stop solution for celebrations. Fresh
						cakes, custom designs, and seamless service.</p>
				</div>

				<!-- Column 2: Quick Links -->
				<div class="col-md-3">
					<h5 class="fw-bold mb-3">Quick Links</h5>
					<ul class="list-unstyled">
						<li><a href="/orders" class="text-black text-decoration-none">Order
								Cakes</a></li>
						<li><a href="/special"
							class="text-black text-decoration-none">Custom Cakes</a></li>
						<li><a href="/feedback"
							class="text-black text-decoration-none">Feedback</a></li>
					</ul>
				</div>

				<!-- Column 3: Contact -->
			
				<div class="col-md-3">
					<h5 class="fw-bold mb-3">Contact</h5>
					<p>
				
						<i class="bi bi-telephone-fill me-2"></i> +91 9766296627
					</p>

					<p>
						<a href="https://share.google/Twrayrj1BEtDZBo0i" target="_blank"
							class="text-black text-decoration-none"> <i
							class="bi bi-geo-alt-fill me-2"></i> Pune, India
						</a>
					</p>
				</div>

				<!-- Column 4: Social + Hours -->
				<div class="col-md-3">
					<h5 class="fw-bold mb-3">Follow Us</h5>

					<div class="mb-3">
						<a href="https://www.instagram.com/milkyway_cakes_and_desserts?igsh=MWZyNm9kZWg4a29rNQ==" target="_blank"
							class="text-black me-3"> <i class="bi bi-instagram fs-4"></i>
						</a> <a
							href="https://wa.me/919876543210?text=Hello%20I%20want%20to%20order%20a%20cake"
							target="_blank" class="text-black"> <i
							class="bi bi-whatsapp fs-4"></i>
						</a>
					</div>

					<p class="mb-0">
						<strong>Working Hours</strong>
					</p>
					<small>Mon - Sun: 7 AM - 11 PM</small>
				</div>

			</div>

			<hr class="border-light mt-4">

			<div class="text-center pt-3">
				<small> &copy; <%=java.time.Year.now()%> Milkyway Cakes. All
					Rights Reserved.
				</small>
			</div>

		</div>

	</footer>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>