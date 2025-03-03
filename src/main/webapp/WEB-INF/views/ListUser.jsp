<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Users</title>
    <!-- Add Tailwind CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.1/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">

    <div class="container mx-auto mt-10">
        <div class="bg-white shadow-lg rounded-lg overflow-hidden">
            <div class="bg-blue-500 text-white text-center py-3">
                <h1 class="text-2xl">Users List</h1>
            </div>
            <div class="p-6">
                <table class="min-w-full divide-y divide-gray-200">
                    <thead class="bg-gray-50">
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">First Name</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Last Name</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Email</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Password</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Contact</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Gender</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Created At</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Active</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Action</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200">
                        <c:forEach items="${userList}" var="u">
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap">${u.firstName}</td>
                                <td class="px-6 py-4 whitespace-nowrap">${u.lastName}</td>
                                <td class="px-6 py-4 whitespace-nowrap">${u.email}</td>
                                <td class="px-6 py-4 whitespace-nowrap">${u.password}</td>
                                <td class="px-6 py-4 whitespace-nowrap">${u.contact}</td>
                                <td class="px-6 py-4 whitespace-nowrap">${u.gender}</td>
                                <td class="px-6 py-4 whitespace-nowrap">${u.createdAt}</td>
                                <td class="px-6 py-4 whitespace-nowrap">${u.active}</td>
                                
                                <td class="px-6 py-4 whitespace-nowrap">
                                 <td> <a href="viewuser?userId=${u.userId }">View</a> | <a href="deleteuser?userId=${u.userId }">Delete</a> | Edit</td>
                                   
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
