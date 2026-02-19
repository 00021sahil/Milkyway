<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Menu</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
}

/* Header */
.header {
	background: linear-gradient(to right, #ff9a9e, #fad0c4);
	padding: 15px 30px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	color: white;
}

.logo {
	font-size: 24px;
	font-weight: bold;
	letter-spacing: 1px;
}

/* Navigation */
.nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
	gap: 20px;
}

.nav a {
	text-decoration: none;
	color: white;
	font-size: 16px;
	padding: 8px 14px;
	border-radius: 6px;
	transition: 0.3s;
}

.nav a:hover {
	background: rgba(255,255,255,0.25);
}
</style>

</head>
<body>

<div class="header">
	<div class="logo">Cake Shop Admin</div>
	<div class="nav">
		<ul>
			<li><a href="<c:url value='/add-product' />">Add Product</a></li>
			<li><a href="<c:url value='/get-allCustomers' />">View Customers</a></li>
			<li><a href="<c:url value='/logout' />">Logout</a></li>
		</ul>
	</div>
</div>

</body>
</html>
