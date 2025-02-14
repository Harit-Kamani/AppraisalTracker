<!DOCTYPE html>
<html>
<head>
    <title>AddEmployee</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-50 p-8">
    <div class="max-w-xl mx-auto bg-white p-6 rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold text-blue-600 mb-4">Add Employee</h2>
        <form action="addEmployee" method="post" class="space-y-4">
            <input type="text" name="name" placeholder="Name" class="w-full p-2 border rounded" required>
            <input type="email" name="email" placeholder="Email" class="w-full p-2 border rounded" required>
            <input type="text" name="role" placeholder="Role" class="w-full p-2 border rounded" required>
            <input type="text" name="department" placeholder="Department" class="w-full p-2 border rounded" required>
            <button type="submit" class="w-full bg-blue-500 text-white px-4 py-2 rounded">Add Employee</button>
        </form>
        <a href="employees.jsp" class="mt-4 inline-block text-blue-500">Back to List</a>
    </div>
</body>
</html>
