<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NewState</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-100">
    
    <!-- Navigation Bar -->
    <nav class="bg-blue-600 p-4 text-white">
        <div class="container mx-auto flex justify-between">
            <a href="login" class="text-lg font-semibold">Appraisal Tracker</a>
            <div>
                <a href="login" class="mr-4">Login</a>
                <a href="signup" class="mr-4">Signup</a>
                <a href="forgetPassword">Forgot Password</a>
            </div>
        </div>
    </nav>
    
    <!-- New State Form -->
    <div class="max-w-lg mx-auto mt-10 p-8 bg-white shadow-lg rounded-lg">
        <h2 class="text-2xl font-semibold text-center text-blue-700">Add New State</h2>
        <form action="NewStateServlet" method="post" class="mt-6">
            <div class="mb-4">
                <label class="block text-gray-700">State Name</label>
                <input type="text" name="stateName" class="w-full p-2 border border-gray-300 rounded" required>
            </div>
            <button type="submit" class="w-full bg-blue-600 text-white p-2 rounded">Add State</button>
        </form>
    </div>
    
</body>
</html>
