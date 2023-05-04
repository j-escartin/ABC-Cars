package com.lithan.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AbcCarsResourceController {
	
	@GetMapping("/about")
	public String getAboutUs(){
		return "common/aboutUs";
	}
	
	@GetMapping("/contact")
	public String getContactUs() {
		return "common/contactUs";
	}

}
