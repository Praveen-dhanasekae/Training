package com.cts.controllers;



import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

	@PostMapping("/login/{userId}")
	public ResponseEntity<?> loginMethod(@PathVariable String id ) {

		
//		if () {
//			return new ResponseEntity<String>("No Records available in DB", HttpStatus.NO_CONTENT);
//		}
         System.out.println(id);
		return new ResponseEntity<String>(id, HttpStatus.OK);
	}
}

