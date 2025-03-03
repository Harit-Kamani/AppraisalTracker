<!-- 

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
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>

    <h2>Employee List</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Salary</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="eList"  items="${employeeList}">
                <tr>
                    <td>${eList.id}</td>
                    <td>${eList.firstName}</td>
                    <td>${eList.lastName}</td>
                    <td>${eList.email}</td>
                    <td>${eList.department}</td>
                    <td>${eList.salary}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
