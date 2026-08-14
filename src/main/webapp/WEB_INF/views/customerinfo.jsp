<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
 
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Customer Details | MilkyWay Cakes</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
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
	background: linear-gradient(135deg, #fff7fb, #ffe9f3, #ffdceb);
	min-height: 100vh;
}

/*================ HEADER =================*/
.page-title {
	text-align: center;
	padding: 45px 20px 15px;
}

.page-title h1 {
	color: #d63384;
	font-weight: 700;
	font-size: 40px;
}

.page-title p {
	color: #666;
	font-size: 16px;
}

/*================ CARD =================*/
.customer-card {
	max-width: 950px;
	margin: 20px auto 60px;
	background: #fff;
	border-radius: 25px;
	overflow: hidden;
	box-shadow: 0 20px 50px rgba(255, 105, 180, .20);
	border: 2px solid #ffd4e5;
}

/*================ HEADER =================*/
.card-header-custom {
	background: linear-gradient(90deg, #ff4d94, #ff73b3, #ff9bc8);
	color: #fff;
	padding: 28px;
	text-align: center;
}

.card-header-custom h2 {
	margin-bottom: 8px;
	font-weight: 700;
}

.card-header-custom p {
	margin: 0;
	opacity: .95;
}

/*================ FORM =================*/
.form-area {
	padding: 40px;
}

.form-label {
	color: #d63384;
	font-weight: 600;
}

.form-control, .form-select {
	border-radius: 12px;
	border: 2px solid #ffd4e5;
	padding: 12px;
}

.form-control:focus, .form-select:focus {
	border-color: #ff4d94;
	box-shadow: 0 0 12px rgba(255, 77, 148, .20);
}

textarea {
	resize: none;
}

/*================ BUTTON =================*/
.btn-pink {
	background: linear-gradient(90deg, #ff4d94, #ff76b5);
	color: #fff;
	padding: 13px 35px;
	border: none;
	border-radius: 30px;
	font-size: 17px;
	font-weight: 600;
	transition: .3s;
}

.btn-pink:hover {
	color: #fff;
	transform: translateY(-3px);
	box-shadow: 0 15px 25px rgba(255, 77, 148, .35);
}

/*================ REQUIRED =================*/
.required {
	color: red;
}

/*================ RESPONSIVE =================*/
@media ( max-width :768px) {
	.form-area {
		padding: 25px;
	}
	.page-title h1 {
		font-size: 32px;
	}
}
</style>

</head>

<body>

	<!-- ================= TITLE ================= -->

	<div class="page-title">

		<h1>🎂 Customer Details</h1>

		<p>Please fill your information before generating the invoice.</p>

	</div>

	<!-- ================= FORM CARD ================= -->

	<div class="container">

		<div class="customer-card">

			<div class="card-header-custom">

				<h2>Invoice Information</h2>

				<p>Your information is required for invoice generation and
					delivery.</p>

			</div>

			<div class="form-area">

				<form action="generateInvoice" method="post">

					<div class="row">

						<div class="col-md-6 mb-3">

							<label class="form-label"> <i class="bi bi-person-fill"></i>
								Customer Name <span class="required">*</span>
							</label> <input type="text" name="customerName" class="form-control"
								placeholder="Enter Full Name" required>

						</div>

						<div class="col-md-6 mb-3">

							<label class="form-label"> <i
								class="bi bi-telephone-fill"></i> Mobile Number <span
								class="required">*</span>
							</label> <input type="tel" name="mobile" class="form-control"
								maxlength="10" pattern="[0-9]{10}" placeholder="9876543210"
								required>

						</div>

					</div>

					<div class="row">

						<div class="col-md-6 mb-3">

							<label class="form-label"> <i class="bi bi-envelope-fill"></i>
								Email Address
							</label> <input type="email" name="email" class="form-control"
								placeholder="example@gmail.com">

						</div>

						<div class="col-md-6 mb-3">

							<label class="form-label"> <i
								class="bi bi-balloon-heart-fill"></i> Occasion
							</label> <select class="form-select" name="occasion">

								<option value="">Select Occasion</option>

								<option>Birthday</option>

								<option>Anniversary</option>

								<option>Wedding</option>

								<option>Engagement</option>

								<option>Baby Shower</option>

								<option>Festival</option>

								<option>Other</option>

							</select>

						</div>

					</div>

					<div class="mb-3">

						<label class="form-label"> <i
							class="bi bi-house-heart-fill"></i> Delivery Address <span
							class="required">*</span>

						</label>

						<textarea name="address" rows="4" class="form-control"
							placeholder="Flat No, Street, Area, Landmark..." required></textarea>

					</div>

					<div class="row">

						<div class="col-md-6 mb-3">

							<label class="form-label"> <i class="bi bi-building"></i>

								City <span class="required">*</span>

							</label> <input type="text" name="city" class="form-control"
								placeholder="Enter City" required>

						</div>

						<div class="col-md-6 mb-3">

							<label class="form-label"> <i class="bi bi-geo-alt-fill"></i>

								Pincode <span class="required">*</span>

							</label> <input type="text" name="pincode" class="form-control"
								maxlength="6" pattern="[0-9]{6}" placeholder="411028" required>

						</div>

					</div>

					<div class="mb-3">

						<label class="form-label"> <i
							class="bi bi-calendar-event-fill"></i> Delivery Date

						</label> <input type="date" name="deliveryDate" class="form-control">

					</div>

					<div class="mb-4">

						<label class="form-label"> <i
							class="bi bi-chat-left-heart-fill"></i> Special Instructions

						</label>

						<textarea name="notes" rows="3" class="form-control"
							placeholder="Cake message, candles, knife, delivery timing, etc."></textarea>

					</div>

					<div class="text-center">

						<button class="btn btn-pink" type="submit">

							<i class="bi bi-receipt-cutoff"></i> Generate Invoice

						</button>

					</div>

				</form>

			</div>

		</div>

	</div>

</body>

</html>