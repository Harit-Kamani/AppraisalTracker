<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-100">
    
    <!-- Navigation Bar -->
    <nav class="bg-blue-600 p-4 text-white">
        <div class="container mx-auto flex justify-between">
            <a href="Login" class="text-lg font-semibold">Appraisal Tracker</a>
            <div>
                <a href="login" class="mr-4">Login</a>
                <a href="signup" class="mr-4">Signup</a>
                <a href="forgetpassword">Forgot Password</a>
            </div>
        </div>
    </nav>
    
    <!-- Signup Form -->
    <div class="max-w-lg mx-auto mt-10 p-8 bg-white shadow-lg rounded-lg">
        <h2 class="text-2xl font-semibold text-center text-blue-700">Create an Account</h2>
        <form action="saveuser" method="post" class="mt-6">
            <div class="mb-4">
                <label class="block text-gray-700">First Name</label>
                <input type="text" name="firstName" class="w-full p-2 border border-gray-300 rounded" required>
            </div>
            <div class="mb-4">
                <label class="block text-gray-700">Last Name</label>
                <input type="text" name="lastName" class="w-full p-2 border border-gray-300 rounded" required>
            </div>
            
                        <div class="mb-4">
                <label class="block text-gray-700">Contact</label>
                <input type="text" name="contact" class="w-full p-2 border border-gray-300 rounded" required>
            </div>
            
            
            <div class="mb-4">
                <label class="block text-gray-700">Email</label>
                <input type="email" name="email" class="w-full p-2 border border-gray-300 rounded" required>
            </div>
            <div class="mb-4">
                <label class="block text-gray-700">Password</label>
                <input type="password" name="password" class="w-full p-2 border border-gray-300 rounded" required>
            </div>
            <div class="mb-4">
                <label class="block text-gray-700">Confirm Password</label>
                <input type="password" name="confirmPassword" class="w-full p-2 border border-gray-300 rounded" required>
            </div>
            <button type="submit" class="w-full bg-blue-600 text-white p-2 rounded">Sign up</button>
        </form>
    </div>
    
</body>
</html>
