package com.cts.service;

import com.cts.entities.LoginObject;
import com.cts.entities.Mainuser;

public interface Service1 {

    String authenticate(LoginObject log);
    String registerUser(Mainuser user);
	//String authenticate();

}