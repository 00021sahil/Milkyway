<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Invoice | Milkyway Cakes</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
	rel="stylesheet">

<style>
body {
	background: #f8f8f8;
	font-family: 'Segoe UI', Arial, sans-serif;
}

.invoice-box {
	max-width: 900px;
	margin: 30px auto;
	background: #fff;
	border: 1px solid #f3c5d7;
	border-radius: 15px;
	padding: 35px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .12);
}

.brand {
	color: #d63384;
	font-weight: 700;
}

.brand small {
	color: #666;
}

.section-title {
	color: #d63384;
	font-weight: 700;
	border-bottom: 2px solid #ffd6e8;
	padding-bottom: 6px;
	margin-top: 20px;
}

.table thead th {
	background: #ffd6e8;
	color: #333;
}

.summary {
	background: #fff6fa;
	border: 1px solid #ffd6e8;
	border-radius: 10px;
}

.summary td {
	padding: 10px;
}

.total {
	font-size: 18px;
	font-weight: bold;
	color: #d63384;
}

.footer-box {
	background: #fff6fa;
	border-left: 5px solid #d63384;
	padding: 15px;
	margin-top: 20px;
}

.signature {
	margin-top: 60px;
	text-align: right;
}

.btn-pink {
	background: #d63384;
	color: #fff;
}

.container {
	position:relative;
	overflow:hidden;
}

.container::before {
	content:"";
	position:absolute;
}

@media print {
	.no-print {
		display: none !important;
	}
	body {
		background: #fff;
	}
	.invoice-box {
		box-shadow: none;
		border: none;
		margin: 0;
		max-width: 100%;
	}
}
</style>
</head>

<body>

	<div class="container">

		<div class="invoice-box">

			<div class="row align-items-center">

				<div class="col-6">
					<h2 class="brand">🎂 Milkyway Cakes</h2>
					<small>Fresh Cakes • Birthday • Anniversary • Custom Cakes</small>
				</div>

				<div class="col-6 text-end">
					<h4 class="brand">INVOICE</h4>
					<b>Invoice No :</b> INV-${invoiceNo}<br> <b>Date :</b>
					${invoiceDate}
				</div>

			</div>

			<hr>

			<h5 class="section-title">Customer Details</h5>

			<div class="row">

				<div class="col-md-6">
					<b>Name :</b> ${sessionScope.customerName}
				</div>
				<div class="col-md-6">
					<b>Mobile :</b> ${sessionScope.mobile}
				</div>

				<div class="col-md-6">
					<b>Email :</b> ${sessionScope.email}
				</div>
				<div class="col-md-6">
					<b>Occasion :</b> ${sessionScope.occasion}
				</div>

				<div class="col-md-6">
					<b>Delivery Date :</b> ${sessionScope.deliveryDate}
				</div>
				<div class="col-md-6">
					<b>Pincode :</b> ${sessionScope.pincode}
				</div>

				<div class="col-12 mt-2">
					<b>Address :</b> ${sessionScope.address},
					${sessionScope.customerCity} - ${sessionScope.customerPincode}
				</div>
				
				<div class="col-12 mt-2">
					<b>City :</b> ${sessionScope.city},
					${sessionScope.city}
				</div>

				<c:if test="${not empty sessionScope.notes}">
					<div class="col-12 mt-2">
						<b>Special Instructions :</b> ${sessionScope.notes}
					</div>
				</c:if>

			</div>

			<h5 class="section-title">Order Details</h5>

			<table class="table table-bordered text-center align-middle">
				<thead>
					<tr>
						<th>Cake</th>
						<th>Flavour</th>
						<th>Weight</th>
						<th>Qty</th>
						<th>Price</th>
						<th>Total</th>
					</tr>
				</thead>

				<tbody>

					<c:forEach var="item" items="${cartList}">
						<tr>

							<td>${item.product.productName}</td>
							<td>${item.product.flavour}</td>
							<td>${item.product.weight}</td>
							<td>${item.quantity}</td>
							<td>₹ ${item.product.price}</td>
							<td>₹ ${item.product.price * item.quantity}</td>

						</tr>
					</c:forEach>

				</tbody>

			</table>

			<div class="row justify-content-end">

				<div class="col-md-5">

					<table class="table summary">

						

						<tr>
							<td>Advance (20%)</td>
							<td class="text-end">₹ <%=String.format("%.2f", request.getAttribute("advanceAmount"))%></td>
						</tr>

						<tr>
							<td>Remaining (80%)</td>
							<td class="text-end">₹ <%=String.format("%.2f", request.getAttribute("remainingAmount"))%></td>
						</tr>

						<tr>
							<td>Subtotal</td>
							<td class="text-end">₹ <%=String.format("%.2f", request.getAttribute("subtotal"))%></td>
						</tr>
						
						<tr>
							<td>CGST (9%)</td>
							<td class="text-end">₹ <%=String.format("%.2f", request.getAttribute("cgst"))%></td>
						</tr>
						
						<tr>
							<td>SGST (9%)</td>
							<td class="text-end">₹ <%=String.format("%.2f", request.getAttribute("sgst"))%></td>
						</tr>
						
						<tr class="total">
							<td>Grand Total</td>
							<td class="text-end">₹ <%=String.format("%.2f", request.getAttribute("grandTotal"))%></td>
						</tr>

					</table>

				</div>

			</div>

			<div class="footer-box">

				<b>Terms & Conditions</b>

				<ul class="mb-0 mt-2">
					<li>Please keep this invoice safely.</li>
					<li>Share this invoice on WhatsApp to confirm your order.</li>
					<li>Advance payment is required for order confirmation.</li>
					<li>Delivery timing may vary depending on traffic and weather.</li>
					<li>Delivery charges are 20 rs per km.</li>
				</ul>

			</div>

			<div class="row mt-5">

				<div class="col-6">
					<b>Scan QR for Payment</b><br>
					<br>
					<div
						style="width: 120px; height: 120px; border: 2px dashed #d63384; display: flex; align-items: center; justify-content: center;">
						QR CODE</div>
				</div>

				<div class="col-6 signature">
					_________________________<br> Authorized Signature
				</div>

			</div>

			<div class="text-center mt-5">
				<h5 class="brand">Thank You For Choosing Milkyway Cakes ❤️</h5>
				<small>We look forward to serving you again.</small>
			</div>

			<div class="text-center mt-4 no-print">

				<button onclick="window.print()" class="btn btn-pink">
					<i class="bi bi-printer-fill"></i> Print / Save as PDF
				</button>

			</div>

		</div>

	</div>

</body>
</html>
