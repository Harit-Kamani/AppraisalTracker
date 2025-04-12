package com.grownited.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "appraisals")
public class AppraisalEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    private EmployeeEntity employee;
    
    private Integer performanceScore;
    private String comments;
    private String appraisalPeriod;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public EmployeeEntity getEmployee() {
		return employee;
	}
	public void setEmployee(EmployeeEntity employee) {
		this.employee = employee;
	}
	public Integer getPerformanceScore() {
		return performanceScore;
	}
	public void setPerformanceScore(Integer performanceScore) {
		this.performanceScore = performanceScore;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getAppraisalPeriod() {
		return appraisalPeriod;
	}
	public void setAppraisalPeriod(String appraisalPeriod) {
		this.appraisalPeriod = appraisalPeriod;
	}
    
    // Getters and Setters
    
}
