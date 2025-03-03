<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Appraisal Tracker</title>
    
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <img src="assets/img/logo.png" alt="Logo" class="mb-2" width="50">
                            <h4 class="card-title">Login</h4>
                            <p class="text-muted">Enter your credentials to continue</p>
                        </div>
                        
                        <form action="login" method="post" class="needs-validation" novalidate>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" name="email" id="email" class="form-control" required>
                                <div class="invalid-feedback">Please enter a valid email.</div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" name="password" id="password" class="form-control" required>
                                <div class="invalid-feedback">Please enter your password.</div>
                            </div>
                            
                            <button type="submit" class="btn btn-primary w-100">Login</button>
                        </form>
                        
                        <div class="text-center mt-3">
                            <a href="signup" class="text-primary">Sign up</a> |
                            <a href="forgetpassword" class="text-primary">Forgot Password?</a> |
                            <a href="listuser" class="text-primary">List Users</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
