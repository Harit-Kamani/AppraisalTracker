

package com.grownited.controller;

import com.grownited.entity.EmployeeEntity;
import com.grownited.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller  // ✅ Changed from @RestController to @Controller
@RequestMapping("/employees")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("Employees")
    public String getAllEmployees(Model model) {
        List<EmployeeEntity> employees = employeeService.getAllEmployees();
        model.addAttribute("employees", employees);  // ✅ Send data to JSP
        return "Employees";  // ✅ Returns Employees.jsp
    }

   @GetMapping("AddEmployee")
    public String showAddEmployeeForm(Model model) {
        model.addAttribute("employee", new EmployeeEntity());
        return "AddEmployee";  // ✅ Returns AddEmployee.jsp
    }

    @PostMapping("save")
    public String saveEmployee(@ModelAttribute EmployeeEntity employee) {
        employeeService.createEmployee(employee);
        return "redirect:/employees";  // ✅ Redirect to employee list
    }

    @GetMapping("edit/{id}")
    public String showEditEmployeeForm(@PathVariable Long id, Model model) {
        EmployeeEntity employee = employeeService.getEmployeeById(id);
        if (employee != null) {
            model.addAttribute("employee", employee);
            return "EditEmployee";  // ✅ Returns EditEmployee.jsp
        }
        return "redirect:/employees";  // ✅ Redirect if not found
    }

    @PostMapping("update/{id}")
   public String updateEmployee(@PathVariable Long id, @ModelAttribute EmployeeEntity employee) {
        employeeService.updateEmployee(id, employee);
        return "redirect:/employees";  // ✅ Redirect after update
    }

    @GetMapping("delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employees";  // ✅ Redirect after deletion
    }
}


