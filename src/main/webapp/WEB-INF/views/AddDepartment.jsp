<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Department</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-50 flex items-center justify-center min-h-screen">

    <div class="bg-white shadow-lg rounded-lg p-6 w-full max-w-md">
        <h2 class="text-2xl font-semibold text-blue-600 text-center mb-4">Add Department</h2>
        
        <form action="savedepartment" method="post" class="space-y-4">
            
            <!-- Department Name -->
            <div>
                <label class="block text-sm font-medium text-gray-700">Department Name</label>
                <input type="text" name="departmentName" required
                    class="mt-1 block w-full px-4 py-2 border border-gray-300 rounded-lg shadow-sm focus:ring-blue-500 focus:border-blue-500 text-gray-900"
                    placeholder="Enter Department Name">
            </div>
            
            <!-- Submit Button -->
            <div>
                <button type="submit"
                    class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 rounded-lg transition duration-200">
                    Add Department
                </button>
            </div>
        </form>
    </div>

</body>
</html>
