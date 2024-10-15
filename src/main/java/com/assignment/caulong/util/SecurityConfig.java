package com.assignment.caulong.util;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.assignment.caulong.service.BadmintonCustomUserDetailService;

@Configuration
public class SecurityConfig {
	
	private BadmintonCustomUserDetailService badmintonCustomUserDetailService;
	
	public SecurityConfig(BadmintonCustomUserDetailService badmintonCustomUserDetailService) {
		super();
		this.badmintonCustomUserDetailService = badmintonCustomUserDetailService;
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		return http.csrf(csrf->csrf.disable())
				.authorizeHttpRequests(
						authReq->{
							authReq.anyRequest().permitAll();
						})
				.formLogin(l->{
					l.loginPage("/login");
					l.successHandler(new CustomerLoginSuccessHandler());
					l.defaultSuccessUrl("/");
				})
				.build();
	}
//	@Bean
//	public UserDetailsService userDetailsService() {
//		return new InMemoryUserDetailsManager();
//	}
	@Bean
	public AuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider provider=new DaoAuthenticationProvider();
		provider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
		provider.setUserDetailsService(badmintonCustomUserDetailService);
		return provider;
	}

}