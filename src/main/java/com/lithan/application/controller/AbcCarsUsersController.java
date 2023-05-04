package com.lithan.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.application.model.Cars;
import com.lithan.application.model.Users;
import com.lithan.application.service.CarsService;
import com.lithan.application.service.UsersService;

@RequestMapping("/user")
@Controller
public class AbcCarsUsersController {
	
	@Autowired
	UsersService usersService;
	
	@Autowired
	CarsService carsService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@GetMapping("/dashboard")
	public ModelAndView userDashboard(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Users user = usersService.getRecordByUsername(authentication.getName());
		List<Cars> car = carsService.getCarByUserId(user.getUser_id());
		model.addAttribute("cars", car);
		model.addAttribute("user", user);
		return new ModelAndView("user/dashboard");
	}
	
	@GetMapping("/postCar")
	public ModelAndView postCar(Model model) {
		model.addAttribute("car", new Cars());
		return new ModelAndView("user/postNewCar");
	}
	
	@PostMapping("/postCar")
	public String postCar(Cars car) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		Users user = usersService.getRecordByUsername(authentication.getName());
		
		car.setUserId(user.getUser_id());
		carsService.saveCar(car);
		
		return "redirect:/user/dashboard";
	}
	
	@GetMapping("/updateCar")
	public ModelAndView updateCar(Model model, @RequestParam("carId") Long id) {
		Cars car = carsService.getCarById(id).get();
		model.addAttribute("car", car);
		return new ModelAndView("user/updateCar");
	}
	
	@PostMapping("/updateCar")
	public String updateCar(Cars car) {
		carsService.saveCar(car);
		return "redirect:/user/dashboard";
	}
	
	@GetMapping("/deleteCar/{carId}")
	public String deleteCar(@PathVariable("carId") Long carId) {
		carsService.deletecar(carId);
		return "redirect:/user/dashboard";
	}
	
	@GetMapping("/carList")
	public ModelAndView carList(Model model) {
		List<Cars> cars = carsService.getAllRecords();
		model.addAttribute("cars", cars);
		return new ModelAndView("user/carList");
	}
	
	@GetMapping("/carDetails/{carId}")
	public ModelAndView carDetails(Model model, @PathVariable("carId") Long carId) {
		Cars cars = carsService.getCarById(carId).get();
		model.addAttribute("cars", cars);
		return new ModelAndView("user/carDetails");
	}
	
	@GetMapping("/search")
	public ModelAndView search(@RequestParam("search") String search, Model model ) {
		List<Cars> cars = carsService.searchCarByBrand(search);
		model.addAttribute("cars", cars);
		return new ModelAndView("user/search");
	}
	
	@GetMapping("/filterSearch")
	public ModelAndView filterSearch(
			@RequestParam("model") String carModel,
			@RequestParam("brand") String brand,
			@RequestParam("make") String make,
			@RequestParam("price") String price,Model model) {
		List<Cars> cars = carsService.carsFilter(make, carModel, brand, price);
		model.addAttribute("cars", cars);
		return new ModelAndView("user/search");
	}
	
	@GetMapping("/profile")
	public ModelAndView profile(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Users user = usersService.getRecordByUsername(authentication.getName());
		model.addAttribute("user", user);
		return new ModelAndView("user/profile");
	}
	
	@PostMapping("/profile")
	public String profile(Users users) {
		usersService.updateUser(users);
		usersService.saveCommonUser(users.getUser_id());
		return "redirect:/login";
	}
	
}
