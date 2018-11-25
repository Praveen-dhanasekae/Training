package com.pms.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pms.Entities.PolicyTable;
import com.pms.Entities.SearchReturn;
import com.pms.service.Service1;

@RestController
@CrossOrigin
public class PolicyController {
	@Autowired
	Service1 simple;
	
	@PostMapping(value="/registeringPolicy/")
	public ResponseEntity<?> newPolicyRegister(@RequestBody PolicyTable policy){
		 System.out.println("vanta");
	    String message = simple.registerPolicy(policy);
	    return new ResponseEntity<String>( message, HttpStatus.OK);
		
	}
	
	
	@PostMapping(value="/searchingPolicy")
	public ResponseEntity<?> searchPolicy(@RequestBody PolicyTable pol){
		List<SearchReturn> e= new ArrayList<>(); 
		System.out.println(pol.getCompany().getCompanyId()+" "+pol.getDuration() + " "+pol.getPolicyType()+" "+ pol.getPolicyName());
		e= simple.searchPolicy(pol.getCompany().getCompanyId(),pol.getDuration(), pol.getPolicyType(), pol.getPolicyName());
		//@RequestParam ("companyName") String companyName, @RequestParam ("noOfYears") String years,@RequestParam ("policyType") String policytype,@RequestParam ("policyName") String policyName
		//System.out.println(companyName+" "+years+" "+policytype+" "+policyName);
		/*Page<T>*/
		//return new ResponseEntity<String>("request processed", HttpStatus.OK);
	 return new ResponseEntity<List<SearchReturn>>(e, HttpStatus.OK);
	}
	
	@PostMapping(value="/searchUser/")
	public ResponseEntity<?> searchUser(@RequestBody PolicyTable pol,@RequestParam ("userid") String userid){
		
		List<SearchReturn> e= new ArrayList<>(); 
        System.out.println(userid);
        e=simple.searchUserPolicy(pol.getCompany().getCompanyId(),pol.getDuration(), pol.getPolicyType(), pol.getPolicyName(),userid);
        
		
		
		return null;
	}
	
	@GetMapping(value="/get/{userid}")
	public ResponseEntity<?> testuse(@PathVariable ("userid")String userid){
		
		
		return new ResponseEntity(simple.testuse2(userid),HttpStatus.OK);
	}
	
	
	
	
	
	
	
}