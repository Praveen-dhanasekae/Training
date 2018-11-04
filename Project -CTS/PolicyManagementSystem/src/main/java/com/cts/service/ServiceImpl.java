package com.cts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.dao.DataAccess;
import com.cts.entities.LoginObject;
@Service
public class ServiceImpl implements Service1{
    @Autowired
    DataAccess dao1;	
	@Override
	public String authenticate(LoginObject log) {
		
				
		       String name= dao1.findByName(log.getUser(), log.getPass());
		    	System.out.println("authenticated "+ name);
		    	return null;
			
	}

}
