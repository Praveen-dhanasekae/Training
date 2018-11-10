package com.pms.service;

import com.pms.Entities.LoginObject;
import com.pms.Entities.Mainuser;
import com.pms.Entities.PolicyTable;

public interface Service1 {

    String authenticate(LoginObject log);
    String registerUser(Mainuser user);
    String registerPolicy(PolicyTable obj);

}