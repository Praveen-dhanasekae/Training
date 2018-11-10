package com.pms.service;

import com.pms.Entities.LoginObject;
import com.pms.Entities.Mainuser;

public interface Service1 {

    String authenticate(LoginObject log);
    String registerUser(Mainuser user);
	//String authenticate();

}