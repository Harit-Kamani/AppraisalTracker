//package com.grownited.controller;
//
//import com.example.appraisal.model.Employee;
//import com.example.appraisal.model.EmployeeAppraisal;
//import com.grownited.repository.EmployeeRepository;
//import com.example.appraisal.repository.EmployeeAppraisalRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.List;
//import java.util.Optional;
//
//@Controller
//public class AppraisalController {
//
//    @Autowired
//    private EmployeeRepository employeeRepository;
//
//    @Autowired
//    private EmployeeAppraisalRepository appraisalRepository;
//
//    // Show Appraisal Form with Employee List
//    @GetMapping("/appraisalForm")
//    public String showAppraisalForm(Model model) {
//        List<Employee> employees = employeeRepository.findAll(); // Fetch employees
//        model.addAttribute("employees", employees);
//        return "hr_appraisal_form";
//    }
//
//    // Submit Appraisal Form
//    @PostMapping("/submitAppraisal")
//    public String submitAppraisal(@RequestParam Long employeeId,
//                                  @RequestParam int performanceRating,
//                                  @RequestParam int communicationSkills,
//                                  @RequestParam int leadershipSkills,
//                                  @RequestParam String comments) {
//
//        Optional<Employee> emp = employeeRepository.findById(employeeId);
//        if (emp.isPresent()) {
//            Employee employee = emp.get();
//
//            EmployeeAppraisal appraisal = new EmployeeAppraisal();
//            appraisal.setEmployeeId(employee.getId());
//            appraisal.setEmployeeName(employee.getName());
//            appraisal.setPerformanceRating(performanceRating);
//            appraisal.setCommunicationSkills(communicationSkills);
//            appraisal.setLeadershipSkills(leadershipSkills);
//            appraisal.setComments(comments);
//
//            appraisalRepository.save(appraisal);
//        }
//
//        return "redirect:/viewAppraisals";
//    }
//
//    // View All Appraisals
//    @GetMapping("/viewAppraisals")
//    public String viewAppraisals(Model model) {
//        List<EmployeeAppraisal> appraisals = appraisalRepository.findAll();
//        model.addAttribute("appraisals", appraisals);
//        return "view_appraisals";
//    }
//}

package com.grownited.controller;

import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.EmployeeEntity;
import com.grownited.repository.AppraisalRepository;
import com.grownited.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("appraisals")
public class AppraisalController {

    @Autowired
    private AppraisalRepository appraisalRepository;

    @Autowired
    private EmployeeRepository employeeRepository;

    @GetMapping("new")
    public String showAppraisalForm(@RequestParam Long employeeId, Model model) {
        EmployeeEntity employee = employeeRepository.findById(employeeId).orElse(null);
        if (employee == null) return "redirect:/listEmployee";

        model.addAttribute("employee", employee);
        model.addAttribute("appraisal", new AppraisalEntity());
        return "AppraisalForm";
    }

    @PostMapping("save")
    public String saveAppraisal(@ModelAttribute AppraisalEntity appraisal, @RequestParam Long employeeId) {
        EmployeeEntity employee = employeeRepository.findById(employeeId).orElse(null);
        if (employee == null) return "redirect:/listEmployee";

        appraisal.setEmployee(employee);
        appraisalRepository.save(appraisal);
        return "redirect:/appraisals/list";
    }

    @GetMapping("list")
    public String listAppraisals(Model model) {
        List<AppraisalEntity> appraisals = appraisalRepository.findAll();
        model.addAttribute("appraisals", appraisals);
        return "AppraisalList";
    }
}