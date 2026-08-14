<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MilkyWay - Home</title>

<style>
/* ===== GLOBAL ===== */ 
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(to bottom, #fff7f4, #f6f8fb);
	color: #333;
}

/* ===== PAGE ===== */
.page-content {
    width: 100%;
    max-width: 1400px;
    margin: auto;
    padding: 40px 20px;
    box-sizing: border-box;
}

/* ===== HERO SECTION ===== */
.hero {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 50px;
    background: linear-gradient(135deg, #ffdde1, #fff1eb);
    padding: 50px;
    border-radius: 20px;
    box-shadow: 0 15px 40px rgba(0,0,0,.1);
    animation: fadeUp 1s ease;
    flex-wrap: wrap;
}
/* ===== HERO TEXT ===== */
.hero-text h1 {
    font-size: clamp(28px, 5vw, 36px);
    margin-bottom: 15px;
}

.hero-text p {
    font-size: 16px;
    line-height: 1.8;
    max-width: 550px;
}

/* ===== HERO VIDEO ===== */
.hero-video {
    width: 100%;
    max-width: 260px;
    aspect-ratio: 9 / 16;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 15px 30px rgba(0,0,0,.3);
}

.hero-video video {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

/* ===== ABOUT ===== */
.brand-description {
    margin-top:50px;
    background:#fff;
    padding:35px;
    border-radius:16px;
    box-shadow:0 10px 25px rgba(0,0,0,.08);
}

.brand-description h2 {
	color: #ff6f61;
	margin-bottom: 20px;
}
/* ===== BIG ACTION BUTTONS ===== */
.buttons{
    display:flex;
    justify-content:center;
    align-items:center;
    gap:30px;
    margin:60px 0;
    flex-wrap:wrap;
}

.action-btn {
	position: relative;
	width: 260px;
	height: 110px;
	border-radius: 18px;
	border: none;
	cursor: pointer;
	background: linear-gradient(135deg, #ff6f61, #ff9472);
	color: #fff;
	font-size: 20px;
	font-weight: 700;
	box-shadow: 0 15px 30px rgba(255, 111, 97, 0.45);
	transition: all 0.35s ease;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

/* Sub-text */
.action-btn span {
	font-size: 13px;
	font-weight: 500;
	margin-top: 6px;
	opacity: 0.9;
}

/* Hover animation */
.action-btn:hover {
	transform: translateY(-10px) scale(1.05);
	box-shadow: 0 25px 45px rgba(255, 111, 97, 0.6);
}

/* Glow effect */
.action-btn::after {
	content: "";
	position: absolute;
	inset: 0;
	border-radius: 18px;
	background: radial-gradient(circle at top left, rgba(255, 255, 255, 0.35),
		transparent 60%);
	opacity: 0;
	transition: opacity 0.3s ease;
}

.action-btn:hover::after {
	opacity: 1;
}

/* Optional color variation */
.action-btn.profile {
	background: linear-gradient(135deg, #667eea, #764ba2);
	box-shadow: 0 15px 30px rgba(102, 126, 234, 0.45);
}

.action-btn.profile:hover {
	box-shadow: 0 25px 45px rgba(102, 126, 234, 0.6);
}

.action-btn.contact {
	background: linear-gradient(135deg, #43cea2, #185a9d);
	box-shadow: 0 15px 30px rgba(67, 206, 162, 0.45);
}

.action-btn.contact:hover {
	box-shadow: 0 25px 45px rgba(67, 206, 162, 0.6);
}

/* Mobile friendly */
@media ( max-width : 768px) {
	.action-btn {
		width: 90%;
		height: 100px;
	}
}

/* ===== FOOTER LINE ===== */
.footer-separator {
	height: 4px;
	width: 120px;
	margin: 40px auto 0;
	background: linear-gradient(to right, #ff9a9e, #ff6f61);
	border-radius: 10px;
}

/* ===== RESPONSIVE ===== */
@media (max-width:992px){

.hero{
    flex-direction:column;
    text-align:center;
    padding:35px 25px;
}

.hero-text p{
    max-width:100%;
}

.hero-video{
    max-width:240px;
}

.buttons{
    flex-direction:column;
}

.action-btn{
    width:90%;
    max-width:350px;
}

}

@media (max-width:768px){

.page-content{
    padding:20px 15px;
}

.hero{
    padding:25px 18px;
    gap:25px;
}

.hero-text h1{
    font-size:28px;
}

.hero-text p{
    font-size:15px;
}

.brand-description{
    padding:25px 20px;
}

.hero-video{
    max-width:220px;
}

.action-btn{
    width:100%;
    height:85px;
    font-size:18px;
}

.action-btn span{
    font-size:12px;
}

}

@media (max-width:480px){

.hero-text h1{
    font-size:24px;
}

.hero-video{
    max-width:180px;
}

.brand-description{
    padding:20px 15px;
}

.action-btn{
    height:80px;
    font-size:17px;
}

}
</style>
</head>

<body>
	<%@ include file="Offers.jsp"%>
	<div class="page-content">

		<!-- HERO -->
		<div class="hero">
			<div class="hero-text">
				<h1>
					🎂 Welcome,
					<%=session.getAttribute("username") != null ? session.getAttribute("username") : "Guest"%>!
				</h1>

				<p>At MilkyWay, every cake is baked with love and crafted to
					turn moments into memories. Explore flavors that delight and
					designs that impress.</p>

				<!-- Tagline -->
				<p style="margin-top: 10px; font-style: italic; color: #555;">✨
					Freshly baked • Beautifully designed • Made for celebrations</p>

				<!-- Highlights -->
				<ul
					style="margin-top: 20px; padding-left: 0; list-style: none; line-height: 1.8; color: #444;">
					<li>🍰 Custom cakes for birthdays, weddings & events</li>
					<li>🧁 Premium ingredients & daily fresh baking</li>
					<li>🚚 Fast and reliable doorstep delivery</li>
				</ul>

				<!-- Mini CTA -->
				<div style="margin-top: 25px;">
					<span
						style="background: #fff; padding: 8px 14px; border-radius: 20px; font-size: 13px; font-weight: 600; color: #ff6f61; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
						🎉 Making every occasion sweeter since MilkyWay </span>
				</div>
			</div>

			<!-- HERO VIDEO (unchanged) -->
			<div class="hero-video">
				<video autoplay muted loop playsinline>
					<source src="<c:url value='/videos/milkyway.mp4' />"
						type="video/mp4">
				</video>
			</div>
		</div>

		<!-- ABOUT -->
		<div class="brand-description">
			<h2>About MilkyWay</h2>
			<p>At MilkyWay, we believe that every cake tells a story. From
				birthdays to weddings and everyday celebrations, our creations are
				crafted with care.</p>
			<p>Our passionate bakers use the finest ingredients to ensure
				perfect taste, texture, and freshness in every bite.</p>
			<p>Beyond cakes, we create experiences — personalized designs,
				themed orders, and moments that bring smiles.</p>
		</div>
		<%@ include file="reviews.jsp"%>
		<!-- ACTION BUTTONS -->
		<div class="buttons">


			<button class="action-btn profile"
				onclick="window.location.href='<c:url value='/orders' />'">
				🛒 Order Cakes <span>Browse all delicious cakes</span>
			</button>

			<button class="action-btn contact"
				onclick="window.location.href='<c:url value="/feedback" />'">
				⭐ Feedback <span>Share your experience with us</span>
			</button>

			<button class="action-btn"
				style="background: linear-gradient(135deg, #f7971e, #ffd200); box-shadow: 0 15px 30px rgba(247, 151, 30, 0.45);"
				onclick="window.location.href='<c:url value="/special" />'">
				🎂 Special Requirement <span>Custom cake requests</span>
			</button>

		</div>



		<div class="footer-separator"></div>
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>
