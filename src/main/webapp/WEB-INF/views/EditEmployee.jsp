<!DOCTYPE html>
<html>
<head>
    <title>EditEmployee</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-50 p-8">
    <div class="max-w-xl mx-auto bg-white p-6 rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold text-blue-600 mb-4">Edit Employee</h2>
        <form action="editEmployee" method="post" class="space-y-4">
            <input type="hidden" name="id" value="${employee.id}">
            <input type="text" name="name" value="${employee.name}" class="w-full p-2 border rounded" required>
            <input type="email" name="email" value="${employee.email}" class="w-full p-2 border rounded" required>
            <input type="text" name="role" value="${employee.role}" class="w-full p-2 border rounded" required>
            <input type="text" name="department" value="${employee.department}" class="w-full p-2 border rounded" required>
            <button type="submit" class="w-full bg-blue-500 text-white px-4 py-2 rounded">Update Employee</button>
        </form>
        <a href="employees.jsp" class="mt-4 inline-block text-blue-500">Back to List</a>
    </div>
</body>
</html>
