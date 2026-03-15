<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #667eea, #764ba2);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-card {
        width: 100%;
        max-width: 400px;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        background-color: white;
    }

    .login-title {
        text-align: center;
        margin-bottom: 25px;
        font-weight: bold;
        color: #667eea;
    }

    .btn-login {
        width: 100%;
        border-radius: 25px;
    }

    .form-control:focus {
        box-shadow: none;
        border-color: #667eea;
    }

    .forgot-link {
        text-decoration: none;
        font-size: 14px;
    }

    .forgot-link:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>

<div class="login-card">
    <h3 class="login-title">Login</h3>

    <form action="Login" method="post">

        <!-- Email Field -->
        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" name="email" class="form-control"
                   placeholder="Enter your email" required>
        </div>

        <!-- Password Field -->
        <div class="mb-2">
            <label class="form-label">Password</label>
            <input type="password" name="password" class="form-control"
                   placeholder="Enter your password" required>
        </div>

        <!-- Forgot Password -->
        <div class="text-end mb-3">
            <a href="getOtp" class="forgot-link text-primary">
                Forgot Password?
            </a>
        </div>

        <!-- Login Button -->
        <button type="submit" class="btn btn-primary btn-login">
            Login
        </button>

        <!-- Register Link -->
        <div class="text-center mt-3">
            Don't have an account?
            <a href="registerUser">Register</a>
        </div>

    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>