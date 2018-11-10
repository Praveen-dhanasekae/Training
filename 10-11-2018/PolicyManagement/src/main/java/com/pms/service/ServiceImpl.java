package com.pms.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pms.Entities.LoginObject;
import com.pms.Entities.Mainuser;
import com.pms.dao.MainDataRepo;
@Service
public class ServiceImpl implements Service1{

	// Register and Login 
	
	@Autowired
    private MainDataRepo dao1;
    com.pms.Entities.Mainuser name;
	@Override
	public String authenticate(LoginObject log) {
		       
		       name=null;
		       String mess="";
		       name= dao1.findByName(log.getUser());
		       if(name!=null) {
		       if(name.getPasscode().equals(log.getPass()))
		    	  mess="authenticated "+ name.getPasscode();
		       else
		    	  mess="incorrect password ";
		       }
		       else mess="User not found";
		       
		    	return mess;			
	}
	@Override
	public String registerUser(Mainuser user) {
		Calendar cal=Calendar.getInstance();
		name=null;
		String b="";
		name=dao1.findByPanNoAndEmaiId(user.getPanNo(), user.getEmailId());
		System.out.println("user id "+user.getPanNo() +" passcode "+user.getPasscode() );
		double a=user.getSalary();
		if(a<=5) b="A";
		else if(a<=10) b="B";
		else if(a<=15) b="C";
		else if(a<=20) b="D";
		else if(a<=25) b="E";
		else if(a<=30 || a>30) b="F";
		if(name==null) {
			name= dao1.findByUserId(b);
			String[] val=name.getUserId().split("-");
			user.setUserId(b+"-"+(Integer.parseInt(val[1])+1));
			String pass=""+(new SimpleDateFormat("dd").format(cal.getTime()))+(new SimpleDateFormat("MMM").format(cal.getTime())).toLowerCase()+""
			                      +((new Random().nextInt(998-100))+100)+"";
			user.setPasscode(pass);
			dao1.saveAndFlush(user);
			
		}
		//dao1.saveAndFlush(user);
		return null;
	}
	
  // Policy Registration 
}
