package com.cts.controllers;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.cts.entities.LoginObject;
import com.cts.entities.User;
import com.cts.service.Service1;

@RestController
public class LoginController {
    @Autowired
    Service1 simple;
	LoginObject value=null;
	@RequestMapping(value="/login/",method=RequestMethod.POST)
	public void loginMethod(@RequestBody LoginObject value) {
        
		simple.authenticate(value);
          System.out.println("controller");     
		
		//return new ResponseEntity<Map<String,String>>(value , HttpStatus.OK);
	}
	
	@PostMapping(value="/register/")
	public ResponseEntity<?> loginMethod1(@RequestBody User user) {
		

		return new ResponseEntity<User>(user , HttpStatus.OK);
			}
		
//	@RequestMapping(value="/login/{id}",method=RequestMethod.GET)
//	public ResponseEntity<?> loginMethod1(@PathVariable ("id") String user) {
//
////		String user = value.get(0);
////		String password =value.get(1);
////		if () {
////			return new ResponseEntity<String>("No Records available in DB", HttpStatus.NO_CONTENT);
////		}
//        //System.out.println(user+" "+password );
//		return new ResponseEntity<String>(user , HttpStatus.OK);
//	}
//	
//	@RequestMapping(
//		    value = "/process", 
//		    method = RequestMethod.POST)
//		public void process(@RequestBody Map<String, Object> payload) 
//		    throws Exception {
//
//		  System.out.println(payload);
//
//		}
	
}

