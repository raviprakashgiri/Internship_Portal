/*
 * * Author: Priyanka & Ravi
 */
package com.iit.intern;

import java.sql.Date;
import java.sql.SQLException;

import com.iit.dbUtilities.DataService;

public class InternBean {
	
	private String firstName;
	private String lastName;
	private String contactNumber;
	private String emailId;
	private String collegeName;
	private float cgpa;
	private Date joiningDate;
	private Date leavingDate;
	private int duration;
	//private int javaRating;
	//private int androidRating;
	private String resume;
	private int yearOfStudy;
	private String availabilityForF2F;
	private String additionalInfo;
	private String persuing;
	private String stream;
	private String interests;
	private String skills;
	private String reasonForUnavailability;
	private String status;
	private String appliedthrough;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getReasonForUnavailability() {
		return reasonForUnavailability;
	}
	public void setReasonForUnavailability(String reasonForUnavailability) {
		this.reasonForUnavailability = reasonForUnavailability;
	}
	public String getPersuing() {
		return persuing;
	}
	public void setPersuing(String persuing) {
		this.persuing = persuing;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public String getInterests() {
		return interests;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getAdditionalInfo() {
		return additionalInfo;
	}
	public void setAdditionalInfo(String additionalInfo) {
		this.additionalInfo = additionalInfo;
	}
	
	public int getYearOfStudy() {
		return yearOfStudy;
	}
	public void setYearOfStudy(int yearOfStudy) {
		this.yearOfStudy = yearOfStudy;
	}
		public String getAvailabilityForF2F() {
		return availabilityForF2F;
	}
	public void setAvailabilityForF2F(String availabilityForF2F) {
		this.availabilityForF2F = availabilityForF2F;
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
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public float getCgpa() {
		return cgpa;
	}
	public void setCgpa(float cgpa) {
		this.cgpa = cgpa;
	}
	public Date getJoiningDate() {
		return joiningDate;
	}
	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}
	public Date getLeavingDate() {
		return leavingDate;
	}
	public void setLeavingDate(Date leavingDate) {
		this.leavingDate = leavingDate;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	public String getResume() {
		return resume;
	}
	public void setResume(String resume) {
		this.resume = resume;
	}
	
	/*Extra method to store the data in interns table from the object inetrnBean. @Author Sravan Kumar
	*/
	
	public static void inernRegistration(InternBean internBean){
		
		
		String firstName = internBean.getFirstName();
		String lastName = internBean.getLastName();
		String contactNumber = internBean.getContactNumber();
		String emailId = internBean.getEmailId();
		String collegeName = internBean.getCollegeName();
		float cgpa = internBean.getCgpa();
		Date joiningDate = internBean.getJoiningDate();
		Date leavingDate = internBean.getLeavingDate();
		int duration = internBean.getDuration();
		//int javaRating = internBean.getJavaRating();
		//int androidRating = internBean.getAndroidRating();
		String persuing = internBean.getPersuing();
		String stream = internBean.getStream();
		String interests = internBean.getInterests();
		String resume = internBean.getResume();
		int yearOfStudy = internBean.getYearOfStudy();
		String availabilityForF2F = internBean.getAvailabilityForF2F();
		String additionalInfo = internBean.getAdditionalInfo();
		String skills = internBean.getSkills();
	//	String appliedthrough = internBean.getAppliedthrough();
		String reasonForUnavailability = internBean.getReasonForUnavailability();
		
		
		String query = "insert into intern(first_name,last_name,contact_number,email_id,college_name,cgpa,feasible_joining_date,feasible_leaving_date,internship_duration,skills,resume_lacation,current_year,availabilityForF2F,additional_info,interests,stream,persuing,reasonForUnavailability,status,appliedthrough)" +
						"values('"+firstName+"','"+lastName+"','"+contactNumber+"','"+emailId+"','"+collegeName+"','"+cgpa+"','"+joiningDate+"','"+leavingDate+"','"+duration+"','"+skills+"','"+resume+"','"+yearOfStudy+"','"+availabilityForF2F+"','"+additionalInfo+"','"+interests+"','"+stream+"','"+persuing+"','"+reasonForUnavailability+"','Pending','Direct')";
		System.out.println(query);
		try {
			DataService.runQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public String getAppliedthrough() {
		return appliedthrough;
	}
	public void setAppliedthrough(String appliedthrough) {
		this.appliedthrough = appliedthrough;
	}

}
