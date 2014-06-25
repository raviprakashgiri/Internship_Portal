<%-- 
    
    
    Author     :Ravi & Priyanka
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.iit.dbUtilities.DataService"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Internship Registration Form</title>

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
	if( document.getElementById('joiningDate').value=="" ){
		alert("Please select Joining date");
		document.getElementById('joiningDate').focus();
		return false;
	}
	
	if( document.getElementById('leavingDate').value=="" ){
		document.getElementById('leavingDate').focus();
		alert("Please select Leaving date");
		return false;
	}
	
	if( document.getElementById('yearOfStudy').value=="0" ){
		alert("Please select persuing year");
		document.getElementById('yearOfStudy').focus();
		return false;
	}
	/*if( document.getElementById('androidRating').value=="--Android Rating--" ){
		alert("Please select your Android Rating");
		document.getElementById('androidRating').focus();
		return false;
	} */
	//alert($('input[name=availabilityForF2F]:checked').val()=="No");
	if($('input[name=availabilityForF2F]:checked').val()=="No" && document.getElementById("reasonForUnavailability").value==""){
		alert("Please specify the reason for unavailability.");
		return false;
	}
	else{
		return true;
	}
}

</script>
<script>
function unavailability(val){
	//var val = document.getElementById("availabilityForF2F").value;
	if(val=="Yes"){
		document.getElementById("unavailability").style.display = 'none';
		document.getElementById("reasonForUnavailability").value="";
	}
	if(val=="No"){
		document.getElementById("unavailability").style.display = 'block';
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
		String internID = request.getParameter("intern_id");
		String query = "select first_name,last_name,contact_number,email_id,college_name,cgpa,feasible_joining_date,feasible_leaving_date,internship_duration,skills,resume_lacation,current_year,availabilityForF2F,additional_info,persuing,stream,interests,reasonForUnavailability from intern where intern_id="+internID;
		System.out.println(query);
		ResultSet rs = DataService.getResultSet(query);
		Object data[][] = DataService.getDataFromResultSet(rs);
		String skills = data[0][9].toString();
		skills = skills.replaceAll(",", "<br>");
		System.out.println(skills);
	%>
			<form action="ActionServlet" method="POST" enctype="multipart/form-data" name="form" onsubmit="return validate();">
				<!-- <table width="100%" border="0" cellspacing="0" cellpadding="4">
				<tr>
					<td width="41%">
						<script src="scripts/header.js"></script>
					</td>
				</tr>
			</table> -->
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
										Intern Details
										
											<a style="float:right;" href='InternsList.jsp'>Back to List</a>
										
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
													<span class="tableborder"><br><br><input type="text" class="text" value="<%=data[0][0]%>" readonly> <br><br>
															<input type="text" class="text" value="<%=data[0][1] %>" readonly><br><br>
														<input type="text" class="text" value="<%=data[0][3] %>" readonly><br><br>
														<input type="text" class="text" value="<%=data[0][4] %>" readonly><br><br>
														
													</span>
												</td>
												
												<td align="right" nowrap class="text" width = "13%">
													Your Skill Set
												</td>
												
												<td class="text" width = "30%">
												
												
												<%=skills%>
												<br>
								                  
												</td>
											</tr>
											
											<tr>
												<td width="13%" align="right" class="text">
													Pursuing:
												</td>
												<td width="38%" class="tableborder"
													style="border-right:1px solid; border-color:#CCCCCC;">
													<span class="tableborder"> <input type="text" class="text" value="<%=data[0][14]%>" readonly>												</span>
												</td>
												<td align="right" valign="top" nowrap class="text">
													 Availability for F2F Interview<br>
													 @IIT Bombay
												</td>
												<td class="text" width="30%">
													<%=data[0][12] %>
													<% if((data[0][12].toString().equals("No"))){ %>
													<br>Reason for Unavailability:
													<%=data[0][17]%>
													<%} %>
												</td>
											</tr>
											
											<tr>
												<td width="13%" align="right" class="text">
													Stream:
												</td>
												<td width="38%" class="tableborder"
													style="border-right:1px solid; border-color:#CCCCCC;">
													<span class="tableborder"><input type="text" class="text" value="<%=data[0][15] %>" readonly>
													</span>
												</td>
												<td align="right" valign="top" nowrap class="text">
													 <br>Resume
												</td>
												<td class="text">
													<a href="http://qassist.cse.iitb.ac.in/<%= data[0][10]%>"  target="_blank" title="Right Click Save Link as">Resume</a>
													
												</td>
											</tr>
											
											<tr>
												<td width="13%" align="right" class="text">
													University/College name:
												</td>
												<td width="38%" class="tableborder"
													style="border-right:1px solid; border-color:#CCCCCC;">
													<span class="tableborder"> <input type="text" class="text" value="<%=data[0][4] %>" readonly>
													</span>
												</td>
												<td width="23%" align="right" class="text">
													Feasible Joining Date
												</td>
												<td width="26%" class="tableborder">
													<input type="text" class="text" value="<%=data[0][6] %>" readonly>
												</td>
											</tr>
											<tr>
												<td align="right" nowrap class="text">
													CGPA / Percentage
												</td>
												<td style="border-right:1px solid; border-color:#CCCCCC;">
													<input type="text" class="text" value="<%=data[0][5] %>" readonly>
												</td>
												<td align="right" nowrap class="text">
													 Feasible Leaving Date
												</td>
												<td>
													<input type="text" class="text" value="<%=data[0][7] %>" readonly>
												</td>
											</tr>
											<tr>
												<td align="right" nowrap class="text">
													Current Year Of Study:
												</td>
												<td width="38%" class="tableborder"
													style="border-right:1px solid; border-color:#CCCCCC;">
													<input type="text" class="text" value="<%=data[0][11] %>" readonly>
													<!-- <script>
													for (i = new Date().getFullYear(); i > 1999; i--)
													{
													    $('#passedOut').append($('<option />').val(i).html(i));
													}
													</script> -->
												</td>
												<td align="right" nowrap class="text">
													Internship Duration in months
												</td>
												<td>
													<input type="text" class="text" value="<%=data[0][8] %>" readonly>
												</td>
											</tr>
																		
											<tr>
												<td align="right" nowrap class="text">
													 Additional Information<br> you want to add
												</td>
												<td width="38%" class="tableborder"
													style="border-right:1px solid; border-color:#CCCCCC;">
													<textarea name="additionalInformation" cols="34" rows="3"
														class="textarea" id="additionalInformation" maxlength="500" readonly><%=data[0][13] %></textarea>
												</td>
												<td align="right" valign="top" nowrap class="text">
													 Interests
												</td>
												<td width="30%">
													<textarea name="interests" cols="34" rows="3"
														class="textarea" id="interests" maxlength="500" readonly><%=data[0][16] %></textarea>
												</td>
											</tr>
											
											
											<tr>
											
												
												<td align="right" nowrap class="text">
													<!-- Strong Reasons For Why <br>You Want To Work At IIT-Bombay -->
												</td>
												<td class="tableborder" width="30%" style="border-right:1px solid; border-color:#CCCCCC;">
													<!-- <textarea name="reasonForChange" cols="34" rows="3"
														class="textarea" id="reasonForChange"></textarea> -->
												</td>
												
											</tr>
											
											
											<tr>
												<!-- <td height="66" colspan="4" align="left" valign="top" nowrap
													class="text">
													<input type="checkbox" name="conformation" id = "conformation">
													I confirm that all the information rendered in the above form is true. If any information found to be false, I will be responsible for the consequences and the actions taken by the IIT-B Authorities.<br><br>
													<input name="submitButton" type="Submit" class="but"
														id="submitButton" value="Submit" onClick="" >
													<input name="button4" type="Submit" class="but"
														id="button4" value="Save &amp; Continue" onClick="document.form.ButtonPressed.value='Save And Continue';">
													<input name="Reset" type="reset" class="butgrey"
														id="button5" value="Clear">
													<input name="WhatFor" type="hidden" id="WhatFor" value="registerIntern">
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
