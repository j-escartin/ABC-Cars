package com.lithan.application;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import com.lithan.application.model.Cars;
import com.lithan.application.model.Users;
import com.lithan.application.repository.CarsRepository;
import com.lithan.application.repository.UsersRepository;
import com.lithan.application.service.CarsService;
import com.lithan.application.service.UsersService;

@RunWith(SpringRunner.class)
public class RegisterTest {
	
	@Autowired
	UsersService usersService;
	
	@MockBean
	UsersRepository usersRepo;
	
	@Autowired
	CarsService carsService;
	
	@MockBean
	CarsRepository carsRepo;
	
	@Test
	void addUser() {
		Users user = new Users();
		user.setUsername("james");
		user.setEmail("james@gmail.com");
		user.setPassword("1234");
	}
	
	@Test
	void testAddCar() {
		Cars car = new Cars();
		car.setModel("XYS");
		car.setBrand("Toyota");
		car.setDescription("It was nice");
		car.setMake("2010");
		car.setPrice("1000");
	}
}	
