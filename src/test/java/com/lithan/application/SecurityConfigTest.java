package com.lithan.application;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
public class SecurityConfigTest {
	 @Bean
    public InMemoryUserDetailsManager userDetailsManager() {
    
        UserDetails user = User.builder()
            .username("user")
            .password("{snoop}user")
            .roles("USER")
            .build();
    
        UserDetails admin = User.builder()
            .username("admin")
            .password("admin")
            .roles("ADMIN")
            .build();
    
        return new InMemoryUserDetailsManager(user, admin);
    }
}
