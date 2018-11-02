package com.cts.PolicyManagementSystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(value="com.cts.controllers")
public class PolicyManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(PolicyManagementSystemApplication.class, args);
	}
}
