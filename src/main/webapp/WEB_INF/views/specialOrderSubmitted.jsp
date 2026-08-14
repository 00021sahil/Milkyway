<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Special Order Submitted</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #ff758c, #ff7eb3);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Segoe UI', sans-serif;
    }

    .card-box {
        background: white;
        padding: 45px;
        border-radius: 18px;
        box-shadow: 0 20px 45px rgba(0,0,0,0.25);
        text-align: center;
        max-width: 550px;
        animation: fadeInUp 1s ease;
    }

    .icon {
        font-size: 65px;
        animation: pop 0.6s ease forwards;
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(50px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes pop {
        0% { transform: scale(0); }
        70% { transform: scale(1.2); }
        100% { transform: scale(1); }
    }

    .btn-home {
        margin-top: 25px;
        padding: 10px 28px;
        border-radius: 25px;
    }
</style>
</head>

<body>

<div class="card-box">

    <div class="icon">🎂</div>

    <h2 class="mt-3">Your Custom Cake Request Has Been Received!</h2>

    <p class="mt-3 text-muted">
        Thank you for sharing your special requirements with us.
        Our team is excited to review your custom cake details.
    </p>

    <p class="text-muted">
        We will carefully go through your message and reference photo.
        Our experts will contact you soon to discuss design, pricing,
        and delivery details.
    </p>

    <p class="fw-semibold mt-3">
        We appreciate your trust and look forward to creating something deliciously special for you.
    </p>

    <a href="/" class="btn btn-danger btn-home">Back to Home</a>

</div>

</body>
</html>
