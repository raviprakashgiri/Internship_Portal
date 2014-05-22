/*
 * * Author: Sravan Kumar
 */

package com.iit.experienced;

import java.sql.Date;
import java.sql.SQLException;

import com.iit.dbUtilities.DataService;

public class ExperiencedBean {
	
	private String firstName;
	private String lastName;
	private String contactNumber;
	private String emailId;
	private String currentLocation;
	private String noticePeriod;
	private String currentCompany;
	private String totalExperience;
	private String education;
	private String availability;
	private String reasonForWorkHere;
	private String skills;
	private String currentCtc;
	private String roleAppliedFor;
	//private String collegeName;
	private String cgpa;
	//private Date joiningDate;
	//private Date leavingDate;
	private String earliestJoiningDate;
	private String earliestAvailability;
	private String yearOfPassing;
	private String availabilityToF2F;
	private String immediateJoinee;
	private String aditionalInfo;
	private String reasonForChange;
	private String resume;
	private String experienceInJava;
	private String status;
	
	
	public String getAditionalInfo() {
		return aditionalInfo;
	}
	public void setAditionalInfo(String aditionalInfo) {
		this.aditionalInfo = aditionalInfo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getExperienceInJava() {
		return experienceInJava;
	}
	public void setExperienceInJava(String experienceInJava) {
		this.experienceInJava = experienceInJava;
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
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getCurrentLocation() {
		return currentLocation;
	}
	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}
	public String getNoticePeriod() {
		return noticePeriod;
	}
	public void setNoticePeriod(String noticePeriod) {
		this.noticePeriod = noticePeriod;
	}
	public String getCurrentCompany() {
		return currentCompany;
	}
	public void setCurrentCompany(String currentCompany) {
		this.currentCompany = currentCompany;
	}
	public String getTotalExperience() {
		return totalExperience;
	}
	public void setTotalExperience(String totalExperience) {
		this.totalExperience = totalExperience;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	public String getReasonForWorkHere() {
		return reasonForWorkHere;
	}
	public void setReasonForWorkHere(String reasonForWorkHere) {
		this.reasonForWorkHere = reasonForWorkHere;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getCurrentCtc() {
		return currentCtc;
	}
	public void setCurrentCtc(String currentCtc) {
		this.currentCtc = currentCtc;
	}
	public String getRoleAppliedFor() {
		return roleAppliedFor;
	}
	public void setRoleAppliedFor(String roleAppliedFor) {
		this.roleAppliedFor = roleAppliedFor;
	}
	public String getCgpa() {
		return cgpa;
	}
	public void setCgpa(String cgpa) {
		this.cgpa = cgpa;
	}
	public String getEarliestJoiningDate() {
		return earliestJoiningDate;
	}
	public void setEarliestJoiningDate(String earliestJoiningDate) {
		this.earliestJoiningDate = earliestJoiningDate;
	}
	public String getEarliestAvailability() {
		return earliestAvailability;
	}
	public void setEarliestAvailability(String earliestAvailability) {
		this.earliestAvailability = earliestAvailability;
	}
	public String getYearOfPassing() {
		return yearOfPassing;
	}
	public void setYearOfPassing(String yearOfPassing) {
		this.yearOfPassing = yearOfPassing;
	}
	public String getAvailabilityToF2F() {
		return availabilityToF2F;
	}
	public void setAvailabilityToF2F(String availabilityToF2F) {
		this.availabilityToF2F = availabilityToF2F;
	}
	public String getImmediateJoinee() {
		return immediateJoinee;
	}
	public void setImmediateJoinee(String immediateJoinee) {
		this.immediateJoinee = immediateJoinee;
	}
	public String getAdiitionalInfo() {
		return aditionalInfo;
	}
	public void setAdiitionalInfo(String adiitionalInfo) {
		this.aditionalInfo = adiitionalInfo;
	}
	public String getReasonForChange() {
		return reasonForChange;
	}
	public void setReasonForChange(String reasonForChange) {
		this.reasonForChange = reasonForChange;
	}
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	
	public void registerEmployee(ExperiencedBean experiencedBean){
		String firstName = experiencedBean.getFirstName();
		String lastName = experiencedBean.getLastName();
		String contactNumber = experiencedBean.getContactNumber();
		String emailId = experiencedBean.getEmailId();
		String currentLocation = experiencedBean.getCurrentLocation();
		String noticePeriod = experiencedBean.getNoticePeriod();
		String currentCompany = experiencedBean.getCurrentCompany();
		String totalExperience = experiencedBean.getTotalExperience();
		String education = experiencedBean.getEducation();
		String availability = experiencedBean.getAvailability();
		//String reasonForWorkHere = experiencedBean.getReasonForChange();
		String skills = experiencedBean.getSkills();
		String currentCtc = experiencedBean.getCurrentCompany();
		String roleAppliedFor = experiencedBean.getRoleAppliedFor();
		String cgpa = experiencedBean.getCgpa();
		String earliestAvailability = experiencedBean.getEarliestAvailability();
		String earliestJoiningDate = experiencedBean.getEarliestJoiningDate();
		//String earliestAvailability = experiencedBean.getEarliestAvailability();
		String yearOfPassing = experiencedBean.getYearOfPassing();
		String availabilityToF2F = experiencedBean.getAvailabilityToF2F();
		String immediateJoinee = experiencedBean.getImmediateJoinee();
		String adiitionalInfo = experiencedBean.getAdiitionalInfo();
		String reasonForChange = experiencedBean.getReasonForChange();
		String resume = experiencedBean.getResume();
		String experienceInJava = experiencedBean.getExperienceInJava();
		
		String query = "insert into job_applicant(first_name,last_name,contact_number,email_id,current_location,notice_period,current_company,total_experience,qualification,cgpa,year_of_passing,earliest_availability,ctc,role_applied,relevent_exp_java,availability_f2f,immediate_joinee,reason_for_joining_here,additionla_info,skills,earliest_joining_date,resume_location,status)"+
										"values('"+firstName+"','"+lastName+"','"+contactNumber+"','"+emailId+"','"+currentLocation+"','"+noticePeriod+"','"+currentCompany+"','"+totalExperience+"','"+education+"','"+cgpa+"','"+yearOfPassing+"','"+earliestAvailability+"','"+currentCtc+"','"+roleAppliedFor+"','"+experienceInJava+"','"+availabilityToF2F+"','"+immediateJoinee+"','"+reasonForChange+"','"+adiitionalInfo+"','"+skills+"','"+earliestJoiningDate+"','"+resume+"','Pending')";
		
		System.out.println("query  "+query);
		try {
			DataService.runQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
