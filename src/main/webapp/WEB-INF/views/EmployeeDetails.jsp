<!DOCTYPE html>
<html>
<head>
    <title>EmployeeDetails</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-50 p-8">
    <div class="max-w-xl mx-auto bg-white p-6 rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold text-blue-600 mb-4">Employee Details</h2>
        <p class="mb-2"><strong>ID:</strong> ${employee.id}</p>
        <p class="mb-2"><strong>Name:</strong> ${employee.name}</p>
        <p class="mb-2"><strong>Email:</strong> ${employee.email}</p>
        <p class="mb-2"><strong>Role:</strong> ${employee.role}</p>
        <p class="mb-2"><strong>Department:</strong> ${employee.department}</p>
        <a href="employees.jsp" class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded">Back to List</a>
    </div>
</body>
</html>
