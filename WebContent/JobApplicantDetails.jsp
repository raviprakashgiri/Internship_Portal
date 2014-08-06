<%-- 
    
    
    Author     : Ravi Prakash Giri
--%>

<%@page import="com.iit.dbUtilities.DataService"%>
<%@page import="java.sql.ResultSet"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Job application form</title>

		<link rel="stylesheet" type="text/css" href="css/style.css">
		<!--show-hide table code start-->
		<script>
function show(obj,obj1,obj2,obj3) {
	document.getElementById(obj).style.display = 'inline';
	document.getElementById(obj1).style.display = 'none';
	document.getElementById(obj2).style.display = 'none';
	document.getElementById(obj3).style.display = 'none';
}

function hide(obj,obj1,obj2,obj3){
//show('divReason');
	document.getElementById(obj).style.display = 'none';
	document.getElementById(obj1).style.display = 'none';
	document.getElementById(obj2).style.display = 'none';
	document.getElementById(obj3).style.display = 'none';
}
</script>
		<!--show-hide table code end-->
		<!--top slide panel starts-->
		<link rel="stylesheet" href="css/topslide_css/style.css"
			type="text/css" media="screen" />
		<link rel="stylesheet" href="css/topslide_css/slide.css"
			type="text/css" media="screen" />

		<!-- PNG FIX for IE6 -->
		<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
		<!--[if lte IE 6]>
		<script type="text/javascript" src="scripts/topslide_js/pngfix/supersleight-min.js"></script>
	<![endif]-->

		<!-- jQuery - the core -->
		<script src="scripts/topslide_js/jquery-1.3.2.min.js" type="text/javascript"></script>
		<!-- Sliding effect -->
		<script src="scripts/topslide_js/slide.js" type="text/javascript"></script>

		<!--top slide panel ends-->
		<script src="scripts/dropdowncontent.js"></script>
		<script src="scripts/validate.js"></script>

	<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="css/style.css" />
    <script>
    $(function() {
        $( "#MeetingDate" ).datepicker({ altField: "#time",addSliderAccess: true, dateFormat: 'dd-M-yy', maxDate: new Date,minDate: new Date(2007, 6, 12), sliderAccessArgs: { touchonly: false }});
        //maxDate: new Date,
    });
    </script> -->
   <!-- DATE TIME STARTS-->
 <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/themes/base/jquery-ui.css" type="text/css" media="all" />
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
 <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js" type="text/javascript"></script> 
<script type="text/javascript">
$(function () {
	//alert($('#joiningDate').val());
$('#joiningDate').datepicker({ dateFormat: 'yy-mm-dd' ,minDate:'0'});
//$('#leavingDate').datepicker({ dateFormat: 'yy-mm-dd' ,minDate:$('#joiningDate').val()});

});
</script>
<script type="text/javascript">
function datepick(){
	if($('#joiningDate').val()!=""){
		//alert("Yes");
		$(function () {
		$('#leavingDate').datepicker({ dateFormat: 'yy-mm-dd' ,minDate:$('#joiningDate').val()});
		});
	}
}
</script>
<style>
.ui-datepicker th { background-color: #CCCCFF; },.ui-datepicker{ font-size: 85%; }
</style>
                                <style type="text/css">
                                                #tabs, #ui-datepicker-div, .ui-datepicker{ font-size: 85%; }
                                </style>
<!-- DATE TIME ENDS-->
<!-- Auto fill Starts-->
<link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
	<!-- <script src="http://www.google.com/jsapi"></script> -->  
	<script>  
		google.load("jquery", "1");
	</script>
	<script src="scripts/jquery.autocomplete.js"></script> 
<!-- Auto fill Ends-->
<script type="text/javascript">
function enableSubmit(){
	//alert("working fine");
	if( document.getElementById('conformation').checked === false ){
		//alert("true");
	document.getElementById("submitButton").disabled=true;
	}else{
		document.getElementById("submitButton").disabled=false;
		alert("Please accept the conditions");
	}
}
</script>
<script type="text/javascript">
function dropdowns(){
	var val = document.getElementById("skill").value;
	
	alert("Hi.."+val);
}
</script> 
<script type="text/javascript">
$(function () {
	//alert($('#joiningDate').val());
$('#earliestJoiningDate').datepicker({ dateFormat: 'yy-mm-dd' ,minDate:'0'});
//$('#leavingDate').datepicker({ dateFormat: 'yy-mm-dd' ,minDate:$('#joiningDate').val()});

});
</script>
<script>
function nonImmediateJoinee(val){
	//var val = document.getElementById("availabilityForF2F").value;
	if(val=="Yes"){
		document.getElementById("nonImmediateJoinee").style.display = 'none';
		document.getElementById("earliestJoiningDate").value="";
	}
	if(val=="No"){
		document.getElementById("nonImmediateJoinee").style.display = 'block';
	}
	
}
</script>

<script type="text/javascript">
function validate(){
	/* alert($('input[name=availabilityForF2F]:checked').val()=="No");
	var IndNum = /^[0]?[789]\d{9}$/;
	var mobileNumber = document.getElementById("contactNumber");
	alert(!isNaN(parseFloat(mobileNumber)) && isFinite(mobileNumber));
	if(!IndNum.test(mobileNumber)){
		alert("Please enter a valid mobile number");
		return false;
	} */
	//alert(document.getElementById("tech1").value); 
	//alert($('#tech1').val()+" "+$('#javaProfficiency').val());
	//alert($('#tech1').val());
	var skills = $('#tech1').val()+" "+$('#javaProfficiency').val()+","+
					$('#tech2').val()+" "+$('#JSPServletsProfficiency').val()+","+
					$('#tech3').val()+" "+$('#AJAXProfficiency').val()+","+
					$('#tech4').val()+" "+$('#HTMLProfficiency').val()+","+
					$('#tech5').val()+" "+$('#MySqlProfficiency').val()+","+
					$('#tech6').val()+" "+$('#OracleProfficiency').val()+","+
					$('#tech7').val()+" "+$('#AndroidProfficiency').val();
	//alert(skills);
	document.getElementById("skills").value = skills;
	/* if(document.getElementById("availabilityForF2F").checked){
		alert(document.getElementById("availabilityForF2F").value);
	} */
		//alert();
		
	if( document.getElementById('conformation').checked === false ){
		alert("Please accept the conditions");
		return false;
		document.getElementById('conformation').focus();
	}
	/* if( document.getElementById('percentage').value=="--CGPA--" ){
		alert("Please select your CGPA");
		document.getElementById('percentage').focus();
		return false;
	} */
	if( document.getElementById('roleApplied').value=="" ){
		alert("Please select Role Applied.");
		document.getElementById('roleApplied').focus();
		return false;
	}
	
	/* if( document.getElementById('leavingDate').value=="" ){
		document.getElementById('leavingDate').focus();
		alert("Please select Leaving date");
		return false;
	}
	
	if( document.getElementById('yearOfStudy').value=="0" ){
		alert("Please select persuing year");
		document.getElementById('yearOfStudy').focus();
		return false;
	} */
	/*if( document.getElementById('androidRating').value=="--Android Rating--" ){
		alert("Please select your Android Rating");
		document.getElementById('androidRating').focus();
		return false;
	} */
	//alert($('input[name=availabilityForF2F]:checked').val()=="No");
	if($('input[name=immediateJoinee]:checked').val()=="No" && document.getElementById("earliestJoiningDate").value==""){
		alert("Please specify Earliest Joining Date..");
		return false;
	}
	else{
		return true;
	}
}

</script>
	
</head>


<!-- Panel -->
			<!-- <div id="toppanel">
				<div id="panel">

					<script src="scripts/top_pannel.js"></script>
				</div>
			</div> -->
<!--panel -->
	<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
	
	<%
		String jobApplicantId = request.getParameter("job_applicant_id");
		String query = "select first_name,last_name,contact_number,email_id,current_location,notice_period,current_company,total_experience,qualification,cgpa,year_of_passing,earliest_availability,ctc,role_applied,relevent_exp_java,availability_f2f,immediate_joinee,reason_for_joining_here,additionla_info,skills,earliest_joining_date,resume_location from job_applicant where job_applicant_id="+jobApplicantId;
		System.out.println(query);
		ResultSet rs = DataService.getResultSet(query);
		Object data[][] = DataService.getDataFromResultSet(rs);
		String skills = data[0][19].toString();
		skills = skills.replaceAll(",", "<br>");
		System.out.println(skills);
	%>
			<form action="ActionServlet" enctype="multipart/form-data" method="POST"  name="form" onsubmit = "return validate();">
				
			<table width="100%" border="0" cellspacing="4" cellpadding="10">
				<tr>
					<td width="80%" valign="top" bgcolor="#EFEFEF">
						<div id="mom_details">
							<table width="95%" border="0" align="center" cellpadding="0"
								cellspacing="0">

								<tr>
									<td width="1%">
										<img src="images/1.gif" alt="" width="16" height="57">
									</td>
									<td width="98%" background="images/2.gif" class="bigtitlered">
										Job Applicant Details
										<a style="float:right;" href='EmployersList.jsp'>Back to List</a>
									</td>
									<td width="1%">
										<img src="images/3.gif" alt="" width="15" height="57">
									</td>
								</tr>
								<tr>
									<td background="images/8.gif"></td>
									<td bgcolor="#FFFFFF">
										<table width="100%" border="0" cellpadding="10"
											cellspacing="0" class="content">
											<tr>
												
											</tr>
											<tr>
												<td width="13%" align="right" class="text">
													<br>First Name:<br><br>Last Name<br><br><br>Contact Number<br><br>EmailId
												</td>
												<td width="30%" class="tableborder"
													style="border-right:1px solid; border-color:#CCCCCC;">
													<span class="tableborder"><br><br> <input name="firstName" placeholder="First Name" size="35"
															class="textbox" id="firstName" value="<%=data[0][0] %>" readonly><br><br>
															<input name="lastName" type="text" class="textbox" placeholder="Last Name" size="35"
														id="lastName" value="<%=data[0][1] %>" readonly><br><br>
														<input name="contactNumber" type="text" class="textbox" placeholder="Contact Number" size="35"
														id="contactNumber" value="<%=data[0][2] %>" readonly><br><br>
														<input name="emailId" type="email" class="textbox" placeholder="someone@xmail.com" id="emailId" size="35" value="<%=data[0][3] %>" readonly/><br><br>
														
													</span>
												</td>
												<td align="right" nowrap class="text" width = "40%">
													Your Skill Set
												</td>
												<td class="text" width = "60%">
												
												<%=skills %>
												</td>
												
											</tr>
										
											
											<tr>
												<td align="right" nowrap class="text">
													Current location(City)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input type="text" name="currentLocation" id="currentLocation" placeholder="Current location" size="35" value="<%=data[0][4] %>" readonly>
												</td>
												<td align="right" valign="top" nowrap class="text">
													 Resume
												</td>
												<td class="text">
													<a href="http://qassist.cse.iitb.ac.in/<%=data[0][21] %>"  target="_blank" title="Right Click Save Link as">Download</a>
													
												</td>
											</tr>
											<tr>
												<td align="right" nowrap class="text">
													Notice Period(in days)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="noticePeriod" type="text" class="textbox" placeholder="Notice Period"
														id="noticePeriod" size="35" value="<%=data[0][5] %>" readonly>
												</td>
												<td align="right" nowrap class="text">
													Current CTC INR
												</td>
												<td>
													<input name="currentCtc" type="text" class="textbox" placeholder="Current CTC"
														id="currentCtc" value="<%=data[0][12] %>" readonly>
												</td>
											</tr>
											
											<tr>
												<td align="right" nowrap class="text">
													Current Employer/Company
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="company" type="text" class="textbox" placeholder="Current Company"
														id="company"  size="35" value="<%=data[0][6] %>" readonly>
												</td>
												<td align="right" nowrap class="text">
													Role Applied for:
												</td>
												<td>
													<!-- <input name="role" type="text" class="textbox" placeholder="Role"
														id="role" autocomplete="off" size="35" required> -->
														<!-- <select name="roleApplied" id = "roleApplied" class="text">
															<option value = "">Role Applied For</option>
															<option value = "Junior Software Developer">Junior Software Developer(0-2 years Exp.)</option>
															<option value = "Software Developer">Software Developer(2-5 years Exp.)</option>
															<option value = "Senior Software Developer">Senior Software Developer(5+ years Exp.)</option>
														</select> -->
														<input name="company" type="text" class="textbox" placeholder="Current Company"
														id="company"  size="35" value="<%=data[0][13] %>" readonly>
												</td>
											</tr>
											
											
											<tr>
												<td align="right" nowrap class="text">
													Total Experience (In months)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="experience" type="text" class="textbox" placeholder="Total Experience" size="35"
														id="experience" value="<%=data[0][7] %>" readonly>
												</td>
												<td align="right" nowrap class="text">
													Relevant Experience In Java(In Months)
												</td>
												<td>
													<input name="experienceInJava" type="text" class="textbox" placeholder="Relevant Experience In Java"
														id="experienceInJava" value="<%=data[0][14] %>" readonly>
												</td>
											</tr>
											<tr>
												<td align="right" nowrap class="text">
													Highest Educational<br> Qualification
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="highestQualification" type="text" class="textbox" placeholder="Highest Qualification" size="35"
														id="highestQualification" value="<%=data[0][8] %>" readonly>
												</td>
												<td align="right" nowrap class="text">
													Year of Passing
												</td>
												<td>
													<input name="passedOut" type="text" class="textbox" placeholder="Year of Passing"
														id="passedOut" value="<%=data[0][10] %>" readonly>
												</td>
											</tr>
											
											<tr>
												<td align="right" nowrap class="text">
													 CGPA Secured In Graduation<br> (on Scale of 10)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input type="text" name = "cgpa" id = "cgpa" value="<%=data[0][9] %>" readonly>
													
												</td>
												<td align="right" nowrap class="text">
													 Availability For Face-To-Face<br> Interview At IIT-Bombay
												</td>
												<td class="text">
													<!-- <input type="radio" name="availabilityToF2F" id="availabilityToF2F" value="Yes" checked>Yes
													<input type="radio" name="availabilityToF2F" id="availabilityToF2F" value="No">No -->
													<input type="text" class="text" value="<%=data[0][15] %>" readonly>
												</td>
											</tr>
											
											<tr>
												<td align="right" nowrap class="text">
													 Earliest (From-To)<br> Availability For The Interview
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="earliestAvailability" type="text" class="textbox" placeholder="Earliest (From-To) Availability For The Interview" size="35"
														id="earliestAvailability" value="<%=data[0][11] %>" readonly>
												</td>
												<td align="right" nowrap class="text">
													  If Selected Can Start<br> Working Immediately?
												</td>
												<td class="text">
													<input type="text" name="immediateJoinee" id="immediateJoinee" value="<%=data[0][16] %>" readonly >
													<!-- <input type="radio" name="immediateJoinee" id="immediateJoinee" value="No" onclick = "nonImmediateJoinee('No');">No -->
													<!-- <div id = "nonImmediateJoinee" style='display:none';> -->
													<%if(data[0][16].toString().equals("No") ){ %>
														<input name="earliestJoiningDate" type="text" class="textbox" placeholder="Earliest Joining Date" size="35"
														id="earliestJoiningDate" value="<%=data[0][20] %>" readonly>
														<%} %>
													<!-- </div> -->
												</td>
											</tr>
											
											<!-- <tr>
												<td align="right" nowrap class="text">
													 Earliest Joining Date <br>(if you cannot join immediately)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													
												</td>
												<td align="right" nowrap class="text">
												SkypeId:
												</td>
												<td>
												<input name="skypeId" type="text" class="textbox" placeholder="someone@xmail.com" id="skypeId" autocomplete="off" size="35" required/>
												</td>
												
											</tr> -->
											
											<tr>
												<td align="right" nowrap class="text">
													Strong Reasons For Why <br>You Want To Work At IIT-Bombay
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<textarea name="reasonForChange" cols="34" rows="3"
														class="textarea" id="reasonForChange" readonly="readonly"><%=data[0][17] %></textarea>
												</td>
												<td align="right" nowrap class="text">
													 Additional Information<br> you want to add
												</td>
												<td>
													<textarea name="additionalInformation" cols="34" rows="3"
														class="textarea" id="additionalInformation" readonly="readonly"><%=data[0][18] %></textarea>
												</td>
											</tr>
											
											<tr>
												<!-- <td height="66" colspan="4" align="left" valign="top" nowrap
													class="text">
													<input type="checkbox" name="conformation" id = "conformation" >
													I confirm that all the information rendered in the above form is true. If any information found to be false, I will be responsible for the consequences and the actions taken by the IIT-B Authorities.<br><br>
													<input name="submitButton" type="Submit" class="but"
														id="submitButton" value="Submit" onClick="" >
													<input name="button4" type="Submit" class="but"
														id="button4" value="Save &amp; Continue" onClick="document.form.ButtonPressed.value='Save And Continue';">
													<input name="Reset" type="reset" class="butgrey"
														id="button5" value="Clear">
													<input name="WhatFor" type="hidden" id="WhatFor" value="registerForJob">
													
												</td> -->
											</tr>

										</table>
									</td>
									<td background="images/4.gif"></td>
								</tr>
								<tr>
									<td>
										<img src="images/7.gif" alt="" width="16" height="17">
									</td>
									<td background="images/6.gif"></td>
									<td>
										<img src="images/5.gif" alt="" width="15" height="17">
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<script type="text/javascript">
//Call dropdowncontent.init("anchorID", "positionString", glideduration, "revealBehavior") at the end of the page:

dropdowncontent.init("searchlink", "right-bottom", 500, "mouseover");
dropdowncontent.init("contentlink", "left-top", 300, "click");

</script>
	</body>
</html>
