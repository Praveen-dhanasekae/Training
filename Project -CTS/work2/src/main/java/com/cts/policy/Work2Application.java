package com.cts.policy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("com.cts.dao")
@EntityScan("com.cts.entities")
@ComponentScans(value= {@ComponentScan("com.cts"),@ComponentScan("com.cts.controllers"),
		@ComponentScan("com.cts.dao"),@ComponentScan("com.cts.service")})
public class Work2Application {

	public static void main(String[] args) {
		SpringApplication.run(Work2Application.class, args);
	}
}
