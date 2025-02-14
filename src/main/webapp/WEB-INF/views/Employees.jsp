<!DOCTYPE html>
<html>
<head>
    <title>Employee</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-50 p-8">
    <div class="max-w-4xl mx-auto bg-white p-6 rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold text-blue-600 mb-4">Employee List</h2>
        <table class="w-full border-collapse border border-gray-300">
            <thead>
                <tr class="bg-blue-500 text-white">
                    <th class="border border-gray-300 p-2">ID</th>
                    <th class="border border-gray-300 p-2">Name</th>
                    <th class="border border-gray-300 p-2">Email</th>
                    <th class="border border-gray-300 p-2">Actions</th>
                </tr>
            </thead>
            <tbody>
                     <c:forEach var="employee" items="${employees}">
                    <tr class="text-center">
                        <td class="border border-gray-300 p-2">${employee.id}</td>
                        <td class="border border-gray-300 p-2">${employee.name}</td>
                        <td class="border border-gray-300 p-2">${employee.email}</td>
                        <td class="border border-gray-300 p-2">
                            <a href="employeeDetails.jsp?id=${employee.id}" class="text-blue-500">View</a>
                            <a href="editEmployee.jsp?id=${employee.id}" class="text-yellow-500 ml-2">Edit</a>
                            <a href="deleteEmployee?id=${employee.id}" class="text-red-500 ml-2">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="addEmployee.jsp" class="mt-4 inline-block bg-blue-500 text-white px-4 py-2 rounded">Add Employee</a>
    </div>
</body>
</html>
