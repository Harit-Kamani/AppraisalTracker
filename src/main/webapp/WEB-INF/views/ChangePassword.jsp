<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password | Appraisal Tracker</title>
    
    <!-- Bootstrap CSS -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>

    <main>
        <div class="container">
            <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
                            
                            <div class="d-flex justify-content-center py-4">
                                <a href="index.html" class="logo d-flex align-items-center w-auto">
                                    <img src="assets/img/logo.png" alt="">
                                    <span class="d-none d-lg-block">Appraisal Tracker</span>
                                </a>
                            </div><!-- End Logo -->

                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="pt-4 pb-2">
                                        <h5 class="card-title text-center pb-0 fs-4">Change Password</h5>
                                        <p class="text-center small">Enter your details to update password</p>
                                    </div>

                                    <form action="ChangePasswordServlet" method="post" class="row g-3 needs-validation" novalidate>
                                        <div class="col-12">
                                            <label for="currentPassword" class="form-label">Current Password</label>
                                            <input type="password" name="currentPassword" class="form-control" id="currentPassword" required>
                                            <div class="invalid-feedback">Please enter your current password!</div>
                                        </div>
                                        <div class="col-12">
                                            <label for="newPassword" class="form-label">New Password</label>
                                            <input type="password" name="newPassword" class="form-control" id="newPassword" required>
                                            <div class="invalid-feedback">Please enter your new password!</div>
                                        </div>
                                        <div class="col-12">
                                            <label for="confirmPassword" class="form-label">Confirm New Password</label>
                                            <input type="password" name="confirmPassword" class="form-control" id="confirmPassword" required>
                                            <div class="invalid-feedback">Please confirm your new password!</div>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-primary w-100" type="submit">Update Password</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>

    <!-- Bootstrap JS -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>