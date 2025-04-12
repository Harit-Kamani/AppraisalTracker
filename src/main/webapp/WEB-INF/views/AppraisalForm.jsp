<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>

<script src="https://cdn.tailwindcss.com"></script>

<jsp:include page="AdminCss.jsp"></jsp:include>
  <meta content="" name="description">
  <meta content="" name="keywords">


    <title>Employee Appraisal Form</title>
</head>

<body>

   <main class="p-4 md:ml-64 h-auto pt-20">
        <div class="max-w-3xl mx-auto">
            <div class="bg-white shadow-md rounded-lg overflow-hidden p-6">
                <h2 class="text-2xl font-semibold text-gray-800 mb-6 border-b pb-2">
                    Appraisal Form for ${employee.firstName} ${employee.lastName}
                </h2>
                
                <form action="/appraisals/save" method="post" class="space-y-6">
                    <input type="hidden" name="employeeId" value="${employee.id}" />
                    
                    <div class="space-y-1">
                        <label class="block text-sm font-medium text-gray-700">Performance Score (1-10):</label>
                        <input type="number" name="performanceScore" required min="1" max="10" 
                               class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" />
                    </div>
                    
                    <div class="space-y-1">
                        <label class="block text-sm font-medium text-gray-700">Comments:</label>
                        <textarea name="comments" rows="4"
                                  class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"></textarea>
                    </div>
                    
                    <div class="space-y-1">
                        <label class="block text-sm font-medium text-gray-700">Appraisal Period:</label>
                        <input type="text" name="appraisalPeriod" required 
                               class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" />
                    </div>
                    
                    <div class="pt-2">
                        <button type="submit" 
                                class="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                            Submit
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </main>
    
      


  <!--    <h2>Appraisal Form for ${employee.firstName} ${employee.lastName}</h2>
    <form action="/appraisals/save" method="post">
         <input type="hidden" name="employeeId" value="${employee.id}" />
        <label>Performance Score (1-10):</label>
         <input type="number" name="performanceScore" required min="1" max="10" /><br>
        <label>Comments:</label>
        <textarea name="comments"></textarea><br>
        <label>Appraisal Period:</label>
        <input type="text" name="appraisalPeriod" required /><br>
        <button type="submit">Submit</button>
    </form> -->
    
     
</body>


</html>




