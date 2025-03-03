package com.grownited.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.service.MailService;

import java.time.LocalDateTime;
import java.util.Optional;

@Controller
public class SessionController {
	
@Autowired
MailService serviceMail;	
@Autowired
UserRepository repoUser;
@Autowired
PasswordEncoder encoder;


	@GetMapping(value = {"/" , "signup"})
	public String signup() {
		return "Signup";
	}
	
	
	
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
	@PostMapping("saveuser") 
	public String saveUser(UserEntity userEntity) {
		userEntity.setRole("USER");
		userEntity.setActive(true);
		
		String encPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encPassword);
		
		repoUser.save(userEntity);
		
		 //send mail
		 serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		
		return "Login";
		
		
	}
	
	@GetMapping("forgetpassword")
	public String forgetpassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("resetpassword")
	public String resetPassword() {
		return "ChangePassword";
	}
	
	@GetMapping("listuser")
	public String listUser(Model model) {
    List<UserEntity> userList = repoUser.findAll();
    model.addAttribute("userList", userList);
    
 		return "ListUser";
	}
	
	
	@GetMapping("viewuser")
	public String viewUser(Integer userId, Model model ) {
		System.out.println("Id===>"+userId);
		Optional<UserEntity> op =  repoUser.findById(userId);
		if (op.isEmpty()) {
			//not found
		} else {
			UserEntity user = op.get();
			model.addAttribute("user", user);
			
		}
		return "ViewUser";
	}
	
	@GetMapping("deleteuser")
	public String deleteUser(Integer userId) {
		repoUser.deleteById(userId);
		return"redirect:/listuser";
	}
	
}
	
	
