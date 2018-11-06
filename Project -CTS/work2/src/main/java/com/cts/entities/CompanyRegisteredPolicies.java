package com.cts.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CompanyRegisteredPolicies {

	@Id 
	private String companyInsID;
	private String companyName;
	private String policyType;
	public String getCompanyInsID() {
		return companyInsID;
	}
	public void setCompanyInsID(String companyInsID) {
		this.companyInsID = companyInsID;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPolicyType() {
		return policyType;
	}
	public void setPolicyType(String policyType) {
		this.policyType = policyType;
	}
	
}
