package com.cts.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity()
public class Mainuser {
	@Id
	@Column(name="user_id")
	private String userid;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	@Column(name="dob")
	private Date dob;
	@Column(name="address")
	private String address;
	@Column(name="contact_No")
	private String contactNo;
	@Column(name="email_id")
	private String emailId;
	private String qualification;
	private String gender;
	private double salary;
	@Column(name="pan_no",unique=true)
	private String panNo;
	@Column(name="employer_type")
	private String employerType;
	private String employer;
	
	@OneToOne(cascade=CascadeType.ALL)
	/*@JoinTable(name="Hint",
	inverseJoinColumns= {@JoinColumn(name="hintId")},joinColumns= {@JoinColumn(name="hintId")})*/
	@JoinColumn(name = "hintId")
	private Hint hintId;
	@Column(name="hint_answer")
	private String hintAnswer;
	private String passcode;
	public String getPasscode() {
		return passcode;
	}
	public void setPasscode(String passcode) {
		this.passcode = passcode;
	}
	public String getUserId() {
		return userid;
	}
	public void setUserId(String userId) {
		this.userid = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getEmployerType() {
		return employerType;
	}
	public void setEmployerType(String employerType) {
		this.employerType = employerType;
	}
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}

	
	public Hint getHintHintId() {
		return hintId;
	}
	public void setHintHintId(Hint hintHintId) {
		this.hintId = hintHintId;
	}
	public String getHintAnswer() {
		return hintAnswer;
	}
	public void setHintAnswer(String hintAnswer) {
		this.hintAnswer = hintAnswer;
	}


}
