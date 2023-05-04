package com.lithan.application;

import static org.junit.Assert.assertNotNull;
import static org.springframework.security.test.web.servlet.setup.SecurityMockMvcConfigurers.springSecurity;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.lithan.application.model.Cars;
import com.lithan.application.repository.CarsRepository;
import com.lithan.application.repository.UsersRepository;

@ComponentScan(basePackages = "com.lithan")
@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = OtherTest.class)
@ContextConfiguration(classes = SecurityConfigTest.class)
public class OtherTest {
	
	@Autowired
	WebApplicationContext context;
	
	@Autowired
	PasswordEncoder pwEnc;
	
	@Mock
	UsersRepository ur;
	
	@Mock
	CarsRepository cr;
	
	MockMvc mock;
	

	@BeforeEach
	void setup() {
		mock = MockMvcBuilders.webAppContextSetup(context).apply(springSecurity()).build();
	}
//	
//	@Test
//	@WithMockUser(value = "user", roles = "USER")
//	void adminDashboard() throws Exception {
//		mock.perform(get("/admin/dashboard")).andExpect(status().isForbidden());
//	}
//	
//	@SuppressWarnings("deprecation")
//	@Test
//	@WithMockUser(value = "user", roles = "USER")
//	void login() throws Exception {
//		mock.perform(post("/login")).andExpect(status().isMovedTemporarily());
//	}
	
//	@Test
//	void search() throws Exception {
//		mock.perform(get("/user/search")
//					.param("brand", "h")
//				).andExpect(status().isOk());
//	}
	
//	@SuppressWarnings("deprecation")
//	@Test
//	@WithMockUser(value = "user", roles = "USER")
//	void cardetails() throws Exception {
//		mock.perform(post("/login")).andExpect(status().isMovedTemporarily());
//		mock.perform(get("/user")).andExpect(status().isOk());
//	}
////	
//	@Test
//	void postcar() throws Exception {
//		Cars car = new Cars();
//		car.setBrand("Toyota");
//		
//		assertNotNull(car);
//	}

}
