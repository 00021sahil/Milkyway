<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<jsp:include page="header.jsp" />

	<div class="container mt-5">
		<h2 class="text-center mb-4">Feedback Form</h2>

		<form action="<c:url value='/contact/submit' />"
		      method="post"
		      enctype="multipart/form-data"
		      class="p-4 shadow rounded bg-light">

			<div class="mb-3">
				<label class="form-label">Full Name</label>
				<input type="text" name="name" class="form-control" required>
			</div>

			<div class="mb-3">
				<label class="form-label">Email</label>
				<input type="email" name="email" class="form-control" required>
			</div>

			<div class="mb-3">
				<label class="form-label">Phone Number</label>
				<input type="text" name="phone" class="form-control" required>
			</div>

			<div class="mb-3">
				<label class="form-label">Subject</label>
				<input type="text" name="subject" class="form-control">
			</div>

			<div class="mb-3">
				<label class="form-label">Message</label>
				<textarea name="message" class="form-control" rows="4"></textarea>
			</div>

			<div class="mb-3">
				<label class="form-label">Upload Photo</label>
				<input type="file" name="photo" class="form-control">
			</div>

			<button type="submit" class="btn btn-danger w-100">Submit</button>
		</form>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
