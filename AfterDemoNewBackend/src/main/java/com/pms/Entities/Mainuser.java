
package com.pms.Entities;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="mainuser")
public class Mainuser {
	@Id
	@Column(name="user_id")
	private String userid;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	@Column(name="dob")
	private LocalDate dob;
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
	@Column(name="employer")
	private String employer;
	@Column(name="passcode")
	private String passcode;
	@ManyToOne
	private Hint hint;
	@OneToMany(mappedBy="user")
	private List<Payment> payment=new ArrayList<>();
	@Transient
	private int hintid;
	@OneToMany(mappedBy="user")
	private List<UserEnrolledPolicy> uep =new ArrayList<>();
     
	private String hintans;
	
	private int health;
	private int vehicle;
	private int child;
	private int retirement;
	public int getHealth() {
		return health;
	}

	public void setHealth(int health) {
		this.health = health;
	}

	public int getVehicle() {
		return vehicle;
	}

	public void setVehicle(int vehicle) {
		this.vehicle = vehicle;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public int getRetirement() {
		return retirement;
	}

	public void setRetirement(int retirement) {
		this.retirement = retirement;
	}

	public int getTravel() {
		return travel;
	}

	public void setTravel(int travel) {
		this.travel = travel;
	}

	public int getLife() {
		return life;
	}

	public void setLife(int life) {
		this.life = life;
	}

	private int travel;
	private int life;
	public String getHintans() {
		return hintans;
	}

	public void setHintans(String hintans) {
		this.hintans = hintans;
	}

	public int getHintid() {
		return hintid;
	}

	public void setHintid(int hintid) {
		this.hintid = hintid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
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

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
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

	public String getPasscode() {
		return passcode;
	}

	public void setPasscode(String passcode) {
		this.passcode = passcode;
	}

	public Hint getHint() {
		return hint;
	}

	public void setHint(Hint hint) {
		this.hint = hint;
	}

	public List<Payment> getPayment() {
		return payment;
	}

	public void setPayment(List<Payment> payment) {
		this.payment = payment;
	}

	public List<UserEnrolledPolicy> getUep() {
		return uep;
	}

	public void setUep(List<UserEnrolledPolicy> uep) {
		this.uep = uep;
	}
	
	
		


}