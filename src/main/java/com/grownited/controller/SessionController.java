package com.grownited.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class SessionController {
	
	
@Autowired
UserRepository repoUser;

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
		repoUser.save(userEntity);
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
	
}
	
	
