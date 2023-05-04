package com.lithan.application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.application.model.Users;
import com.lithan.application.service.UsersService;

@Controller
public class AbcCarsRegAuthController {
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	UsersService usersService;
	
	@GetMapping("/login")
	public String getLogin() {
		return "common/login";
	}
	
	@GetMapping("/register")
	public ModelAndView register(Model model) {
		model.addAttribute("user", new Users());
		return new ModelAndView("common/registration");
	}
	
	@PostMapping("/register")
	public String registerSave(Users user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		usersService.saveUser(user);
		usersService.saveCommonUser(usersService.getUserId());
		return "redirect:/thankyou";
	}
	
	@GetMapping("/thankyou")
	public ModelAndView thankyou() {
		return new ModelAndView("common/thankyou");
	}
	

	@GetMapping("/login-error")
	public ModelAndView logError() {
		return new ModelAndView("common/loginerror");
	}
	
	@GetMapping("/home")
	public String home() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		System.out.println(authentication.getName());
		
		return "redirect:/";
	}
	
	@GetMapping("/admin")
	public String admin() {
		return "redirect:/admin/dashboard";
	}
	
	@GetMapping("/user")
	public String user() {
		return "redirect:/admin/dashboard";
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		for(GrantedAuthority role: authentication.getAuthorities()) {
			if(role.getAuthority().equals("ADMIN")) {
				return "redirect:/admin/dashboard";
			}
		}
		return "redirect:/user/dashboard";
	}
	
	@GetMapping("/logoutPage")
	public ModelAndView logoutPage() {
		return new ModelAndView("common/logout");
	}
}
