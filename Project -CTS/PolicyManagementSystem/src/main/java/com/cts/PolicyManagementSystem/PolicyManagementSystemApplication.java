package com.cts.PolicyManagementSystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories
@ComponentScans(value= {@ComponentScan("com.cts"),@ComponentScan("com.cts.controllers"),@ComponentScan("com.cts.dao"),@ComponentScan("com.cts.service")})
public class PolicyManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(PolicyManagementSystemApplication.class, args);
	}
}
