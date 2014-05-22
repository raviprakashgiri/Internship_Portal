<%-- 
    
    
    Author     : Sravan Kumar
--%>

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
			<form action="ActionServlet" enctype="multipart/form-data" method="POST"  name="form" onsubmit = "return validate();">
				<table width="100%" border="0" cellspacing="0" cellpadding="4">
				<tr>
					<td width="41%">
						<script src="scripts/header.js"></script>
					</td>
				</tr>
			</table>
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
										Job Application form under Prof. Ganesh R, IIT Bombay
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
															class="textbox" id="firstName" autocomplete="off" required><br><br>
															<input name="lastName" type="text" class="textbox" placeholder="Last Name" size="35"
														id="lastName" autocomplete="off" required><br><br>
														<input name="contactNumber" type="text" class="textbox" placeholder="Contact Number" size="35"
														id="contactNumber" autocomplete="off" required><br><br>
														<input name="emailId" type="email" class="textbox" placeholder="someone@xmail.com" id="emailId" autocomplete="off" size="35" required/><br><br>
														
													</span>
												</td>
												<td align="right" nowrap class="text" width = "40%">
													Your Skill Set
												</td>
												<td class="text" width = "60%">
												
												<input type = "text" name = "tech1" value="Java" id = "tech1" readonly>											
												<select name="javaProfficiency" id ="javaProfficiency" class="text">
													<option value = "Unaware" selected>Unaware</option>
													<option value = "Beginner">Beginner</option>
													<option value = "Proficient">Proficient</option>
													<option value = "Expert">Expert</option>
												</select>
												<br>
												<input type = "text" name = "tech2" id = "tech2" value="Servlets&Jsp" readonly>
												
												<select name="JSP&ServletsProfficiency" id ="JSP&ServletsProfficiency" class="text">
													<option value = "Unaware" selected>Unaware</option>
													<option value = "Beginner">Beginner</option>
													<option value = "Proficient">Proficient</option>
													<option value = "Expert">Expert</option>
												</select>
												
												<br>
												<input type = "text" name = "tech3" id = "tech3"  value="AJAX" readonly>
												
												<select name="AJAXProfficiency" id ="AJAXProfficiency" class="text">
													<option value = "Unaware" selected>Unaware</option>
													<option value = "Beginner">Beginner</option>
													<option value = "Proficient">Proficient</option>
													<option value = "Expert">Expert</option>
												</select>
											
												<br>
												<input type = "text" name = "tech4" id = "tech4"  value="HTML" readonly>
												
												<select name="HTMLProfficiency" id ="HTMLProfficiency" class="text">
													<option value = "Unaware" selected>Unaware</option>
													<option value = "Beginner">Beginner</option>
													<option value = "Proficient">Proficient</option>
													<option value = "Expert">Expert</option>
												</select>
												
												<br>
												<input type = "text" name = "tech5" id = "tech5"  value="MySql" readonly>
												
												<select name="MySqlProfficiency" id ="MySqlProfficiency" class="text">
													<option value = "Unaware" selected>Unaware</option>
													<option value = "Beginner">Beginner</option>
													<option value = "Proficient">Proficient</option>
													<option value = "Expert">Expert</option>
												</select>
												
												<br>
												<input type = "text" name = "tech6" id = "tech6" value="Oracle" readonly>
												
												<select name="OracleProfficiency" id ="OracleProfficiency" class="text">
													<option value = "Unaware" selected>Unaware</option>
													<option value = "Beginner">Beginner</option>
													<option value = "Proficient">Proficient</option>
													<option value = "Expert">Expert</option>
												</select>
												
												<br>
												<input type = "text" name = "tech7" id = "tech7" value="Android" readonly >
												
												<select name="AndroidProfficiency" id ="AndroidProfficiency" class="text">
													<option value = "Unaware" selected>Unaware</option>
													<option value = "Beginner">Beginner</option>
													<option value = "Proficient">Proficient</option>
													<option value = "Expert">Expert</option>
												</select>
												
												<br>
								                 <input type="hidden" name="skills" id="skills" value=""> 
												</td>
												
											</tr>
										
											
											<tr>
												<td align="right" nowrap class="text">
													Current location(City)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input type="text" name="currentLocation" id="currentLocation" placeholder="Current location" size="35" required>
												</td>
												<td align="right" valign="top" nowrap class="text">
													 Resume
												</td>
												<td class="text">
													<input type="file" name="resume" id="resume" required>
													
												</td>
											</tr>
											<tr>
												<td align="right" nowrap class="text">
													Notice Period(in days)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="noticePeriod" type="text" class="textbox" placeholder="Notice Period"
														id="noticePeriod" autocomplete="off" size="35" required>
												</td>
												<td align="right" nowrap class="text">
													Current CTC INR
												</td>
												<td>
													<input name="currentCtc" type="text" class="textbox" placeholder="Current CTC"
														id="currentCtc" autocomplete="off" required>
												</td>
											</tr>
											
											<tr>
												<td align="right" nowrap class="text">
													Current Employer/Company
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="company" type="text" class="textbox" placeholder="Current Company"
														id="company" autocomplete="off" size="35" required>
												</td>
												<td align="right" nowrap class="text">
													Role Applied for:
												</td>
												<td>
													<!-- <input name="role" type="text" class="textbox" placeholder="Role"
														id="role" autocomplete="off" size="35" required> -->
														<select name="roleApplied" id = "roleApplied" class="text">
															<option value = "">Role Applied For</option>
															<option value = "Junior Software Developer">Junior Software Developer(0-2 years Exp.)</option>
															<option value = "Software Developer">Software Developer(2-5 years Exp.)</option>
															<option value = "Senior Software Developer">Senior Software Developer(5+ years Exp.)</option>
														</select>
												</td>
											</tr>
											
											
											<tr>
												<td align="right" nowrap class="text">
													Total Experience (In months)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="experience" type="text" class="textbox" placeholder="Total Experience" size="35"
														id="experience" autocomplete="off" required>
												</td>
												<td align="right" nowrap class="text">
													Relevant Experience In Java(In Months)
												</td>
												<td>
													<input name="experienceInJava" type="text" class="textbox" placeholder="Relevant Experience In Java"
														id="experienceInJava" autocomplete="off" required>
												</td>
											</tr>
											<tr>
												<td align="right" nowrap class="text">
													Highest Educational<br> Qualification
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="highestQualification" type="text" class="textbox" placeholder="Highest Qualification" size="35"
														id="highestQualification" autocomplete="off" required>
												</td>
												<td align="right" nowrap class="text">
													Year of Passing
												</td>
												<td>
													<input name="passedOut" type="text" class="textbox" placeholder="Year of Passing"
														id="passedOut" autocomplete="off" required>
												</td>
											</tr>
											
											<tr>
												<td align="right" nowrap class="text">
													 CGPA Secured In Graduation<br> (on Scale of 10)
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input type="text" name = "cgpa" id = "cgpa" required>
													
												</td>
												<td align="right" nowrap class="text">
													 Availability For Face-To-Face<br> Interview At IIT-Bombay
												</td>
												<td class="text">
													<input type="radio" name="availabilityToF2F" id="availabilityToF2F" value="Yes" checked>Yes
													<input type="radio" name="availabilityToF2F" id="availabilityToF2F" value="No">No
												</td>
											</tr>
											
											<tr>
												<td align="right" nowrap class="text">
													 Earliest (From-To)<br> Availability For The Interview
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<input name="earliestAvailability" type="text" class="textbox" placeholder="Earliest (From-To) Availability For The Interview" size="35"
														id="earliestAvailability" autocomplete="off" required>
												</td>
												<td align="right" nowrap class="text">
													  If Selected Can Start<br> Working Immediately?
												</td>
												<td class="text">
													<input type="radio" name="immediateJoinee" id="immediateJoinee" value="Yes" checked onclick="nonImmediateJoinee('Yes');">Yes
													<input type="radio" name="immediateJoinee" id="immediateJoinee" value="No" onclick = "nonImmediateJoinee('No');">No
													<div id = "nonImmediateJoinee" style='display:none';>
														<input name="earliestJoiningDate" type="text" class="textbox" placeholder="Earliest Joining Date" size="35"
														id="earliestJoiningDate" autocomplete="off" readonly>
													</div>
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
														class="textarea" id="reasonForChange" required></textarea>
												</td>
												<td align="right" nowrap class="text">
													 Additional Information<br> you want to add
												</td>
												<td>
													<textarea name="additionalInformation" cols="34" rows="3"
														class="textarea" id="additionalInformation"></textarea>
												</td>
											</tr>
											
											<tr>
												<td height="66" colspan="4" align="left" valign="top" nowrap
													class="text">
													<input type="checkbox" name="conformation" id = "conformation" >
													I confirm that all the information rendered in the above form is true. If any information found to be false, I will be responsible for the consequences and the actions taken by the IIT-B Authorities.<br><br>
													<input name="submitButton" type="Submit" class="but"
														id="submitButton" value="Submit" onClick="" >
													<!-- <input name="button4" type="Submit" class="but"
														id="button4" value="Save &amp; Continue" onClick="document.form.ButtonPressed.value='Save And Continue';"> -->
													<input name="Reset" type="reset" class="butgrey"
														id="button5" value="Clear">
													<input name="WhatFor" type="hidden" id="WhatFor" value="registerForJob">
													
												</td>
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
