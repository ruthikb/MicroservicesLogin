<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #4e73df, #1cc88a);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .register-card {
        width: 100%;
        max-width: 500px;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        background-color: #fff;
    }

    .register-title {
        text-align: center;
        margin-bottom: 20px;
        font-weight: bold;
        color: #4e73df;
    }

    .btn-register {
        width: 100%;
        border-radius: 25px;
    }

    .form-control:focus {
        box-shadow: none;
        border-color: #4e73df;
    }
</style>

</head>
<body>

<div class="register-card">
    <h3 class="register-title">Create Account</h3>

    <form action="Register" method="post">

        <div class="mb-3">
            <label class="form-label">Full Name</label>
            <input type="text" name="fullName" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" name="email" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">PhoneNumber</label>
            <input type="number" name="phoneNumber" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" name="password" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Confirm Password</label>
            <input type="password" name="confirmPassword" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-primary btn-register">
            Register
        </button>

        <div class="text-center mt-3">
            Already have an account?
            <a href="login.jsp">Login</a>
        </div>

    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>