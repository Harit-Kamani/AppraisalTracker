<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-100 flex items-center justify-center h-screen">
    <div class="w-full max-w-md bg-white p-8 rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold text-center text-blue-700 mb-4">Login</h2>
        
        <form action="login" method="post" class="space-y-4">
            <div>
                <label class="block text-gray-700">Email</label>
                <input type="email" name="email" required class="w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            
            <div>
                <label class="block text-gray-700">Password</label>
                <input type="password" name="password" required class="w-full p-2 border border-gray-300 rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            
            <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Login</button>
        </form>
        
        <div class="text-center mt-4">
            <a href="signup" class="text-blue-600 hover:underline">Sign up</a> | 
            <a href="forgetPassword" class="text-blue-600 hover:underline">Forgot Password?</a>
        </div>
        
        <nav class="mt-6">
            <ul class="flex justify-between">
                <li><a href="Employees" class="text-blue-700 hover:underline">Employees</a></li>
                <li><a href="AddEmployee.jsp" class="text-blue-700 hover:underline">Add Employee</a></li>
                <li><a href="EmployeeDetails.jsp" class="text-blue-700 hover:underline">Employee Details</a></li>
                <li><a href="EditEmployee.jsp" class="text-blue-700 hover:underline">Edit Employee</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>
