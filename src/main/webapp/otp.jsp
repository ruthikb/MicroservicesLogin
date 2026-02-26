<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OTP Verification</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #00c6ff, #0072ff);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .otp-card {
        width: 100%;
        max-width: 450px;
        padding: 35px;
        border-radius: 15px;
        background: #ffffff;
        box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    }

    .otp-title {
        text-align: center;
        font-weight: bold;
        margin-bottom: 25px;
        color: #0072ff;
    }

    .btn-green {
        background-color: #28a745;
        color: white;
        border-radius: 25px;
    }

    .btn-green:hover {
        background-color: #218838;
    }

    .btn-blue {
        background-color: #0072ff;
        color: white;
        border-radius: 25px;
    }

    .btn-blue:hover {
        background-color: #0056cc;
    }

    .form-control:focus {
        box-shadow: none;
        border-color: #0072ff;
    }

    hr {
        margin: 30px 0;
    }
</style>
</head>

<body>

<div class="otp-card">

    <h4 class="otp-title">OTP Verification</h4>

    <!-- Send OTP Section -->
    <form action="sendOtp" method="post">
        <div class="mb-3">
            <label class="form-label fw-semibold">Enter Email</label>
            <input type="email" name="email" class="form-control"
                   placeholder="example@gmail.com" required>
        </div>
        <button type="submit" class="btn btn-green w-100 mb-4">
            Send OTP
        </button>
    </form>

    <hr>

    <!-- OTP Verification Section -->
    <form action="verifyOtp" method="post">
        <input type="hidden" name="email" value="${email}">
        <div class="mb-3">
            <label class="form-label fw-semibold">Enter OTP</label>
            <input type="text" name="otp" class="form-control"
                   placeholder="Enter OTP" required>
        </div>
        <button type="submit" class="btn btn-blue w-100">
            Verify OTP
        </button>
    </form>

    <!-- Back to Login -->
    <div class="text-center mt-4">
        <a href="login.jsp" class="text-decoration-none">Back to Login</a>
    </div>

</div>

</body>
</html>