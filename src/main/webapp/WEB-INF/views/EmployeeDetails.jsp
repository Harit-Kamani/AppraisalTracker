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
                <th>Department ID</th>
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
                    <td>${eList.departmentId}</td>
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
</html> -->



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    
    <!-- Include NiceAdmin CSS -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Include Sidebar -->
   <jsp:include page="AdminHeader.jsp"></jsp:include>
   <jsp:include page="AdminSidebar.jsp"></jsp:include>
   <jsp:include page="AdminJs.jsp"></jsp:include>
   <jsp:include page="AdminCss.jsp"></jsp:include>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Employee List</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Tables</li>
                    <li class="breadcrumb-item active">Employee List</li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <section class="section">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Employee List</h5>

                            <!-- Search Bar -->
                            <div class="mb-3">
                                <input type="text" id="tableSearch" class="form-control" placeholder="Search Employees...">
                            </div>

                            <!-- Employee Table -->
                            <table class="table table-striped datatable">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Department ID</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Department</th>
                                        <th>Salary</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="eList" items="${employeeList}">
                                        <tr>
                                            <td>${eList.id}</td>
                                            <td>${eList.departmentId}</td>
                                            <td>${eList.firstName}</td>
                                            <td>${eList.lastName}</td>
                                            <td>${eList.email}</td>
                                            <td>${eList.department}</td>
                                            <td>${eList.salary}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <!-- End Employee Table -->

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main><!-- End #main -->

    <!-- Include Footer -->
    <jsp:include page="AdminFooter.jsp"></jsp:include>

    <!-- Include JS -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script>
        // Search functionality
        document.getElementById("tableSearch").addEventListener("keyup", function () {
            let filter = this.value.toLowerCase();
            let rows = document.querySelectorAll(".datatable tbody tr");
            rows.forEach(row => {
                let text = row.textContent.toLowerCase();
                row.style.display = text.includes(filter) ? "" : "none";
            });
        });
    </script>
</body>
</html>