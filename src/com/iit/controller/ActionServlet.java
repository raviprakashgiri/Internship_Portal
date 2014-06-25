/*
 * Author     : Priyanka & Ravi
 */

package com.iit.controller;
import java.sql.ResultSet;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadException;

import com.iit.commons.Authenticator;
import com.iit.commons.Commons;
import com.iit.commons.Upload;
import com.iit.dbUtilities.DataService;
import com.iit.experienced.ExperiencedBean;
import com.iit.intern.InternBean;
import com.iit.ra.RABean;
//import com.mysql.jdbc.ResultSet;
//import com.iit.checkbox.*;
/**
 * Servlet implementation class ActionServlet
 */
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Upload up = new Upload();
		DataService ds = new DataService();
		System.out.println(request.getParameter("WhatFor"));
		MultipartFormDataRequest mrequest;
		String whatFor = request.getParameter("WhatFor");
		if(whatFor==null){
		
		try {
			mrequest = new MultipartFormDataRequest(request);
			System.out.println(mrequest);
		
		whatFor = mrequest.getParameter("WhatFor");
		System.out.println("whatFor  "+whatFor);
		
		if(whatFor.equals("registerIntern")){
			String firstName = mrequest.getParameter("firstName");
			String lastName = mrequest.getParameter("lastName");
			String joiningDate = mrequest.getParameter("joiningDate");
			Date joiningDateSql = Commons.stringToSqlDate(joiningDate);
			String leavingDate = mrequest.getParameter("leavingDate");
			Date leavingDateSql = Commons.stringToSqlDate(leavingDate);
			String contactNumber = mrequest.getParameter("contactNumber");
			String emailId = mrequest.getParameter("emailId");
			String collegeName = mrequest.getParameter("collegeName");
			float cgpa = Float.parseFloat(mrequest.getParameter("percentage"));
			
			int duration = Integer.parseInt(mrequest.getParameter("duration"));
			String stream = mrequest.getParameter("stream");
			int yearOfStudy = Integer.parseInt(mrequest.getParameter("yearOfStudy"));
			String availabilityForF2F = mrequest.getParameter("availabilityForF2F");
			String additionalInfo = mrequest.getParameter("additionalInformation");
			additionalInfo = ds.getQueryString(additionalInfo);
			String interests = mrequest.getParameter("interests");
			interests = ds.getQueryString(interests);
			String skills = mrequest.getParameter("skills");
			String persuing = mrequest.getParameter("persuing");
			 String appliedthrough=mrequest.getParameter("appliedthrough");
			 String reasonForUnavailability = mrequest.getParameter("reasonForUnavailability");
			 reasonForUnavailability = ds.getQueryString(reasonForUnavailability);
			InternBean internBean = new InternBean();
			internBean.setFirstName(firstName);
			internBean.setLastName(lastName);
			internBean.setJoiningDate(joiningDateSql);
			internBean.setLeavingDate(leavingDateSql);
			internBean.setContactNumber(contactNumber);
			internBean.setEmailId(emailId);
			internBean.setCollegeName(collegeName);
			internBean.setCgpa(cgpa);
			internBean.setDuration(duration);
			internBean.setPersuing(persuing);
			//internBean.setJavaRating(javaRating);
			//internBean.setAndroidRating(androidRating);
			internBean.setSkills(skills);
			internBean.setInterests(interests);
			internBean.setStream(stream);
			internBean.setReasonForUnavailability(reasonForUnavailability);
			String fileUploadDir = "/home/hduser/ruralivrs/ProjectFiles/apache-tomcat-6.0.37/webapps/Downloads/internship/interns";
			Random randomGenerator = new Random();
			int randomNumber = randomGenerator.nextInt(100);
			internBean.setYearOfStudy(yearOfStudy);
			internBean.setAdditionalInfo(additionalInfo);
			internBean.setAvailabilityForF2F(availabilityForF2F);
			internBean.setAppliedthrough(appliedthrough);
			//fileUploadDir = fileUploadDir.substring(65);					
			//fileUploadDir = "http://qassist.cse.iitb.ac.in/"+fileUploadDir;
			System.out.println("fileUploadDir  "+fileUploadDir);
			String FILEPATH= up.UploadingFile(mrequest, fileUploadDir, "resume",firstName+"_"+lastName+"_"+randomNumber );
			FILEPATH = FILEPATH.substring(65);
			System.out.println("Ravi..rpg..."+ FILEPATH);
			internBean.setResume(FILEPATH);
			internBean.inernRegistration(internBean);
			String host = "10.105.1.1";
			String mail_smtp_port = "25";
			String mail_user = "reviewsystem@cse.iitb.ac.in";
			String mail_password = "review123";

			String result = "";
			// Recipient's email ID needs to be mentioned.
			//String to = "recruitment.iitb@gmail.com,vishwajeet@cse.iitb.ac.in";
			String to = "recruitment.iitb@gmail.com";
			// Sender's email ID needs to be mentioned.
			String from = mail_user;

			//String subject = request.getParameter("subject");
			
			String subject = ""+firstName+" "+lastName+""+" Applied For Internship- College - "+collegeName+""+" CGPA - "+cgpa+""+" Duration - "+duration+"";
			//String description = request.getParameter("description");
			skills = skills.replaceAll(",", "<br>");
			
			String description = "<html>" +
					"<body bgcolor='cyan'>"+
					"<table cellspacing='0' style='width:100%'>"+
					"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Applicant Name"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+firstName+" "+lastName+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					" Applied Through"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+appliedthrough+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Unversity/College:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+collegeName+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"CGPA"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+cgpa+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Contact Number:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+contactNumber+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Email:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+emailId+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Pursuing:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+persuing+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Stream:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+stream+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Current Year Of Study: "+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+yearOfStudy+""
					+"</td>"
					+"</tr>"+
					"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Skills:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+skills+""
					+"<br>"
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Availability for F2F Interview @IIT Bombay"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+availabilityForF2F+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Feasible Joining Date:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+joiningDate+""
					+"</td>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Additional Information "+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+additionalInfo+""
					+"</td>"
					+"</tr>"
					+"</table>"
					+"</body>"
					+"</html>";
			Properties properties = System.getProperties();

			properties.put("mail.smtp.port", mail_smtp_port);
			properties.put("mail.smtp.starttls.enable", "true");
			properties.setProperty("mail.user", mail_user);
			properties.setProperty("mail.password", mail_password);
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.ssl.trust", host);

			// Setup mail server
			properties.setProperty("mail.smtp.host", host);

			Session mailsession = Session.getInstance(properties,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("reviewsystem@cse.iitb.ac.in", "review123");
						}
					});

			try {
				// Create a default MimeMessage object.
				MimeMessage message = new MimeMessage(mailsession);
				// Set From: header field of the header.
				message.setFrom(new InternetAddress(from));
				// Set To: header field of the header.
				message.addRecipients(Message.RecipientType.TO,
						InternetAddress.parse(to));

				message.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse(to));
				// Set Subject: header field
				message.setSubject(subject);
				// Now set the actual message
				message.setContent(description,"text/html");
				// Send message
				Transport transport = mailsession.getTransport("smtp");

				Transport.send(message);

				result = "Sent message successfully....";
				
				//code to redirect to correct page during automatic mails
				
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException mex) {
				mex.printStackTrace();
				result = "Error: unable to send message....";
			}
			
			response.sendRedirect("InternRegistered.jsp");
			
		}
		
		if(whatFor.equals("registerForJob")){
			System.out.println("///////////////  "+mrequest.getParameter("availabilityToF2F"));
			String firstName = mrequest.getParameter("firstName");
			String lastName = mrequest.getParameter("lastName");
			String contactNumber = mrequest.getParameter("contactNumber");
			String emailId = mrequest.getParameter("emailId");
			String currentLocation = mrequest.getParameter("currentLocation");
			String noticePeriod = mrequest.getParameter("noticePeriod");
			String currentCompany = mrequest.getParameter("company");
			String totalExperience = mrequest.getParameter("experience");
			String education = mrequest.getParameter("highestQualification");
			//String availability = mrequest.getParameter("availabilityForF2F");
			String reasonForWorkHere = mrequest.getParameter("reasonForChange");
			String skills = mrequest.getParameter("skills");
			String currentCtc = mrequest.getParameter("currentCtc");
			String roleAppliedFor = mrequest.getParameter("roleApplied");
			String cgpa = mrequest.getParameter("cgpa");
			String earliestJoiningDate = mrequest.getParameter("earliestJoiningDate");
			String earliestAvailability = mrequest.getParameter("earliestAvailability");
			String yearOfPassing = mrequest.getParameter("passedOut");
			String immediateJoinee = mrequest.getParameter("immediateJoinee");
			String aditionalInfo = mrequest.getParameter("additionalInformation");
			String experienceInJava = mrequest.getParameter("experienceInJava");
			String availabilityToF2F = mrequest.getParameter("availabilityToF2F");
			//String to = "recruitment.iitb@gmail.com";
			ExperiencedBean experiencedBean = new ExperiencedBean();
			experiencedBean.setFirstName(firstName);
			experiencedBean.setLastName(lastName);
			experiencedBean.setContactNumber(contactNumber);
			experiencedBean.setEmailId(emailId);
			experiencedBean.setCurrentLocation(currentLocation);
			experiencedBean.setNoticePeriod(noticePeriod);
			experiencedBean.setCurrentCompany(currentCompany);
			experiencedBean.setTotalExperience(totalExperience);
			experiencedBean.setEducation(education);
			//experiencedBean.setAvailability(availability);
			experiencedBean.setReasonForChange(reasonForWorkHere);
			experiencedBean.setSkills(skills);
			experiencedBean.setCurrentCtc(currentCtc);
			experiencedBean.setRoleAppliedFor(roleAppliedFor);
			experiencedBean.setCgpa(cgpa);
			experiencedBean.setEarliestJoiningDate(earliestJoiningDate);
			experiencedBean.setEarliestAvailability(earliestAvailability);
			experiencedBean.setYearOfPassing(yearOfPassing);
			experiencedBean.setImmediateJoinee(immediateJoinee);
			experiencedBean.setAdiitionalInfo(aditionalInfo);
			experiencedBean.setExperienceInJava(experienceInJava);
			experiencedBean.setAvailabilityToF2F(availabilityToF2F);
			
			
			String fileUploadDir = "/home/hduser/ruralivrs/ProjectFiles/apache-tomcat-6.0.37/webapps/Downloads/internship/jobapplicants";
			//fileUploadDir = fileUploadDir.substring(65);					
			//fileUploadDir = "http://qassist.cse.iitb.ac.in/"+fileUploadDir;
			System.out.println("fileUploadDir  "+fileUploadDir);
			Random randomGenerator = new Random();
			int randomNumber = randomGenerator.nextInt(100);
			String FILEPATH= up.UploadingFile(mrequest, fileUploadDir, "resume",firstName+"_"+lastName+"_"+randomNumber );
			//String FILEPATH= up.UploadingFile(mrequest, fileUploadDir, "resume",firstName+"_"+lastName+"_"+randomNumber );
			FILEPATH = FILEPATH.substring(65);
			System.out.println("Ravi..rpg..."+ FILEPATH);
			experiencedBean.setResume(FILEPATH);
			experiencedBean.registerEmployee(experiencedBean);
			
			String host = "imap.cse.iitb.ac.in";
			String mail_smtp_port = "25";
			String mail_user = "reviewsystem@cse.iitb.ac.in";
			String mail_password = "review123";

			String result = "";
			// Recipient's email ID needs to be mentioned.
			//String to = "recruitment.iitb@gmail.com,vishwajeet@cse.iitb.ac.in";
			String to = "recruitment.iitb@gmail.com";
			// Sender's email ID needs to be mentioned.
			String from = mail_user;

			//String subject = request.getParameter("subject");
			
			
			String subject = ""+firstName+" "+lastName+""+"  Applied For Job- Company - "+currentCompany+""+" CGPA - "+cgpa+""+" Years Of Experience - "+totalExperience+"";
			//String description = request.getParameter("description");
			skills = skills.replaceAll(",", "<br>");
			String description = "<html>" +
					"<body bgcolor='cyan'>"+
					"<table cellspacing='0' style='width:100%'>"+
					"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Applicant Name"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+firstName+" "+lastName+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Current Employer/Company:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+currentCompany+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"CGPA"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+cgpa+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Contact Number:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+contactNumber+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Email:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+emailId+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Highest Educational Qualification :"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+education+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Earliest (From-To) Availability For The Interview:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+earliestAvailability+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Strong Reasons For Why You Want To Work At IIT-Bombay 	"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+reasonForWorkHere+""
					+"</td>"
					+"</tr>"+
					"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Skills:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+skills+""
					+"<br>"
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Availability for F2F Interview @IIT Bombay"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+availabilityToF2F+""
					+"</td>"
					+"</tr>"
					+"<tr style='background-color:#e1e1e1'>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"If Selected Can Start Working Immediately? "+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+immediateJoinee+""
					+"</td>"
					+"</tr>"
					+"<tr>"+
					"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
					"Additional Information:"+
					"</td>"+
					"<td style='padding:7px 9px 7px 0;width:80%'>"+
					""+aditionalInfo+""
					+"</td>"
					+"</tr>"
					+"</table>"
					+"</body>"
					+"</html>";
			Properties properties = System.getProperties();

			properties.put("mail.smtp.port", mail_smtp_port);
			properties.put("mail.smtp.starttls.enable", "true");
			properties.setProperty("mail.user", mail_user);
			properties.setProperty("mail.password", mail_password);
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.ssl.trust", host);

			// Setup mail server
			properties.setProperty("mail.smtp.host", host);

			Session mailsession = Session.getInstance(properties,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("reviewsystem@cse.iitb.ac.in", "review123");
						}
					});

			try {
				// Create a default MimeMessage object.
				MimeMessage message = new MimeMessage(mailsession);
				// Set From: header field of the header.
				message.setFrom(new InternetAddress(from));
				// Set To: header field of the header.
				message.addRecipients(Message.RecipientType.TO,
						InternetAddress.parse(to));

				message.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse(to));
				// Set Subject: header field
				message.setSubject(subject);
				// Now set the actual message
				message.setContent(description,"text/html");
				// Send message
				Transport transport = mailsession.getTransport("smtp");

				Transport.send(message);

				result = "Sent message successfully....";
				
				//code to redirect to correct page during automatic mails
				
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException mex) {
				mex.printStackTrace();
				result = "Error: unable to send message....";
			}
			
			
			response.sendRedirect("JobApplicantRegistered.jsp");
		}
		
		else if(whatFor.equals("registerRA")){
			
			
			String firstName = mrequest.getParameter("firstName");
			String lastName = mrequest.getParameter("lastName");
			String joiningDate = mrequest.getParameter("joiningDate");
			Date joiningDateSql = Commons.stringToSqlDate(joiningDate);
			//String leavingDate = mrequest.getParameter("leavingDate");
			//Date leavingDateSql = Commons.stringToSqlDate(leavingDate);
			String contactNumber = mrequest.getParameter("contactNumber");
			String emailId = mrequest.getParameter("emailId");
			 String collegeName = mrequest.getParameter("collegeName");
			 float cgpa = Float.parseFloat(mrequest.getParameter("percentage"));
			
			 //int duration = Integer.parseInt(mrequest.getParameter("duration"));
			 String stream = mrequest.getParameter("stream");
			 int yearOfStudy = Integer.parseInt(mrequest.getParameter("yearOfStudy"));
			 String appliedthrough=mrequest.getParameter("appliedthrough");
			 String availabilityForF2F = mrequest.getParameter("availabilityForF2F");
			 String additionalInfo = mrequest.getParameter("additionalInformation");
			 additionalInfo = ds.getQueryString(additionalInfo);
			 String interests = mrequest.getParameter("interests");
			 interests = ds.getQueryString(interests);
			 String skills = mrequest.getParameter("skills");
			 String persuing = mrequest.getParameter("persuing");
			 String reasonForUnavailability = mrequest.getParameter("reasonForUnavailability");
			 reasonForUnavailability = ds.getQueryString(reasonForUnavailability);
			RABean raBean = new RABean();
			raBean.setFirstName(firstName);
			raBean.setLastName(lastName);
			raBean.setJoiningDate(joiningDateSql);
			//internBean.setLeavingDate(leavingDateSql);
			raBean.setContactNumber(contactNumber);
			raBean.setEmailId(emailId);
			raBean.setCollegeName(collegeName);
			raBean.setCgpa(cgpa);
			//internBean.setDuration(duration);
			raBean.setPersuing(persuing);
			//internBean.setJavaRating(javaRating);
			//internBean.setAndroidRating(androidRating);
			raBean.setSkills(skills);
			raBean.setInterests(interests);
			raBean.setStream(stream);
			raBean.setReasonForUnavailability(reasonForUnavailability);
			String fileUploadDir = "/home/hduser/ruralivrs/ProjectFiles/apache-tomcat-6.0.37/webapps/Downloads/internship/ra";
			//fileUploadDir = fileUploadDir.substring(65);					
		//	fileUploadDir = "http://qassist.cse.iitb.ac.in/"+fileUploadDir;
			System.out.println("fileUploadDir  "+fileUploadDir);
			Random randomGenerator = new Random();
			int randomNumber = randomGenerator.nextInt(100);
			raBean.setYearOfStudy(yearOfStudy);
			raBean.setAdditionalInfo(additionalInfo);
			raBean.setAvailabilityForF2F(availabilityForF2F);
			raBean.setAppliedthrough(appliedthrough);
			//System.out.println("testingg=="+fileUploadDir + firstName + lastName);
			String FILEPATH= up.UploadingFile(mrequest, fileUploadDir, "resume",firstName+"_"+lastName+"_"+randomNumber );
			//String FILEPATH= up.UploadingFile(mrequest, fileUploadDir, "resume",firstName+"_"+lastName+"_"+randomNumber );
			FILEPATH = FILEPATH.substring(65);
			System.out.println("Ravi..rpg..."+ FILEPATH);
			//internBean.setResume(FILEPATH);
			raBean.setResume(FILEPATH);
			raBean.RARegistration(raBean);
			
			String host = "imap.cse.iitb.ac.in";
			String mail_smtp_port = "25";
			String mail_user = "reviewsystem@cse.iitb.ac.in";
			String mail_password = "review123";

			String result = "";
			// Recipient's email ID needs to be mentioned.
			//String to = "recruitment.iitb@gmail.com,vishwajeet@cse.iitb.ac.in,priya.ravi2910@gmail.com";
			String to = "recruitment.iitb@gmail.com";
			// Sender's email ID needs to be mentioned.
			String from = mail_user;

			//String subject = request.getParameter("subject");
			String subject = ""+firstName+" "+lastName+""+" Applied For RA- College - "+collegeName+""+" CGPA -"+cgpa+"";
			//String description = request.getParameter("description");
			skills = skills.replaceAll(",", "<br>");
			
			String description = "<html>" +
								"<body bgcolor='cyan'>"+
								"<table cellspacing='0' style='width:100%'>"+
								"<tr style='background-color:#e1e1e1'>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Applicant Name"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+firstName+" "+lastName+""
								+"</td>"
								+"</tr>"
								+"<tr>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Applied Through"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+appliedthrough+""
								+"</td>"
								+"</tr>"
								+"<tr style='background-color:#e1e1e1'>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Unversity/College:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+collegeName+""
								+"</td>"
								+"</tr>"
								+"<tr>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"CGPA"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+cgpa+""
								+"</td>"
								+"</tr>"
								+"<tr style='background-color:#e1e1e1'>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Contact Number:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+contactNumber+""
								+"</td>"
								+"</tr>"
								+"<tr>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Email:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+emailId+""
								+"</td>"
								+"</tr>"
								+"<tr style='background-color:#e1e1e1'>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Pursuing:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+persuing+""
								+"</td>"
								+"</tr>"
								+"<tr>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Stream:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+stream+""
								+"</td>"
								+"</tr>"
								+"<tr style='background-color:#e1e1e1'>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Current Year Of Study: "+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+yearOfStudy+""
								+"</td>"
								+"</tr>"
								+"<tr>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Skills:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+skills+""
								+"</td>"
								+"</tr>"
								+"<tr style='background-color:#e1e1e1'>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Availability for F2F Interview @IIT Bombay"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+availabilityForF2F+""
								+"</td>"
								+"</tr>"
								+"<tr>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Feasible Joining Date:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+joiningDate+""
								+"</td>"
								+"</tr>"
								+"<tr style='background-color:#e1e1e1'>"+
								"<td style='font-weight:bold;padding:7px 9px;width:20%'>"+
								"Additional Information:"+
								"</td>"+
								"<td style='padding:7px 9px 7px 0;width:80%'>"+
								""+additionalInfo+""
								+"</td>"
								+"</tr>"
								+"</table>"
								+"</body>"
								+"</html>";
			Properties properties = System.getProperties();

			properties.put("mail.smtp.port", mail_smtp_port);
			properties.put("mail.smtp.starttls.enable", "true");
			properties.setProperty("mail.user", mail_user);
			properties.setProperty("mail.password", mail_password);
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.ssl.trust", host);

			// Setup mail server
			properties.setProperty("mail.smtp.host", host);

			Session mailsession = Session.getInstance(properties,
					new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("reviewsystem@cse.iitb.ac.in", "review123");
						}
					});

			try {
				// Create a default MimeMessage object.
				MimeMessage message = new MimeMessage(mailsession);
				// Set From: header field of the header.
				message.setFrom(new InternetAddress(from));
				// Set To: header field of the header.
				message.addRecipients(Message.RecipientType.TO,
						InternetAddress.parse(to));

				message.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse(to));
				// Set Subject: header field
				message.setSubject(subject);
				// Now set the actual message
				message.setContent(description,"text/html");
				// Send message
				Transport transport = mailsession.getTransport("smtp");

				Transport.send(message);

				result = "Sent message successfully....";
				
				//code to redirect to correct page during automatic mails
				
			} catch (AddressException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException mex) {
				mex.printStackTrace();
				result = "Error: unable to send message....";
			}
			
			
			response.sendRedirect("RARegistered.jsp");
		
			
		}
		
		
		
		
		else if(whatFor.equals("login")){
				String userName = mrequest.getParameter("userName");
				String password = mrequest.getParameter("passWord");
			 Authenticator auth = new Authenticator();
			 String result = auth.authenticateUser(userName, password);
			 	if(result!=null){
			 		response.sendRedirect("Welcome.jsp");
			 				
			 	}
			 	else{
			 		response.sendRedirect("Login.jsp?auth=failed");
			 	}
			
			
		}
		
		else if(whatFor.equals("logout")){
			response.sendRedirect("Login.jsp");
			
		}
		
		} catch (UploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		else{
			
			 if(whatFor.equals("shortlist")){
				
				System.out.println("Ravi !");
				
				//System.out.println("tets");
			    String[] fruits= request.getParameterValues("checkbox");	
	            String inputDate = request.getParameter("inputDate");
	           // System.out.println(inputDate);
	            inputDate = inputDate.replaceAll("/", "-");
	            //System.out.println(inputDate);
				Date inputDateSql = Commons.stringToSqlDate(inputDate);
				//System.out.println(inputDateSql);
				//String outputDate = request.getParameter("outputDate");
				//System.out.println(outputDate);
				 // outputDate = outputDate.replaceAll("/", "-");
				 // System.out.println(outputDate);
			//	Date outputDateSql = Commons.stringToSqlDate(outputDate);
				//System.out.println(outputDateSql);
				int len=0;
				len=fruits.length;
				if(len!=0)
				{
				  for(int i=0; i<len; i++)
					{
					  int temp=Integer.parseInt(fruits[i]);
					  String ra_id="",first_name="",last_name="";
					  String query1 = "select ra_id,first_name,last_name from ra_applicant where ra_id='"+temp+"'";
					  String query2 = "Update ra_shortlisted set date_from='"+inputDateSql+"' where ra_id='"+temp+"'";
					  System.out.println(query1);
					  System.out.println(query2);
				try {
					ResultSet rsr = DataService.getResultSet(query1);
					while(rsr.next()){
						ra_id = rsr.getString(1);
						first_name = rsr.getString(2);
						last_name = rsr.getString(3);
					}
					DataService.runQuery("INSERT INTO ra_shortlisted(ra_id,first_name,last_name) VALUES('"+ra_id+"','"+first_name+"','"+last_name+"')");
						DataService.runQuery(query2);
						//result="updated successfully...";
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					//result="error in updating...";
				}
			 	
					}
					
				}
				
				response.sendRedirect("ShortlistedMessage.jsp");
			
		}
			 
			 if(whatFor.equals("shortlistIntern")){
					
					System.out.println("Ravi !");
					
					//System.out.println("tets");
				    String[] fruits= request.getParameterValues("checkbox");	
		            String inputDate = request.getParameter("inputDate");
		           // System.out.println(inputDate);
		            inputDate = inputDate.replaceAll("/", "-");
		            //System.out.println(inputDate);
					Date inputDateSql = Commons.stringToSqlDate(inputDate);
					//System.out.println(inputDateSql);
					//String outputDate = request.getParameter("outputDate");
					//System.out.println(outputDate);
					//  outputDate = outputDate.replaceAll("/", "-");
					 // System.out.println(outputDate);
					//Date outputDateSql = Commons.stringToSqlDate(outputDate);
					//System.out.println(outputDateSql);
					int len=0;
					len=fruits.length;
					if(len!=0)
					{
					  for(int i=0; i<len; i++)
						{
						  int temp=Integer.parseInt(fruits[i]);
						  String intern_id="",first_name="",last_name="";
						  String query1 = "select intern_id,first_name,last_name from intern where intern_id='"+temp+"'";
						  String query2 = "Update intern_shortlisted set date_from='"+inputDateSql+"' where intern_id='"+temp+"'";
						  System.out.println(query1);
						  System.out.println(query2);
					try {
						ResultSet rsr = DataService.getResultSet(query1);
						while(rsr.next()){
							intern_id = rsr.getString(1);
							first_name = rsr.getString(2);
							last_name = rsr.getString(3);
						}
						DataService.runQuery("INSERT INTO intern_shortlisted(intern_id,first_name,last_name) VALUES('"+intern_id+"','"+first_name+"','"+last_name+"')");
							DataService.runQuery(query2);
							//result="updated successfully...";
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						//result="error in updating...";
					}
				 	
						}
						
					}
					
					response.sendRedirect("ShortlistedMessage.jsp");
				
			}
			 
			 if(whatFor.equals("shortlistJob")){
					
					System.out.println("Ravi !");
					
					//System.out.println("tets");
				    String[] fruits= request.getParameterValues("checkbox");	
		            String inputDate = request.getParameter("inputDate");
		           // System.out.println(inputDate);
		            inputDate = inputDate.replaceAll("/", "-");
		            //System.out.println(inputDate);
					Date inputDateSql = Commons.stringToSqlDate(inputDate);
					//System.out.println(inputDateSql);
					//String outputDate = request.getParameter("outputDate");
					//System.out.println(outputDate);
					//  outputDate = outputDate.replaceAll("/", "-");
					 // System.out.println(outputDate);
					//Date outputDateSql = Commons.stringToSqlDate(outputDate);
					//System.out.println(outputDateSql);
					int len=0;
					len=fruits.length;
					if(len!=0)
					{
					  for(int i=0; i<len; i++)
						{
						  int temp=Integer.parseInt(fruits[i]);
						  String job_applicant_id="",first_name="",last_name="";
						  String query1 = "select job_applicant_id,first_name,last_name from job_applicant where job_applicant_id='"+temp+"'";
						  String query2 = "Update job_shortlisted set date_from='"+inputDateSql+"' where job_applicant_id='"+temp+"'";
						  System.out.println(query1);
						  System.out.println(query2);
					try {
						ResultSet rsr = DataService.getResultSet(query1);
						while(rsr.next()){
							job_applicant_id = rsr.getString(1);
							first_name = rsr.getString(2);
							last_name = rsr.getString(3);
						}
						DataService.runQuery("INSERT INTO job_shortlisted(job_applicant_id,first_name,last_name) VALUES('"+job_applicant_id+"','"+first_name+"','"+last_name+"')");
							DataService.runQuery(query2);
							//result="updated successfully...";
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						//result="error in updating...";
					}
				 	
						}
						
					}
					
					response.sendRedirect("ShortlistedMessage.jsp");
				
			}
			 
			 if(whatFor.equals("session_setting")){
					String fd="";
					String td="";
					fd=request.getParameter("fromDate");
					System.out.println("inside action 1st line"+ fd);
					System.out.println("inside action 2st line"+ td);
					td=request.getParameter("toDate");
					HttpSession session = request.getSession();
					session.setAttribute("fromdate", fd);
		            session.setAttribute("todate", td);
		            System.out.println("to date  "+td );
		            System.out.println("from date  "+fd );
					
					response.sendRedirect("SelectedMenu.jsp");
					
				}
		
			 if(whatFor.equals("shiftCandidate")){
				
				String candidate_id = request.getParameter("candidate_id");
				String action = request.getParameter("status_id");
				System.out.println(action);
				if(action.equals("shortListIntern")){
					String query = "Update intern set status='ShortListed' where intern_id='"+candidate_id+"'";
					System.out.println(query);
					try {
						DataService.runQuery(query);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
				else if(action.equals("deleteIntern")){
					String query = "delete from intern where intern_id='"+candidate_id+"'";
					System.out.println(query);
					try {
						DataService.runQuery(query);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}else if(action.equals("shortListEmployee")){
					
					String query = "Update job_applicant set status='ShortListed' where job_applicant_id='"+candidate_id+"'";
					System.out.println(query);
					try {
						DataService.runQuery(query);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}else if(action.equals("deleteEmployee")){
					String query = "delete from job_applicant where job_applicant_id='"+candidate_id+"'";
					System.out.println(query);
					try {
						DataService.runQuery(query);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}else if(action.equals("shortListRA")){
					String query = "Update ra_applicant set status='ShortListed' where ra_id='"+candidate_id+"'";
					System.out.println(query);
					try {
						DataService.runQuery(query);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				} else if(action.equals("deleteRA")){
					String query = "delete from ra_applicant where ra_id='"+candidate_id+"'";
					System.out.println(query);
					try {
						DataService.runQuery(query);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				
			}
		}
	}

}
