<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


 <!--  <!DOCTYPE html>
<html>
<head>
    <title>Appraisal List</title>
</head>
<body>
    <h2>Employee Appraisals</h2>
    <table border="1">
        <tr>
            <th>Employee</th>
            <th>Performance Score</th>
            <th>Comments</th>
            <th>Appraisal Period</th>
        </tr>
        <c:forEach var="appraisal" items="${appraisals}">
            <tr>
                <td>${appraisal.employee.firstName} ${appraisal.employee.lastName}</td>
                <td>${appraisal.performanceScore}</td>
                <td>${appraisal.comments}</td>
                <td>${appraisal.appraisalPeriod}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
-->


<!DOCTYPE html>
<html>
<head>
    <title>Appraisal List</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <style>
        .appraisal-table {
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
        }
        .table-header {
            background-color: #0d6efd;
            color: white;
        }
        .performance-high {
            background-color: #d1e7dd;
        }
        .performance-medium {
            background-color: #fff3cd;
        }
        .performance-low {
            background-color: #f8d7da;
        }
    </style>
</head>
<body class="bg-light">
    <div class="container py-5">
        <div class="card shadow">
            <div class="card-header table-header">
                <div class="d-flex justify-content-between align-items-center">
                    <h2 class="mb-0"><i class="bi bi-clipboard2-pulse me-2"></i>Employee Appraisals</h2>
                    <a href="#" class="btn btn-outline-light btn-sm">
                        <i class="bi bi-plus-circle"></i> Add New
                    </a>
                </div>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-hover mb-0 appraisal-table">
                        <thead class="table-dark">
                            <tr>
                                <th class="align-middle">Employee</th>
                                <th class="align-middle text-center">Performance Score</th>
                                <th class="align-middle">Comments</th>
                                <th class="align-middle text-center">Appraisal Period</th>
                                <th class="align-middle text-center">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="appraisal" items="${appraisals}">
                                <c:choose>
                                    <c:when test="${appraisal.performanceScore >= 90}">
                                        <c:set var="rowClass" value="performance-high" />
                                    </c:when>
                                    <c:when test="${appraisal.performanceScore >= 70}">
                                        <c:set var="rowClass" value="performance-medium" />
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="rowClass" value="performance-low" />
                                    </c:otherwise>
                                </c:choose>
                                <tr class="${rowClass}">
                                    <td class="align-middle">
                                        <div class="d-flex align-items-center">
                                            <div class="flex-shrink-0">
                                                <div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center" 
                                                     style="width: 40px; height: 40px;">
                                                    <span class="text-white fw-bold">
                                                        ${appraisal.employee.firstName.charAt(0)}${appraisal.employee.lastName.charAt(0)}
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1 ms-3">
                                                ${appraisal.employee.firstName} ${appraisal.employee.lastName}
                                                <div class="text-muted small">${appraisal.employee.department}</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle text-center">
                                        <span class="badge rounded-pill 
                                            ${appraisal.performanceScore >= 90 ? 'bg-success' : 
                                              appraisal.performanceScore >= 70 ? 'bg-warning text-dark' : 'bg-danger'}">
                                            ${appraisal.performanceScore}
                                        </span>
                                    </td>
                                    <td class="align-middle">
                                        <div class="comment-text" style="max-width: 300px;">
                                            ${appraisal.comments}
                                        </div>
                                    </td>
                                    <td class="align-middle text-center">
                                        <span class="badge bg-primary">
                                            ${appraisal.appraisalPeriod}
                                        </span>
                                    </td>
                                    <td class="align-middle text-center">
                                        <div class="btn-group btn-group-sm" role="group">
                                            <button type="button" class="btn btn-outline-primary" title="View">
                                                <i class="bi bi-eye"></i>
                                            </button>
                                            <button type="button" class="btn btn-outline-success" title="Edit">
                                                <i class="bi bi-pencil"></i>
                                            </button>
                                            <button type="button" class="btn btn-outline-danger" title="Delete">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer bg-white">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="text-muted small">
                        Showing ${appraisals.size()} appraisals
                    </div>
                    <nav aria-label="Appraisal pagination">
                        <ul class="pagination pagination-sm mb-0">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>