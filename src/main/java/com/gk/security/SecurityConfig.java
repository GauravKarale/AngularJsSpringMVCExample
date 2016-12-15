package com.gk.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{

	/*@Bean
	public UserDetailsService userDetailsService() throws Exception {
		InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
		manager.createUser(User.withUsername("gk").password("gk123").roles("USER").build());
		return manager;
	}*/
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder authenticationMgr) throws Exception {
		authenticationMgr.inMemoryAuthentication()
			.withUser("journaldev")
			.password("jd@123")
			.authorities("ROLE_USER");
	}
	
	
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
			.antMatchers("/index").access("hasRole('ROLE_USER')")
			.and()
				.formLogin().loginPage("/login")
				.defaultSuccessUrl("/index")
				.failureUrl("/login?error")
				.usernameParameter("gk").passwordParameter("gk")				
			.and()
				.logout().logoutSuccessUrl("/login?logout"); 
		
	}
}

