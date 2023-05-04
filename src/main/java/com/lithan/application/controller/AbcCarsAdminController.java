package com.lithan.application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.application.model.Cars;
import com.lithan.application.model.Users;
import com.lithan.application.service.CarsService;
import com.lithan.application.service.UsersService;


@RequestMapping("/admin")
@Controller
public class AbcCarsAdminController {
	
	@Autowired
	UsersService usersService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	CarsService carsService;
	
	@GetMapping("/dashboard")
	public ModelAndView adminDashboard() {
		return new ModelAndView("admin/dashboard");
	}
	
	@GetMapping("/userList")
	public ModelAndView userList(Model model) {
		List<Users> users = usersService.getAllRecords();
		model.addAttribute("users", users);
		return new ModelAndView("admin/userList");
		
	}
	
	@GetMapping("/updateUser")
	public ModelAndView updateUser(Model model, @RequestParam("userId") Long userId) {
		Users user = usersService.getRecordByUserId(userId).get();
		model.addAttribute("user", user);
		return new ModelAndView("admin/updateUser");
	}
	
	@PostMapping("/updateUser")
	public String profile(Users user) {
		usersService.updateUser(user);
		usersService.saveCommonUser(user.getUser_id());
		return "redirect:/admin/userList";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") Long userId) {
		usersService.deleteRecordById(userId);
		return "redirect:/admin/userList";
	}
	
	@GetMapping("/addUser")
	public ModelAndView addUser(Model model) {
		model.addAttribute("user", new Users());
		return new ModelAndView("admin/addUser");
	}
	
	@PostMapping("/addUser")
	public String registerSave(Users user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		usersService.saveUser(user);
		usersService.saveCommonUser(usersService.getUserId());
		return "redirect:/admin/userList";
	}
	
	@GetMapping("/carList")
	public ModelAndView carList(Model model) {
		List<Cars> cars = carsService.getAllRecords();
		model.addAttribute("cars", cars);
		return new ModelAndView("admin/carList");
	}
	
	@GetMapping("/updateCar")
	public ModelAndView updateCar(Model model, @RequestParam("carId") Long id) {
		Cars car = carsService.getCarById(id).get();
		model.addAttribute("car", car);
		return new ModelAndView("admin/updateCar");
	}
	
	@PostMapping("/updateCar")
	public String updateCar(Cars car) {
		carsService.saveCar(car);
		return "redirect:/admin/carList";
	}
	
	@GetMapping("/deleteCar/{carId}")
	public String deleteCar(@PathVariable("carId") Long carId) {
		carsService.deletecar(carId);
		return "redirect:/admin/dashboard";
	}
	
	@GetMapping("/addCar")
	public ModelAndView postCar(Model model) {
		model.addAttribute("car", new Cars());
		return new ModelAndView("admin/addCar");
	}
	
	@PostMapping("/addCar")
	public String postCar(Cars car) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		Users user = usersService.getRecordByUsername(authentication.getName());
		
		car.setUserId(user.getUser_id());
		carsService.saveCar(car);
	
		return "redirect:/admin/carList";
	}
	
	@GetMapping("/search")
	public ModelAndView filterSearch(
			@RequestParam("model") String carModel,
			@RequestParam("brand") String brand,
			@RequestParam("make") String make,
			@RequestParam("price") String price,Model model) {
		List<Cars> cars = carsService.carsFilter(make, carModel, brand, price);
		model.addAttribute("cars", cars);
		return new ModelAndView("admin/search");
	}
	
	@GetMapping("/carDetails/{carId}")
	public ModelAndView carDetails(Model model, @PathVariable("carId") Long carId) {
		Cars cars = carsService.getCarById(carId).get();
		model.addAttribute("cars", cars);
		return new ModelAndView("admin/carDetails");
	}
}
