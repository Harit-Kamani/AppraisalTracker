<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body class="bg-blue-100">
    
    <!-- Navigation Bar    <nav class="bg-blue-600 p-4 text-white">
        <div class="container mx-auto flex justify-between">
            <a href="Login" class="text-lg font-semibold">Appraisal Tracker</a>
            <div>
                <a href="login" class="mr-4">Login</a>
                <a href="signup" class="mr-4">Signup</a>
                <a href="forgetpassword">Forgot Password</a>
            </div>
        </div>
    </nav>  -->
    
    
    <!-- Signup Form -->
    <div class="container d-flex flex-column align-items-center justify-content-center min-vh-100">
        <div class="card shadow-lg p-4" style="max-width: 400px; width: 100%;">
            <div class="text-center mb-4">
                <h2 class="text-xl font-semibold text-blue-700">Create an Account</h2>
                <p class="text-gray-600 small">Enter your details to sign up</p>
            </div>
            <form action="saveuser" method="post" class="needs-validation" novalidate>
                <div class="mb-3">
                    <label class="form-label">First Name</label>
                    <input type="text" name="firstName" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Last Name</label>
                    <input type="text" name="lastName" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Contact</label>
                    <input type="text" name="contact" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Confirm Password</label>
                    <input type="password" name="confirmPassword" class="form-control" required>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="terms" required>
                    <label class="form-check-label" for="terms">I agree to the <a href="#">terms and conditions</a></label>
                </div>
                <button type="submit" class="btn btn-primary w-100">Sign up</button>
            </form>
            <div class="text-center mt-3">
                <p class="small">Already have an account? <a href="login">Log in</a></p>
            </div>
        </div>
    </div>
    
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>