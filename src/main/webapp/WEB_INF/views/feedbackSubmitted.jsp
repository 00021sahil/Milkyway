<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feedback Submitted</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #ff6a6a, #ffb347);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Segoe UI', sans-serif;
    }

    .card-box {
        background: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 15px 40px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeInUp 1s ease;
    }

    .checkmark {
        font-size: 60px;
        color: #28a745;
        animation: pop 0.6s ease forwards;
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(40px);
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
        margin-top: 20px;
        padding: 10px 25px;
        border-radius: 25px;
    }
</style>
</head>

<body>

<div class="card-box">
    <div class="checkmark">✔</div>

    <h2 class="mt-3">Thank You for Your Feedback!</h2>

    <p class="mt-3 text-muted">
        We truly appreciate you taking the time to share your thoughts with us.
        Your feedback has been successfully submitted.
    </p>

    <p class="text-muted">
        Our team will carefully review your message and get in touch with you
        if further clarification is needed. We are committed to resolving your concerns
        and continuously improving our services.
    </p>

    <p class="fw-semibold mt-3">
        Thank you for trusting us and choosing our services.
    </p>

    <a href="/" class="btn btn-danger btn-home">Back to Home</a>
</div>

</body>
</html>
