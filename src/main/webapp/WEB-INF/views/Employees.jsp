<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.grownited.entity.EmployeeEntity" %>

<%
    List<EmployeeEntity> employees = (List<EmployeeEntity>) request.getAttribute("employees");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <script src="https://cdn.tailwindcss.com"></script> <!-- ✅ Tailwind CSS CDN -->
</head>
<body class="bg-gray-100 p-8">
    <div class="max-w-6xl mx-auto bg-white shadow-md rounded-lg p-6">
        <h2 class="text-2xl font-bold text-gray-700 mb-4">Employee List</h2>
        <a href="employees/add" class="bg-blue-500 text-white px-4 py-2 rounded-md mb-4 inline-block">Add New Employee</a>
        
        <table class="w-full border-collapse border border-gray-300">
            <thead>
                <tr class="bg-gray-200">
                    <th class="border border-gray-300 px-4 py-2">ID</th>
                    <th class="border border-gray-300 px-4 py-2">First Name</th>
                    <th class="border border-gray-300 px-4 py-2">Last Name</th>
                    <th class="border border-gray-300 px-4 py-2">Email</th>
                    <th class="border border-gray-300 px-4 py-2">Department</th>
                    <th class="border border-gray-300 px-4 py-2">Salary</th>
                    <th class="border border-gray-300 px-4 py-2">Actions</th>
                </tr>
            </thead>
            <tbody>
                <% if (employees != null && !employees.isEmpty()) { %>
                    <% for (EmployeeEntity employee : employees) { %>
                        <tr class="border border-gray-300">
                            <td class="px-4 py-2"><%= employee.getId() %></td>
                            <td class="px-4 py-2"><%= employee.getFirstName() %></td>
                            <td class="px-4 py-2"><%= employee.getLastName() %></td>
                            <td class="px-4 py-2"><%= employee.getEmail() %></td>
                            <td class="px-4 py-2"><%= employee.getDepartment() %></td>
                            <td class="px-4 py-2"><%= employee.getSalary() %></td>
                            <td class="px-4 py-2">
                                <a href="employees/edit/<%= employee.getId() %>" class="text-blue-500">Edit</a> |
                                <a href="employees/delete/<%= employee.getId() %>" class="text-red-500" onclick="return confirm('Are you sure?');">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                <% } else { %>
                    <tr>
                        <td colspan="7" class="text-center py-4 text-gray-500">No employees found.</td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
